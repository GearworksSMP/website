<template>
    <footer class="footer has-cards">
        <div class="container">
            <div class="row row-grid align-items-center my-md">
                <div class="col-lg-6">
                    <h3 class="text-primary font-weight-light mb-2">Thank you for visiting!</h3>
                    <h4 class="mb-0 font-weight-light">Let's get in touch on any of these platforms.</h4>
                </div>
              <div class="col-lg-6 text-lg-center btn-wrapper">
                <a target="_blank" rel="noopener" href="https://github.com/GearworksSMP"
                   class="btn btn-neutral btn-icon-only btn-github btn-round btn-lg" data-toggle="tooltip"
                   data-original-title="Star on Github">
                  <i class="fa fa-github"></i>
                </a>
                <a target="_blank" rel="noopener" href="https://discord.gg/NQJuhb6stv"
                   class="btn btn-neutral btn-icon-only btn-discord btn-round btn-lg" data-toggle="tooltip"
                   data-original-title="Discord">
                  <i class="fa fa-discord"></i>
                </a>
                <a target="_blank" rel="noopener" href="https://www.patreon.com/uberswe"
                   class="btn btn-neutral btn-icon-only btn-patreon btn-round btn-lg" data-toggle="tooltip"
                   data-original-title="Support me on Patreon">
                  <i class="fa fa-patreon"></i>
                </a>
              </div>
            </div>
            <hr>
            <div class="row align-items-center justify-content-md-between">
                <div class="col-md-6">
                    <div class="copyright">
                        &copy; {{year}}
                        <a href="https://www.uberswe.com" target="_blank" rel="noopener">Uberswe</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <ul class="nav nav-footer justify-content-end">
                        <li class="nav-item">
                            <a href="https://www.uberswe.com" class="nav-link" target="_blank" rel="noopener">Uberswe</a>
                        </li>
                      <li class="nav-item">
                        <a href="https://www.schematicannon.com" class="nav-link" target="_blank" rel="noopener">Schematicannon.com</a>
                      </li>
                      <li class="nav-item">
                        <a href="https://www.createmod.com" class="nav-link" target="_blank" rel="noopener">CreateMod.com</a>
                      </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</template>
<script>
export default {
  name: 'app-footer',
  data() {
    return {
      year: new Date().getFullYear()
    }
  }
};
</script>
<style>
</style>
