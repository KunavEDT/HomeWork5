
&AtClient
Procedure ТоварыКоличествоOnChange(Item)
	РасчитатьСумму(Элементы.Товары.ТекущиеДанные);
EndProcedure

&AtClient
Procedure РасчитатьСумму(ТекДанные)
Если ТекДанные = неопределено Тогда
	Возврат;
КонецЕсли;
ТекДанные.Сумма = ТекДанные.Количество * ТекДанные.Цена;
EndProcedure

&AtClient
Procedure ТоварыЦенаOnChange(Item)
	РасчитатьСумму(Элементы.Товары.ТекущиеДанные);
EndProcedure
