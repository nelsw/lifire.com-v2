<script setup lang="ts">
import HelloWorld from './components/HelloWorld.vue'
</script>

<template>
  <header>
    <div class='shadow'>
      <img alt="Li-Fire logo" class="logo" src="@/assets/logo.svg" width="250" height="250" />
    </div>

    <div class="wrapper">
      <HelloWorld msg="Li-Fire"/>

      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About</RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>

<style lang='scss'  scoped>

$vw-width: 30vw;
$vw-height: calc(#{$vw-width} / (1/ 1));
$tod-tri: #ff00ff;
$gold-tri: rgba(252, 204, 71, 0.56);

.shadow {
  filter: drop-shadow(10px 10px 200px $tod-tri) drop-shadow(-10px -10px 50px $gold-tri);
}

.triangle-wrapper {
  width: $vw-width;
  height: $vw-height;
  clip-path: polygon(50% 0%, 0% 100%, 100% 100%);
  background-color: $tod-tri;
  display: flex;
  justify-content: center;
  align-items: center;
}
header {
  line-height: 1.5;
  max-height: 100vh;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

nav {
  width: 100%;
  font-size: 12px;
  text-align: center;
  margin-top: 2rem;
}

nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }

  nav {
    text-align: left;
    margin-left: -1rem;
    font-size: 1rem;

    padding: 1rem 0;
    margin-top: 1rem;
  }
}
</style>
