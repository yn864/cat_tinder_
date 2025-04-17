# 🐱 CatLover App 

Приложение для любителей котиков с возможностью лайков, фильтрации и детальным просмотром пород

<div align="center">
  <img src="./assets/screenshots/main.png" width="200">
  <img src="./assets/screenshots/details.png" width="200">
  <img src="./assets/screenshots/error_state.jpg" width="200" >
  <img src="./assets/screenshots/error.jpg" width="200">
  <img src="./assets/screenshots/liked.jpg" width="200" >
  <img src="./assets/screenshots/loading.jpg" width="200" >
  <img src="./assets/screenshots/filter.jpg" width="200" >
</div>

## 🌟 Основные возможности

- **Свайп-система** для быстрого выбора (влево - дизлайк, вправо - лайк)
- **Лайкнутые котики** с историей и фильтрацией
- **Детальная информация** о породах
- **Адаптивный UI** с анимациями
- **Оффлайн-работа** с кешированием изображений
- **Система ошибок** с повтором запросов

## 🚀 Функционал

### Главный экран
- Случайные котики из TheCatAPI
- Интерактивные свайпы
- Кнопки лайк/дизлайк
- Счетчик лайков
- Переход к деталям по тапу

### Экран деталей
- Полная информация о породе
- Характеристики темперамента
- Качественные изображения

### Избранное
- История лайков с датами
- Поиск по породам
- Фильтрация по породам

### Технические фичи
- Прогресс-бары при загрузке
- Диалоги ошибок сети

## 🛠 Технологии

**Архитектура:**
- Clean Architecture (Data-Domain-Presentation)
- Cubit для управления состоянием
- Dependency Injection (get_it)

**Основные пакеты:**
- `http` - работа с API
- `cached_network_image` - кеш изображений
- `flutter_bloc` - state management
