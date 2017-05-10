USE 1311992289_gso_lok;

INSERT INTO flokkur(nafn)
VALUES
	("Sóló"),			#1
    ("Hljómsveit"),		#2
    ("Kór");			#3

INSERT INTO tegund(nafn)
VALUES
	("Söngleikur"),
	("Disco"),
    ("Hip-Hop"),
    ("Rock / Metal"),
    ("Electronic"),
    ("Kórsöngur"),
    ("Jazz");

INSERT INTO utgefandi(nafn)
VALUES
	("Markús Hreiðrarson"),		#1
    ("Bergur Steinsson"),		#2
    ("Hafsteinn Jónsson"),		#3
    ("María Dögg"),				#4
    ("Helga Líf");				#5

INSERT INTO flytjandi(nafn, faedingardagur, danardagur, lysing, flokkur, verdlaun)
VALUES
	("Gerorg Fritz", "1974-4-12", NULL, "Elskar að labba á ströndum og syngja góð lög", 1, 2),																																																													#1
	("Helga Fannarsdóttir", "1955-12-1", NULL, "Frábær í keðjusöng og djúpraddasöng", 3, 76),																																																													#2
	("Kristinn Teygsson", "1925-1-22", "2008-7-2", "Var rosalegur character og algjört sjermatröll. Diskurinn hans '80 ára afmæli Kristins Teygssons' kom öllum á óvart þar sem hlustendur fóru að gráta við sögurnar sem hann söng í sumum lögum og skelli hlæja við önnur! Hvert einasta lag á þeim disk fékk 10 í einkunn!", 3, 34),			#3
	("Harpa Gunnarsdóttir", "1988-1-1", NULL, "Heimsfræg söngkona sem syngur kraftmikil lög í hljómsveit með bróðir hennar og eiginmanni", 2, 6),																																																#4
	("Bragi Gunnarsson", "1986-6-9", NULL, "Heimsfrægur trommari í hljómsveit með systur sinni og magi sínum", 2, 6),																																																							#5
	("Helgi Karlsson", "1987-9-5", NULL, "Heimsfrægur gítaristi í hljómsveit með eiginkonu sinni og magi sínum", 2, 6),																																																							#6
	("Skellur Hvellsson", "1975-10-23", NULL, "Þungt rock marr", 2, 0),																																																																			#7
	("Keilir Gullsson", "1973-6-3", NULL, "Þyngra rock marr", 2, 1),																																																																			#8
	("Úlfur Geirsson", "1976-12-21", NULL, "Þyngsta rock marr", 2, 5);																																																																			#9

INSERT INTO diskur(nafn, utgefandi, utgafudagur, tegund)
VALUES
	("Partí í Kvöld", 5, "2012-5-5", 3),							#1
	("Helgi í Helvíti", 1, "2015-1-1", 4),							#2
	("Helgistund", 2, "2013-5-12", 6),								#3
	("80 ára afmæli Kristins Teygssons", 3, "2005-1-22", 1),		#4
	("Maríubjöllur", 5, "2016-7-2", 3),								#5
	("Úlfahjörð", 1, "2009-2-8", 4),								#6
	("Fritzin' to the disco", 1, "2002-1-5", 2);					#7

INSERT INTO lag(nafn, lengd, tegund, flytjandi, einkunn, diskur)
VALUES
	("Ching-Chikka-Ching", 5.23, 3, 4, 7.9, 1),							#1
	("Pow-Chakka-Pow-Wow", 2.11, 3, 5, 9.0, 1),							#2
	("Hú-Ha-Hí-Hí-Ha", 8.01, 3, 6, 4.5, 1),								#3
    ("Wa-Wa-Wí-Wa", 3.56, 3, 5, 5.0, 1),								#4
    ("Mig svimar!", 15.59, 4, 7, 9.7, 2),								#5
    ("Tungubrjótur!", 13.20, 4, 8, 8.8, 2),								#6
    ("Kveikja!", 21.22, 4, 9, 10.0, 2),									#7
    ("Orte Moñ forte", 2.45, 6, 2, 10.0, 3),							#8
    ("Dore Mi", 5.55, 6, 2, 8.8, 3),									#9
    ("Minn engill", 3.12, 6, 2, 9.5, 3),								#10
    ("Heilög sumarnótt", 4.32, 6, 2, 9.8, 3),							#11
    ("Þegar ég var piltur", 6.21, 6, 3, 10.0, 4),						#12
    ("Margar sögur", 7.33, 6, 3, 10.0, 4),								#13
    ("8 sinnum 10 ár", 5.44, 6, 3, 10.0, 4),							#14
    ("Skyldur, viltur og algjörlega triltur", 9.34, 6, 3, 10.0, 4),		#15
    ("Kveðju stund", 5.23, 6, 3, 10.0, 4),								#16
    ("Fallin blóm", 2.54, 3, 4, 7.7, 5),								#17
    ("Risinn", 4.01, 3, 6, 9.1, 5),										#18
    ("Ég finn þig", 12.34, 4, 9, 10.0, 6),								#19
    ("Þjáningin mín", 11.11, 4, 9, 10.0, 6),							#20
    ("Disco at the Fritzo", 4.55, 2, 1, 9.9, 7);						#21

INSERT INTO semjandi(nafn)
VALUES
	("Viðar Hrjóbjartsson"),		#1
	("María Bergsveinsdóttir"),		#2
	("Úlfur Geirsson"),				#3
    ("George De Frõne"),			#4
    ("Harbille Desmond"),			#5
    ("Helga Fannarsdóttir"),		#6
    ("Kristinn Teygsson"),			#7
    ("Gerorg Fritz");				#8

INSERT INTO lag_semj(lag_ID, semj_ID)
VALUES
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 2),
	(4, 1),
	(4, 2),
	(5, 3),
	(6, 3),
	(7, 3),
	(8, 4),
	(9, 5),
    (10, 6),
    (11, 6),
    (12, 7),
    (13, 7),
    (14, 7),
    (15, 7),
    (16, 7),
    (17, 1),
    (17, 2),
    (18, 1),
    (18, 2),
    (19, 3),
    (20, 3),
    (21, 8);