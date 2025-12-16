# Инструкция по деплою

## Быстрый старт

### 1. Установите зависимости
```bash
npm install
```

### 2. Проверьте локально
```bash
npm run dev
```
Откройте http://localhost:5173

### 3. Деплой на GitHub Pages

#### Способ A: Автоматический (рекомендуется)

1. Создайте репозиторий на GitHub или используйте существующий:
   https://github.com/Achilovraf/turon-analitics

2. Добавьте удаленный репозиторий (если еще не добавлен):
```bash
git remote add origin git@github.com:Achilovraf/turon-analitics.git
```

3. Запушьте код:
```bash
git add .
git commit -m "Add deployment"
git push -u origin main
```

4. GitHub Actions автоматически соберет и задеплоит сайт

5. Настройте GitHub Pages:
   - Зайдите в Settings > Pages
   - Source: выберите ветку `gh-pages`
   - Нажмите Save

6. Сайт будет доступен: https://achilovraf.github.io/turon-analitics/

#### Способ B: Ручной деплой

```bash
./deploy.sh
```

Затем настройте GitHub Pages как в способе A (пункт 5)

## Обновление сайта

После изменений:

```bash
git add .
git commit -m "Update site"
git push
```

GitHub Actions автоматически задеплоит изменения.

Или используйте:
```bash
./deploy.sh
```

## Проблемы?

### Ошибка при деплое
- Проверьте, что у вас есть права на запись в репозиторий
- Убедитесь, что SSH ключ добавлен в GitHub

### Сайт не открывается
- Подождите 2-3 минуты после первого деплоя
- Проверьте настройки GitHub Pages (Settings > Pages)
- Убедитесь, что выбрана ветка `gh-pages`

### 404 ошибка на страницах
- Проверьте, что в `vite.config.js` указан правильный `base: '/turon-analitics/'`
