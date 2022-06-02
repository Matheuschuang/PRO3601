IMPORT $, STD;

Crimes := $.definicao_chicago_otimizado_tarefa5.file;

Layout2 := RECORD
	UNSIGNED recid;
	STRING DayMonthYear;
	Crimes;
END;

Layout2 MyTransf(Crimes Le, INTEGER cnt):= TRANSFORM
	SELF.recid := cnt;
	SELF.DayMonthYear := le.date[1..10];
	SELF := Le;
END;

newds := PROJECT(Crimes, MyTransf(LEFT,COUNTER));

newds;

