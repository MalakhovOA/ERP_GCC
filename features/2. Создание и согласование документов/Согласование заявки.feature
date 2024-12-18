﻿#language: ru

@tree

Функционал: Визирование документа Заявка на расходовние ДС (БИТ)

Как Согласующий я хочу
выполнить визирование документа Заявка на расходование ДС
чтобы исключить ошибки при согласовании   

Контекст:
И я подключаю TestClient "СулимаТС" логин "СулимаТС" пароль "123123"

Сценарий: Визирование документа Заявка на расходовние ДС (БИТ)

И В командном интерфейсе я выбираю 'Казначейство (БИТ)' 'Рабочее место визирования'
И я жду открытия окна "Рабочее место визирования" в течение 20 секунд
И я жду появления элемента "Результат" в течение 20 секунд
И я нажимаю на кнопку с именем 'ТаблицаВизыОбновитьСписокВиз'
//очищаем список заявок и заполняем повторно
//И я очищаю табличный документ "Результат" (расширение)
//И я жду, что табличный документ "Результат" заполнится данными в течение 30 секунд
И я жду появления элемента "Результат" в течение 20 секунд

// Как проверить что заявка была согласована?
//1. Проверить что табличный документа Результат пустой.
//2. Запомонить заявку в переменную, и проверить что она пропала из таб.документа
//3. Запонить навигационную ссылку, и проверить по ней.