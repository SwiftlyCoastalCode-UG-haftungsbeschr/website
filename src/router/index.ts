import { createRouter, createWebHistory, RouteRecordRaw } from "vue-router";
import HomeView from "../views/HomeView.vue";

const routes: Array<RouteRecordRaw> = [
  {
    path: "/",
    name: "Home",
    component: HomeView,
  },
  {
    path: "/about",
    name: "Über uns",
    component: () => import("../views/AboutView.vue"),
  },
  {
    path: "/contact",
    name: "Kontakt",
    component: () => import("../views/ContactView.vue"),
  },
  {
    path: "/imprint",
    name: "Impressum",
    component: () => import("../views/legal/ImprintView.vue"),
  },
  {
    path: "/privacy",
    name: "Datenschutzerklärung",
    component: () => import("../views/legal/PrivacyView.vue"),
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default { router, routes };
