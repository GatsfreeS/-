Процедура ОбработкаСтрокТЧ(СтруктураДействий, СтрокаТЧ) Экспорт
	
	Если СтруктураДействий.Свойство("ПересчитатьСумму") Тогда
		СтрокаТЧ.Сумма = СтрокаТЧ.Цена * СтрокаТЧ.Количество;
	КонецЕсли;
	
	Если СтруктураДействий.Свойство("ПересчитатьЦену") Тогда
		Если СтрокаТЧ.Количество > 0 Тогда
			СтрокаТЧ.Цена = СтрокаТЧ.Сумма / СтрокаТЧ.Количество;
		Иначе
			СтрокаТЧ.Сумма = 0;
		КонецЕсли;
	КонецЕсли;
	
	Если СтруктураДействий.Свойство("РассчитатьОтклонение") Тогда
		СтрокаТЧ.КоличествОтклонение = - (СтрокаТЧ.КоличествоПоУчету - СтрокаТЧ.КоличествоПоФакту);
	КонецЕсли;
	
КонецПроцедуры

