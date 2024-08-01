package main

import (
	"embed"
	_ "embed"
	"github.com/gin-gonic/gin"
	"io/fs"
	"net/http"
)

//go:embed dist/*
var content embed.FS

func main() {
	subFS, err := fs.Sub(content, "dist")
	if err != nil {
		panic(err)
	}

	router := gin.Default()
	router.StaticFS("/", http.FS(subFS))

	// Listen and serve on 0.0.0.0:8080
	router.Run(":8080")
}
