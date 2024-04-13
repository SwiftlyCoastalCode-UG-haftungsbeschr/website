<template>
  <NavigationBar />
  <div class="content">
    <router-view />
  </div>
</template>
<script>
import NavigationBar from "./views/NavigationBar.vue";
export default {
  name: "App",
  components: {
    NavigationBar,
  },
  data() {
    return {};
  },
};
</script>
<style>
html {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 10px;
  background-color: #e0e0e0;
}
body {
  margin: 0;
}
</style>
