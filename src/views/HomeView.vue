<template>
  <div class="home">
    <h1 class="primary">
      Willkommen bei der SwiftlyCoastalCode UG (haftungsbeschränkt)
    </h1>
    <img
      class="logo"
      height="300px"
      alt="SwiftlyCoastalCode Logo"
      src="../assets/logo.png"
    />
    <p>Die Seite befindet sich noch im Aufbau</p>
    <!-- <HelloWorld msg="Welcome to Your Vue.js + TypeScript App" /> -->
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import HelloWorld from "../components/HelloWorld.vue";

export default defineComponent({
  name: "App",
  data() {
    return {
      title: "My First Template",
    };
  },
  components: {
    // HelloWorld,
  },
  methods: {
    handleClick() {
      this.title = "this.$refs.name.value;";
    },
  },
});
</script>
