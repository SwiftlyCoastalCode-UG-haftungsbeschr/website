import { createApp } from "vue";
import App from "./App.vue";
import "./registerServiceWorker";
import router from "./router";
import "./style/global.css";

createApp(App).use(router.router).mount("#app");
