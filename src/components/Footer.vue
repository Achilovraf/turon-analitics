<template>
  <footer class="bg-gray-100 border-t mt-12">
    <div class="max-w-6xl mx-auto px-4 py-8">
      <div class="grid grid-cols-3 gap-8">
        <div>
          <h3 class="font-bold mb-3">Turon Analytics</h3>
          <p class="text-sm">IT Solutions для медицины, фармацевтики и бизнеса</p>
        </div>
        <div>
          <h3 class="font-bold mb-3">Навигация</h3>
          <ul class="text-sm space-y-2">
            <li><router-link to="/">Главная</router-link></li>
            <li><router-link to="/services">Услуги</router-link></li>
            <li><router-link to="/about">О нас</router-link></li>
            <li><router-link to="/contact">Контакты</router-link></li>
          </ul>
        </div>
        <div>
          <h3 class="font-bold mb-3">Направления</h3>
          <ul class="text-sm space-y-2">
            <li>Медицина</li>
            <li>Фармацевтика</li>
            <li>Автоматизация</li>
          </ul>
        </div>
      </div>
      <div class="border-t mt-6 pt-6 text-center text-sm">
        © 2024 Turon Analytics. Все права защищены.
      </div>
    </div>
  </footer>
</template>
