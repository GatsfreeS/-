﻿
&НаСервере
Процедура ЗаполнитьПоОстаткамНаСервере()
	
	РаботаСДокмуентамиСервер.ЗаполнитьИнвентаризациюПоОстаткам(Объект);
	
КонецПроцедуры

&НаКлиенте
Процедура ЗаполнитьПоОстаткам(Команда)
	ЗаполнитьПоОстаткамНаСервере();
КонецПроцедуры

&НаКлиенте
Процедура ТоварыКоличествоПоФактуПриИзменении(Элемент)
	
	СтрокаТЧ = Элементы.Товары.ТекущиеДанные;
	
	СтруктураДействий = Новый Структура;
	СтруктураДействий.Вставить("РассчитатьОтклонение");
	
	ОбработкаДанныхКлиент.ОбработкаСтрокТЧ(СтруктураДействий, СтрокаТЧ);
	
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	ЗаполнитьОтклонениеНаФорме();
	
КонецПроцедуры

&НаКлиенте
Процедура ПослеЗаписи(ПараметрыЗаписи)
	
	ЗаполнитьОтклонениеНаФорме();
	
КонецПроцедуры

&НаКлиенте
Процедура ЗаполнитьОтклонениеНаФорме()
	
	СтруктураДействий = Новый Структура;
	СтруктураДействий.Вставить("РассчитатьОтклонение");
	
	Для Каждого Строка ИЗ Объект.Товары Цикл
		ОбработкаДанныхКлиент.ОбработкаСтрокТЧ(СтруктураДействий, Строка);
	КонецЦикла;
	
КонецПроцедуры




