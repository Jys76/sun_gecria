START TRANSACTION;

UPDATE regio SET nome = "Abruzzo" WHERE cod_regio = "ABR";
UPDATE regio SET nome = "Basilicata" WHERE cod_regio = "BAS";
UPDATE regio SET nome = "Calabria" WHERE cod_regio = "CAL";
UPDATE regio SET nome = "Campagna" WHERE cod_regio = "CAM";
UPDATE regio SET nome = "Emilia Romagna" WHERE cod_regio = "EMR";
UPDATE regio SET nome = "Friuli Venezia Giulia" WHERE cod_regio = "FVG";
UPDATE regio SET nome = "Lazio" WHERE cod_regio = "LAZ";
UPDATE regio SET nome = "Liguria" WHERE cod_regio = "LIG";
UPDATE regio SET nome = "Lombardia" WHERE cod_regio = "LOM";
UPDATE regio SET nome = "Marche" WHERE cod_regio = "MAR";
UPDATE regio SET nome = "Molise" WHERE cod_regio = "MOL";
UPDATE regio SET nome = "Piemonte" WHERE cod_regio = "PIE";
UPDATE regio SET nome = "Puglia" WHERE cod_regio = "PUG";
UPDATE regio SET nome = "Sardegna" WHERE cod_regio = "SAR";
UPDATE regio SET nome = "Sicilia" WHERE cod_regio = "SIC";
UPDATE regio SET nome = "Trentino Alto Adige" WHERE cod_regio = "TAA";
UPDATE regio SET nome = "Toscana" WHERE cod_regio = "TOS";
UPDATE regio SET nome = "Umbria" WHERE cod_regio = "UMB";
UPDATE regio SET nome = "Valle d'Aosta" WHERE cod_regio = "VDA";
UPDATE regio SET nome = "Vanezia" WHERE cod_regio = "VEN";

COMMIT;