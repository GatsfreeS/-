
&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	
	ТекущаяСтрока = Элементы.Товары.ТекущиеДанные;
	
	СтруктураДействий = Новый Структура;
	СтруктураДействий.Вставить("ПересчитатьСумму", Истина);
	
	ОбработкаДанныхКлиент.ОбработкаСтрокТЧ(СтруктураДействий, ТекущаяСтрока);
	
КонецПроцедуры

&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	
	ТекущаяСтрока = Элементы.Товары.ТекущиеДанные;
	
	СтруктураДействий = Новый Структура;
	СтруктураДействий.Вставить("ПересчитатьСумму", Истина);
	
	ОбработкаДанныхКлиент.ОбработкаСтрокТЧ(СтруктураДействий, ТекущаяСтрока);
	
КонецПроцедуры

&НаКлиенте
Процедура ТоварыСуммаПриИзменении(Элемент)
	
	ТекущаяСтрока = Элементы.Товары.ТекущиеДанные;
	
	СтруктураДействий = Новый Структура;
	СтруктураДействий.Вставить("ПересчитатьЦену", Истина);
	
	ОбработкаДанныхКлиент.ОбработкаСтрокТЧ(СтруктураДействий, ТекущаяСтрока);
	
КонецПроцедуры

&НаКлиенте
Процедура ТоварыНоменклатураПриИзменении(Элемент)
	СтрокаТабличнойЧасти = Элементы.Товары.ТекущиеДанные;
СтрокаТабличнойЧасти.Цена = РаботаСоСправочниками1.ПроизводственнаяЦена(
Объект.Дата, СтрокаТабличнойЧасти.Номенклатура);
РаботаСДокументами.РассчитатьСумму(СтрокаТабличнойЧасти);
КонецПроцедуры
