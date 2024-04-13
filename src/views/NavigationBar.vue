<template>
  <nav class="navbar background-darker">
    <router-link :to="{ name: 'Home' }">Home</router-link>
    <router-link :to="{ name: 'Über uns' }">Über uns</router-link>
    <router-link :to="{ name: 'Kontakt' }">Kontakt</router-link>
    <router-link :to="{ name: 'Impressum' }">Impressum</router-link>
    <router-link :to="{ name: 'Datenschutzerklärung' }"
      >Datenschutzerklärung</router-link
    >
  </nav>
</template>

<script>
import router from "../router";
export default {
  name: "NavigationBar",
  data() {
    return {
      routes: router.routes,
    };
  },
};
</script>

<style>
.navbar {
  color: white;
  padding: 15px;
  margin: 0;
}
nav a {
  font-weight: bold;
  color: #555555;
  font-size: 1.25em;
  text-decoration: none;
  padding: 10px;
}
nav a.router-link-exact-active {
  color: white;
  padding: 10px;
  background-color: #4caf50;
  border-radius: 15px;
}
</style>
