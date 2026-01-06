# Build stage - Generate static site with Hugo
FROM hugomods/hugo:std AS builder

WORKDIR /src

# Copy Hugo site files
COPY . .

# Initialize git submodules for theme
RUN git init && git submodule update --init --recursive || true

# Build the static site
RUN hugo --minify

# Final stage - Serve with nginx
FROM nginx:alpine

# Copy nginx configuration
COPY --from=builder /src/public /usr/share/nginx/html

# Copy custom nginx config for SPA-like routing
RUN echo 'server { \
    listen 80; \
    server_name _; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ { \
        expires 1y; \
        add_header Cache-Control "public, immutable"; \
    } \
    gzip on; \
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript; \
}' > /etc/nginx/conf.d/default.conf

# Expose port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
