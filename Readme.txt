Willkommen auf YouTrip! Folgend eine kurze Anleitung zur Applikation:

- Bitte erstelle eine Postgres Datenbank mit dem Namen youtrip und passe ggfs. in den application.properties den Username und das Passwort an.
- Lade die Datei "database.sql" in Postgress. Die Datei liegt in dem Git Ordner.
- Ergänze in die Test Configurations unter VM arguments folgendes: -Dspring.profiles.active=dev
- Trage in die Runtime Configurations folgendes ein: -Dspring.profiles.active=ci
- Starte das Programm

- Gehe auf http://localhost:4200/. Hier kanst du nach einer Stadt suchen, in welcher du Aktivitäten finden möchtest.
- Sobald du eine Stadt ausgewählt hast, erhältst du eine Liste von Aktivitäten
- Die Liste kannst du dann nach 4 verschiedenen Kriterien sortieren
- Wenn du dir alle Restaurants, alle Hotels, alle Museen oder alle sonstigen anschauen möchtest, kannst du die Navbar oben benutzen.
- Möchtest du nach bestimmten Aktivitäten in einer Stadt suchen, kannst du links die Menübar nutzen.
- Du hast auch die Möglichkeit nach Aktivitäten mit einem bestimmten Rating in den Städten zu suchen
- Über den Button "Aktivität hinzufügen" kannst du als Nutzer weitere Aktivitäten hinzufügen.
- Sobald Aktivitäten hinzugefügt sind, kannst du auf diese klicken und es öffnet sich eine Detailseite. Hier sind alle Details zur Aktivität zu finden und es ermöglicht dem Nutzer Ratings abzugeben
- Auf der Detailseite befindet sich weiterhin ein Button "Admin-Mode". Wenn man diesen klickt, ist es möglich, Ativitäten zu editieren oder zu löschen sowie Ratings zu bearbeiten/löschen.
