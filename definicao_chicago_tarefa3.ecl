IMPORT $;
EXPORT definicao_chicago_tarefa3 := MODULE
	EXPORT Layout := RECORD
		INTEGER	ID;
		STRING CaseNumber;
		STRING Date;
		STRING Block;
		STRING IUCR;
		STRING PrimaryType;
		STRING Description;
		STRING LocalDescription;
		STRING Arrest;
		STRING Domestic;
		STRING Beat;
		STRING District;
		INTEGER Ward;
		STRING CommunityArea;
		STRING FBICode;
		INTEGER Xcoordinate;
		INTEGER Ycoordinate;
		INTEGER Year;
		STRING Updatedon;
		INTEGER Latitude;
		INTEGER Longitude;
		STRING Location;
	END;
EXPORT File := DATASET('~class::intro::mlsc::crimes_-_2001_to_present', Layout, CSV);
END;
	
		