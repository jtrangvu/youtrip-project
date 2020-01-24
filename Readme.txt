Willkommen auf YouTrip! Folgend eine kurze Anleitung zur Applikation:

- Bitte erstelle eine Postgres Datenbank mit dem Namen youtrip und passe ggfs. in den application.properties den Username und das Passwort an.
- Lade die Datei "database.sql" in Postgress. Die Datei liegt in dem Git Ordner.
- Erg�nze in die Test Configurations unter VM arguments folgendes: -Dspring.profiles.active=dev
- Trage in die Runtime Configurations folgendes ein: -Dspring.profiles.active=ci
- Starte das Programm

- Gehe auf http://localhost:4200/. Hier kanst du nach einer Stadt suchen, in welcher du Aktivit�ten finden m�chtest.
- Sobald du eine Stadt ausgew�hlt hast, erh�ltst du eine Liste von Aktivit�ten
- Die Liste kannst du dann nach 4 verschiedenen Kriterien sortieren
- Wenn du dir alle Restaurants, alle Hotels, alle Museen oder alle sonstigen anschauen m�chtest, kannst du die Navbar oben benutzen.
- M�chtest du nach bestimmten Aktivit�ten in einer Stadt suchen, kannst du links die Men�bar nutzen.
- Du hast auch die M�glichkeit nach Aktivit�ten mit einem bestimmten Rating in den St�dten zu suchen
- �ber den Button "Aktivit�t hinzuf�gen" kannst du als Nutzer weitere Aktivit�ten hinzuf�gen.
- Sobald Aktivit�ten hinzugef�gt sind, kannst du auf diese klicken und es �ffnet sich eine Detailseite. Hier sind alle Details zur Aktivit�t zu finden und es erm�glicht dem Nutzer Ratings abzugeben
- Auf der Detailseite befindet sich weiterhin ein Button "Admin-Mode". Wenn man diesen klickt, ist es m�glich, Ativit�ten zu editieren oder zu l�schen sowie Ratings zu bearbeiten/l�schen.
