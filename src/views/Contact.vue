<template>
  <div class="max-w-6xl mx-auto px-4 py-12">
    <h1 class="text-4xl font-bold mb-8">Контакты</h1>

    <div class="grid grid-cols-2 gap-8 mb-12">
      <div>
        <h2 class="text-2xl font-bold mb-6">Контактная информация</h2>
        
        <div class="mb-6">
          <h3 class="font-bold mb-2">Адрес:</h3>
          <p>г. Ташкент, Узбекистан</p>
          <p>ул. Амира Темура, 107Б</p>
          <p>Бизнес-центр "IT Park", офис 405</p>
        </div>

        <div class="mb-6">
          <h3 class="font-bold mb-2">Телефон:</h3>
          <p>+998 (90) 123-45-67</p>
          <p>+998 (90) 123-45-68</p>
        </div>

        <div class="mb-6">
          <h3 class="font-bold mb-2">Email:</h3>
          <p>info@turonanalytics.uz</p>
          <p>support@turonanalytics.uz</p>
        </div>

        <div class="mb-6">
          <h3 class="font-bold mb-2">Режим работы:</h3>
          <p>Пн - Пт: 9:00 - 18:00</p>
          <p>Сб: 10:00 - 15:00</p>
          <p>Вс: Выходной</p>
          <p class="font-bold text-green-600">Поддержка 24/7</p>
        </div>
      </div>

      <div>
        <h2 class="text-2xl font-bold mb-6">Напишите нам</h2>
        <form @submit.prevent="handleSubmit" class="space-y-4">
          <div>
            <label class="block mb-2">Имя:</label>
            <input v-model="form.name" type="text" required class="w-full border px-3 py-2" />
          </div>
          
          <div>
            <label class="block mb-2">Email:</label>
            <input v-model="form.email" type="email" required class="w-full border px-3 py-2" />
          </div>
          
          <div>
            <label class="block mb-2">Телефон:</label>
            <input v-model="form.phone" type="tel" required class="w-full border px-3 py-2" />
          </div>
          
          <div>
            <label class="block mb-2">Тема:</label>
            <select v-model="form.subject" required class="w-full border px-3 py-2">
              <option value="">Выберите тему</option>
              <option value="medical">Медицинские решения</option>
              <option value="pharmacy">Фармацевтика</option>
              <option value="automation">Автоматизация бизнеса</option>
              <option value="support">Техническая поддержка</option>
              <option value="other">Другое</option>
            </select>
          </div>
          
          <div>
            <label class="block mb-2">Сообщение:</label>
            <textarea v-model="form.message" required rows="5" class="w-full border px-3 py-2"></textarea>
          </div>
          
          <button type="submit" class="bg-blue-600 text-white px-6 py-3 w-full">
            Отправить
          </button>

          <p v-if="submitMessage" class="text-green-600">{{ submitMessage }}</p>
        </form>
      </div>
    </div>

    <div class="border-t pt-8">
      <h2 class="text-2xl font-bold mb-4">Часто задаваемые вопросы</h2>
      <div class="space-y-4">
        <div class="border p-4">
          <h3 class="font-bold mb-2">Как быстро вы реагируете на запросы?</h3>
          <p>Мы отвечаем на все запросы в течение 24 часов в рабочие дни.</p>
        </div>
        <div class="border p-4">
          <h3 class="font-bold mb-2">Предоставляете ли вы техническую поддержку?</h3>
          <p>Да, мы предоставляем круглосуточную техническую поддержку для всех наших клиентов.</p>
        </div>
        <div class="border p-4">
          <h3 class="font-bold mb-2">Можно ли получить бесплатную консультацию?</h3>
          <p>Конечно! Первая консультация всегда бесплатна.</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const form = ref({
  name: '',
  email: '',
  phone: '',
  subject: '',
  message: ''
});

const submitMessage = ref('');

const handleSubmit = () => {
  submitMessage.value = 'Спасибо! Ваше сообщение отправлено.';
  form.value = { name: '', email: '', phone: '', subject: '', message: '' };
  setTimeout(() => submitMessage.value = '', 3000);
};
</script>
