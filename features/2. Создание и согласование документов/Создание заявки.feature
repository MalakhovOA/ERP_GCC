﻿#language: ru

@tree

Функционал: Проверка элементов формы документа Заявка на расходовние ДС (БИТ)

Как Ответственный я хочу
проверить создание документа Заявка на расходование ДС
чтобы исключить ошибки при вводе данных   

Контекст:
И я подключаю TestClient "СкляроваИС" логин "СкляроваИС" пароль "123123"

Сценарий: Проверка создания документа Заявка на расходов БС (БИТ)

*Создание Заявки на расходование ДС (БИТ)
	И В командном интерфейсе я выбираю 'Казначейство (БИТ)' 'Заявки на расходование ДС'
	Тогда открылось окно 'Заявки на расходование ДС'
	И я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Заявка на расходование средств: Новый'

	И в поле с именем 'СтатьяОборотов' я ввожу текст 'Аттестация и обучение перснала'
	И из выпадающего списка с именем "СтатьяОборотов" я выбираю по строке 'Аттестация и обучение персонала'
	//Тогда элемент формы "СтатьяОборотов" стал равен "Аттестация и обучение персонала"
	И я нажимаю кнопку выбора у поля с именем "Аналитика_2"
	Тогда открылось окно 'Функциональные блоки'
	И в таблице "Список" я активизирую дополнение формы с именем "СписокСтрокаПоиска"
	И в таблице "Список" в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст 'Корпоративный университет'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка на расходование средств: Новый *'
	И из выпадающего списка с именем "ЦФО" я выбираю по строке 'Корпоративный университет'
	//Тогда элемент формы "СтатьяОборотов" стал равен "Аттестация и обучение персонала"
	И из выпадающего списка с именем "Аналитика_3" я выбираю по строке 'Агхк. Полиэтилен'
	//Тогда элемент формы "СтатьяОборотов" стал равен "Аттестация и обучение персонала"
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "ГКК"'
	//Тогда элемент формы "СтатьяОборотов" стал равен "Аттестация и обучение персонала"
	
	*Проверка доступности редактирования счета организации
		//Если элемент "БанковскийСчет" доступен для редактирования Тогда
			//И я вызываю исключение с текстом сообщения 

	И из выпадающего списка с именем "БанковскийСчет" я выбираю по строке '40702810425040000463'
	//Тогда элемент формы "СтатьяОборотов" стал равен "Аттестация и обучение персонала"
	И из выпадающего списка с именем "Аналитика_4" я выбираю по строке 'АГХК. Полиэтилен'
	//Тогда элемент формы "СтатьяОборотов" стал равен "Аттестация и обучение персонала"
	И в поле с именем 'НазначениеПлатежа' я ввожу текст 'Оплата счета'
	//Тогда элемент формы "СтатьяОборотов" стал равен "Аттестация и обучение персонала"
	И из выпадающего списка с именем "Контрагент" я выбираю по строке 'Стремление ООО УК'
	И я нажимаю кнопку выбора у поля с именем "ОбъектРасчетов"
	Тогда открылось окно 'Выбор объекта расчетов с поставщиком'
	И в таблице "ОбъектыРасчетов" я активизирую поле с именем "ОбъектыРасчетовДоговор"
	И в таблице "ОбъектыРасчетов" я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем "Аналитика_12"
	Тогда открылось окно 'Проекты'
	И в таблице "Список" я активизирую дополнение формы с именем "СписокСтрокаПоиска"
	И в таблице "Список" в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст 'АГХК. ПОлиэтилен. П1'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заявка на расходование средств: Новый *'
	И из выпадающего списка с именем "БанковскийСчетПолучателя" я выбираю по строке '40702810038000011945'
	И из выпадающего списка с именем "ПланированиеСуммы" я выбираю точное значение 'В валюте платежа'
	И из выпадающего списка с именем "ТипПлатежа" я выбираю точное значение 'Аванс'
	И я нажимаю кнопку выбора у поля с именем "ТипПлатежа"
	Тогда открылось окно 'Типы платежей'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заявка на расходование средств: Новый *'
	И в поле с именем 'СуммаДокумента' я ввожу текст '102 000,00'
	И в поле с именем 'ВС_СуммаСчета' я ввожу текст '102 000,00'
	И из выпадающего списка с именем "СтавкаНДС" я выбираю точное значение 'Без НДС'
	И я перехожу к закладке с именем "СтраницаРаспределениеБюджета"
	И в поле с именем 'ВС_ДокОснованиеНомер' я ввожу текст '2367'
	И я перехожу к следующему реквизиту
	И в поле с именем 'ВС_ДокОснованиеДата' я ввожу текст '31.07.2024'

	*Вложенный файл
// Мешают модальные окна
	//И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаПрисоединенныеФайлы'
	//Тогда открылось окно 'Присоединенные файлы'
	//И я нажимаю на кнопку с именем 'ДобавитьИзФайлаНаДиске'
	//Тогда открылось окно 'Присоединенные файлы'
	//И Я закрываю окно 'Присоединенные файлы'

*Запись и проведение Заявки на расходование ДС (БИТ)
	#НавигационнаяСсылка = СсылкаНаДокумент
	
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я сохраняю навигационную ссылку текущего окна в переменную 'СсылкаНаДокумент'
	И я закрываю текущее окно
	Дано Я открываю навигационную ссылку '$СсылкаНаДокумент$'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	//И я отменяю проведение всех документов этого сценария по их навигационным ссылкам (расширение) 
	//И я выполняю проведение документа по навигационной ссылке "$СсылкаНаДокумент$" (расширение)
	//И я выполняю проведение документа по навигационной ссылке "e1cib/data/Документ.бит_кзн_ПлатежнаяПозиция?ref=a65400505601026811ef9644b0310e20" (расширение) 

*Открытие заявки которая находится на согласовании, и попытка изменить реквизиты

*Возврат заявки