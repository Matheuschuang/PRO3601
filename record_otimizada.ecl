IMPORT $,STD;

Crimes := $.definicao_chicago_tarefa3.File;

// profileResults := STD.DataPatterns.Profile(Crimes);
bestrecord     := STD.DataPatterns.BestRecordStructure(Crimes);


// OUTPUT(profileResults, ALL, NAMED('profileResults'));
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));

/* Os códigos da biblioteca STD não estão funcionando no servidor do Playground, no entanto eu havia rodado a best redcord structure na aula. 
A seguinte mensagem de erro aparece, ao submeter este código no playground:
eclcc	4078	Insufficient access rights to use embedded code	41	675*/