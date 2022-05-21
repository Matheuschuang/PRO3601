IMPORT $,STD;

Crimes := $.definicao_chicago_tarefa3.File;

// profileResults := STD.DataPatterns.Profile(Crimes);
bestrecord     := STD.DataPatterns.BestRecordStructure(Crimes);


// OUTPUT(profileResults, ALL, NAMED('profileResults'));
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));
