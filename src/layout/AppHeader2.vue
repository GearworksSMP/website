<template>
    <header class="header-global">
        <base-nav class="navbar-main" transparent type="" effect="light" expand>
            <router-link slot="brand" class="navbar-brand mr-lg-5" to="/">
              <h1 class="display-1">Gearworks</h1>
            </router-link>
          <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
            <li class="nav-item">
                <i class="ni ni-ui-04 d-lg-none"></i>
                <router-link to="/rules" class="nav-link text-dark">Rules</router-link>
            </li>
          </ul>

            <div class="row" slot="content-header" slot-scope="{closeMenu}">
                <div class="col-12 collapse-close">
                    <close-button @click="closeMenu"></close-button>
                </div>
            </div>
            <ul class="navbar-nav align-items-lg-center ml-lg-auto">
                <li class="nav-item">
                    <a class="nav-link nav-link-icon" href="https://github.com/GearworksSMP"
                       target="_blank" rel="noopener" data-toggle="tooltip" title="Star us on Github">
                        <i class="fa fa-github text-dark"></i>
                        <span class="nav-link-inner--text d-lg-none">Github</span>
                    </a>
                </li>
            </ul>
        </base-nav>
    </header>
</template>
<script>
import BaseNav from "@/components/BaseNav";
import BaseDropdown from "@/components/BaseDropdown";
import CloseButton from "@/components/CloseButton";

export default {
  components: {
    BaseNav,
    CloseButton,
    BaseDropdown
  }
};
</script>
<style>
</style>
