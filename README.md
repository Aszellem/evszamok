# evszamok
Évszám tanulás segítő program.

Egy olyan asztali alkalmazást készítettem, amely összegyűjti az évszámokat, segíti a tanulást. Az évszámokat egy MySQL adatbázisban tárolja.
Lehetőség van a programban a keresésre, illetve módosítani, új adatokat felvinni és törölni.

A teszt adatokat az evszamok.sql tárolja. 
Csak helyben tud bejelentkezni, és a "tortenelem" adatbázisban tud csak adatokkal kapcsolatos műveleteket végezni, de máshoz nincs joga!
Ezt a tanulo.sql fájlban tároltam. - Név:tanulo, jelszó: tanulo.

A grafikus felületet JavaFX-el készítettem el.

A párbeszédpanelek megjelenítéséhez a Panel.java osztály-t használtam.
Ezen kívül van még két osztály:
-Evszam.java: a táblázat soraihoz,
-DB.java: ebbe kerülnek az adatbázist közvetlenül kezelő metódusok.


