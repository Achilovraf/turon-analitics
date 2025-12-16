import { createApp } from 'vue';
import { createRouter, createWebHistory } from 'vue-router';
import App from './App.vue';
import './style.css';

import Home from './views/Home.vue';
import Services from './views/Services.vue';
import About from './views/About.vue';
import Contact from './views/Contact.vue';

const router = createRouter({
  history: createWebHistory(),
  routes: [
    { path: '/', component: Home },
    { path: '/services', component: Services },
    { path: '/about', component: About },
    { path: '/contact', component: Contact }
  ]
});

createApp(App).use(router).mount('#app');
