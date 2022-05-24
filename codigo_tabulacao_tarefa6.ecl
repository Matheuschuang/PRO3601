IMPORT $;
Crimes := $.definicao_chicago_otimizado_tarefa5.File;

// definicao do filtro.
InDecade := Crimes.year <= 2020 AND Crimes.year >= 2010;

Crimes(InDecade);

// Estrutura Record.
rec2 := RECORD
	Crimes.year;
	cnt := COUNT(GROUP);
END;

crosstab := TABLE(Crimes(InDecade),rec2,year);
crosstab;

// Media do campo cnt para os anos do filtro.
avg := AVE(crosstab,cnt);
avg;
