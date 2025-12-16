<template>
  <div>
    <Navigation />
    <router-view />
    <Footer />
  </div>
</template>

<script setup>
import Navigation from './components/Navigation.vue';
import Footer from './components/Footer.vue';
</script>
