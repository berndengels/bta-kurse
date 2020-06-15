## laravel bta-kurse

Nach dem clonen des Git-Repositories von Github (https://github.com/berndengels/bta-kurse.git)
folgendes per Terminal im
 Projektverzeichnis (bta-kurse) ausführen:

- erstelle eine MySQL Datenbank namens 'bta' und importiere darin die SQL-Datei aus database/dumps/bta.sql.
- (linux, macosx) setup
- (windows) setup.bat

#### oder folgendes einzeln nacheinander:
- composer install
- npm install
- (für lokalen Gebrauch) .htaccess anlegen mit RedirectPermanent Anweisung:
 Verzeichnis im Webroot => VHost Adresse
 (zB: **RedirectPermanent /bta http://bta.loc**) 
- npm run dev
- .env.local kopieren nach .env und die darin enthaltenen Conf-Daten anpassen
 z.B DB Zugangsdaten

### Datenbank Zugriff
In der .env Datei die DB Zugriffsdaten anpassen:
z.B:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=bta
DB_USERNAME=bta
DB_PASSWORD=bta
```

#### Für Windows DNS in host Datei eintragen (C:\Window\System32\drivers\etc\hosts)
#### Für Mac OSX, Linux DNS in host Datei eintragen (/etc/hosts)
- 127.0.0.1 bta.loc

#### Apache -> httpd-vhosts.conf
unter XAMPP:
MacOSX: /Applications/XAMPP/etc/extra/httpd-vhosts.conf:
Windows: c:\xampp\apache\conf\extra\httpd-vhosts.conf:
```
<VirtualHost *:80>
	ServerName bta.loc
        DocumentRoot "FULL PATH TO ... /bta-kurse/public"
	CustomLog "logs/access_bta.log" common
	ErrorLog "logs/error_bta.log"
</VirtualHost>
```
Anschliessend den Apache-Web-Server neu starten und über den Browser http://bta.loc aufrufen.
