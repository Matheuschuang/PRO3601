IMPORT $, STD;

Crimes := $.definicao_chicago_otimizado_tarefa5.file;

Layout2 := RECORD
	UNSIGNED recid;
	// STRING DayMonthYear;
	UNSIGNED DayMonthYear;
	// UNSIGNED time;
	// STRING time;
	// STRING primary_type_lower;
	Crimes;
END;

Layout2 MyTransf(Crimes Le, INTEGER cnt):= TRANSFORM
	SELF.recid := cnt;
	// SELF.DayMonthYear := le.date[1..10];
	SELF.DayMonthYear := std.Date.FromStringToDate(le.date[1..10], '%d/%m/%Y');
	// SELF.time := Le.date[11..22];
	// SELF.time := std.Date.FromStringToTime(Le.date[11..22],'H%:M%:S%');
	// SELF.primary_type_lower := std.Str.ToLowerCase(Le.primary_type);
	SELF := Le;
END;

newds := PROJECT(Crimes, MyTransf(LEFT,COUNTER));

newds;
