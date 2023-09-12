# JOURNAL Selk-Schwartau

> Dieses Dokument ist eine Art "Logbuch" für den Projektverlauf.
> Immer wenn Probleme auftauchen &ndash; und hoffentlich eine
> Lösung erfahren &ndash; wird in diesem Dokument darüber berichtet.
> Dadurch soll es allen Mitarbeitern möglich sein, den Verlauf
> dieses Projekts zu verfolgen und Unklarheiten so weit es geht
> zu klären.

## TODO &mdash; Die nächsten Schritte:

- [x] Hugo _Page Bundles_ studieren. (Siehe Eintrag von 2023-09-07 19:22.)
- [ ] Projekt in konkrete _Sections_ und _Page Bundles_ aufteilen
- [ ] Die einzelnen _Sections_ Schritt für Schritt implementieren.

## 2023-09-12 15:12 (MtLam)

Der Kopfteil der Webseite wurde übergangsweise mit der Jahreslosung aufgewertet.
Eine vollständige Lösung für Galerie steht allerdings noch aus. In diese Lösung
will ich aber auch noch nicht so viel investieren, weil das Dinge sind, die
eventuell noch ganz über den Haufen geworfen werden können.

## 2023-09-11 01:03 (MtLam)

Ein paar SEHR wichtige Updates:

1. Bei Ressourcen aus dem `/static`-Ordner müssen wir bei diesem Projekt darauf
   achten, dass wir beim absoluten Pfad die _baseURL_ nicht vergessen, also z.B.
   bei Images `src="{{ site.BaseURL }}/images/my-image.jpg"` verwenden. 
2. `$ hugo --minify` zerschießt uns unsere `src=`-Angaben bei Images. Also
   lieber darauf verzichten!
3. _Tailwind CLI_ reagiert in diesem Projekt nur auf verwendete Klassen, die im
   _Theme_ verwendet werden. Heißt also für uns: Wirklich __ALLE__ Layouts und
   Layout-Elemente müssen wir in diesem Projekt ins _Theme_ verschieben.
4. Auch Shortcodes werden von Hugo weggelöscht, weil sie HTML ins Markup
   schreiben.  Deshalb muss folgende Einstellung vom `development` ins
   `_default` befördert werden. Siehe Codebeispiel unten.

```yaml
--- 
# file: /config/_default/hugo.yaml
markup:
  goldmark:
    renderer:
      unsafe: true
```


## 2023-09-10 23:11 (MtLam)

Es ist vollbracht! Die Startseite ist mit Hugo, Markdown und Tailwind vorläufig
fertig gestellt!

Ganz besonders freut mich der Umstand, dass ich _Page Bundles,_ an den Sidebars
_Partials_ sowie einen anspruchsvollen _Shortcode_ zu einem recht gelungenen
Ganzen zusammnführen konnte.

Wenn es jetzt auch noch online genau so aussieht, war das ein Riesenschritt nach
vorn!


## 2023-09-10 12:23 (MtLam)

Im `head.html`-Partial unseres Themes und im _Makefile_ sorgten ein paar Fehler
für unbrauchbares CSS. Das habe ich korrigiert. Außerdem habe ich dafür gesorgt, 
das die Inhalte "minifiziert" und damit schneller übertragbar werden.


## 2023-09-09 21:39 (MtLam)

Ein weiteres Experiment ist geglückt. Ich habe meine ersten Gehversuche mit 
_Page Bundles_ erfolgreich abgeschlossen, indem ich ein Bild aus dem _Page
Bundle_ erfolgreich auf der Seite angezeigt bekommen habe.

Der Trick ist die relative Pfadangabe `./images/my-image.jpg`. Der `'.'` steht
hier (in guter Unix/Linux-Tradition) für _das aktuelle Verzeichnis,_ in diesem
Fall für das Verzeichnis, in dem die Markdown-Datei liegt. Und so funktioniert es
mit allen Verweisen auf das Dateien im aktuellen _Page Bundle._

Ressourcen, die global "von überall her" erreichbar sein sollen, sind dagegen im 
`/static`-Ordner am besten aufgehoben und dann über das Root-Verzeichnis `'/'`
zu erreichen.

#### HTML im Markdown erlauben

Standardmäßig erlaubt Hugo _kein_ HTML im Markdown. Wahrscheinlich, um eventuelles
[Cross-Site
Scripting](https://www.security-insider.de/was-ist-cross-site-scripting-xss-a-699660/)
von vornherein auszuschließen. Das ist eine noble Absicht, stört mich aber sehr,
wenn ich bei der Gestaltung der Webseite herumprobieren will.

Um mir das Leben wenigstens für das _'development'_ zu erleichtern, habe ich
folgende Änderung vorgenommen:

```yaml
--- 
# file: /config/development/hugo.yaml
markup:
  goldmark:
    renderer:
      unsafe: true
```

Damit stand Hugo meiner Experimentierfreude nicht länger im Weg.


## 2023-09-09 18:04 (MtLam)

#### [UPDATE zu 2023-09-07 23:31]:

Meine Studien haben erste Früchte gezeitigt. Ich habe durch das Anlegen eines
`/config`-Verzeichnisses das Dilemma mit der "richtigen" Pfadangabe aufgelöst.
Es gibt jetzt eine spezielle Konfiguration für _'development'_, also für meinen
lokalen Hugo-Live-Server, und eine andere Konfiguration für _'production'_, also
für die Online-Version. Konfigurationen, die für beide Anwendungsfälle wirksam
sein sollen, finden sich in `/config/_default`. 

#### Neu: SFTP mit Filezilla

Auch für das Hochladen hat sich erfreuliches getan. Ich habe ein grafisches
Upload-Programm installiert, mit dem ich ohne Gedöns schnell und automatisch über
SFTP (FTP im SSH-Tunnel) Updates auf dem Webserver vornehmen kann. Das schont
meine Nerven nachhaltig. Bin sehr dankbar dafür.



## 2023-09-08 19:22 (MtLam)

Es ist an dieser Stelle Zeit, ein paar erklärende Worte über die
Projektorganisation zu verlieren.

Ich bin an einem Punkt angekommen, wo ich die ersten Seiten bzw. _Sections_ in
das Projekt einfließen lasse, und zwar in Form von _Page Bundles_ &ndash; ein
Feature, bei dem mich Hugo in aller Form unterstützen will. Das kann ich aber
nur, wenn ich das Konzept hinter beiden Begriffen vollständig verstanden habe.
So viel habe ich jedenfalls bereits verstanden:

1. Eine _Section_ ist einfach eine Unterabteilung. In der aktuellen
  _selk-schwartau_-Seite kann man die _Sections_ an den Überschriften in der Navbar
  erkennen.  Da gibt es eine _section_ "Start" (könnte auch "Home" heißen), eine
  _section_ "Über Uns", eine _section_ "Kalender" usw.
0. In Hugo soll jede _Section_ ihr eigenes Verzeichnis bekommen, und
  wenn es nötig ist, lassen sich _Sections_ auch wieder in Unter-_Sections_ und 
  auf Dateiebene in entsprechende Unterverzeichnisse aufteilen. Diese 
  _Section_-Verzeichnisse nennt die Hugo-Dokumentation _Page Bundles._
0. Jede (Unter-)_Section_ mit ihrem Unterverzeichnis enthält bzw. kann enthalten:
    - ihre eigene kleine "Homepage" als Übersichtsseite (Pflicht! Es muss im
      _content_-Verzeichnis eine `index.md` und im _layout_ eine `index.html`
      geben. Fehlt die `index.html`, bedient sich Hugo für das Layout bei der
      `index.html` der übergeordneten _Section._)
    - ihre eigenen Einzelbeiträge (Single Pages)
    - ihre eigenen Bilder (_jpg, png, webp_) 
    - ihre eigenen Medien (Videos, Audios, Präsentationen) 
    - ihre eigenen Drucksachen und Download-Pakete (PDFs und ZIPs) 
    - eine eigene Menüliste für die Navbar (Hugo trägt die Menülisten dann alle
      für die Navbar zusammen!)

Der langen Liste kurzer Sinn: Ohne klare Organisation erzeugen all diese Zutaten
ab einer bestimmten Projektgröße einen sehr schwer verdaulichen Projektsalat.
Deshalb halte ich es für angebracht, mir _genau jetzt_ anzuschauen, welche
Hilfestellung mir Hugo für die Organisation dieses Projekts anbietet &ndash;
und wie ich dann im _Page Bundle_ auf die _Page Resources_ zugreifen kann.
Das ist extrem wichtig &ndash; auch für unsere "freien Autoren", die wissen müssen, 
an welcher Stelle sie ihre Beiträge (mit Bildern, Medien, PDFs etc.) ablegen
sollen, damit sie schnell und unkompliziert an der richtigen Stelle auf der Webseite
erscheinen können.

MtLam zieht sich also für das Wochenende zum Studium zurück. Dann geht es weiter
mit der Migration.



## 2023-09-07 23:31 (MtLam)

Nach hartem Kampf mit absoluten, relativen und vor allen Dingen nicht
funktionierenden Pfadangaben hab ich es doch tatsächlich noch hinbekommen,
die Pfade zu richten und zu einigen Erkenntnissen zu gelangen:

1. Es wirkt sich aus, dass dieses Projekt in einem Unterverzeichnis der Hauptseite 
   beheimatet ist. Sowas scheint für Hugo irgendwie nicht vorgesehen zu sein. Es
   erstellt seine Pfade immer relativ zum Wurzelverzeichnis der Webseite.
0. Wir müssen also __von Hand__ dafür sorgen, dass am Ende die richtigen Pfade
   an der richtigen Stelle stehen. Das geschieht an zwei Orten:
   - Innerhalb des _Themes_ müssen wir selber darauf achten, `/das-unterverzeichnis/`
     bei den Pfadangaben nicht zu vergessen, z.B. bei Bildern oder bei Links
     oder bei Assets.
   - Auch bei Bildern und Links im Content-Bereich darf `/das-unterverzeichnis/`
     nicht fehlen!
0. Die `baseURL`-Einstellung in `hugo.yaml` wirkt sich nur auf das
   `/content`-Verzeichnis aus, nicht auf Sachen, die im _Theme_ festgelegt wurden. 
   Wenn wir dort allerdings `/das-unterverzeichnis/` einfügen, kann das unangenehme
   Konsequenzen haben, nämlich ...
0. ... dass unser Hugo-Live-Server einige Pfade nicht mehr findet. Deshalb
   muss er wie im folgenden Beispiel aufgerufen werden:

```bash
$ hugo server -b 'http://localhost' -D --disableFastRender
```

Mit `-b http://localhost` wird der Eintrag `baseURL` in `hugo.yaml` ignoriert und durch 
`http://localhost` ersetzt. Das könnte eventuell auch für das _Makefile_
interessant werden. Und überhaupt _Make:_ Das war eine super Idee, um ätzende
Arbeitsgänge zu automatisieren. Leider habe ich noch keinen Weg gefunden, um das
regelmäßige Update auf dem FTP-Server mit _Make_ zu automatisieren.

Es wird wahrscheinlich nicht der letzte Kampf gewesen sein, den wir mit Pfaden
zu kämpfen haben. Fortsetzung folgt. 😕


## 2023-09-07 21:15 (MtLam)

Habe jetzt meine ersten Schritte mit dem Seitenlayout gemacht. Das wichtiste waren
folgende Erkenntnisse:

- Große Projektpläne lohnen sich nicht. Einfach Schritt für Schritt die nächste
  Seite und die nächste Seite und die nächste Seite mit Liebe zum Detail fertig
  zu machen bringt eindeutig bessere Ergebnisse.
- Der "Top-Down-Approach" hat sich beim Aufbau des Layouts gelohnt.
    1. `/layouts/_default/baseof.html` bearbeiten und formatieren.
    2. Die einzelnen _partials_ innerhalb von `baseof.html` bearbeiten und
       formatieren.
    3. Auf der Content-Ebene weiterarbeiten.
- Individuelle Anpassungen an _Tailwind_ in `tailwind.config.js` (betrifft z.B.
  die Standardeinstellungen für Überschriften, Links usw.) werden von der
  CDN-Version von _Tailwind_ ignoriert. CDN folgt immer den Werkseinstellungen
- Erfreulich war die Responsivität von _Tailwind_ und wie einfach man die Inhalte
  auf verschiedene Bildschirmgrößen anpassen kann -- im Groben jedenfalls.

## 2023-09-07 18:32 (MtLam)

StOtt hat es mir möglich gemacht, das Projekt zu Testzwecken online zu stellen!
Bin restlos begeistert von den neuen Möglichkeiten! Die genaue Webadresse muss
aber bis auf weiteres autorisierten Mitarbeitern vorbehalten bleiben, solange
das Projekt noch nicht offiziell ist. Deshalb kann ich sie hier leider nicht
veröffentlichen.

## 2023-09-06 22:22 (MtLam)

Die Arbeit mit Markdown bedeutet für den Einsatz von _Tailwind,_, dass ich
für einige Standardformate feste Formatierungen bereitstellen muss. Das betrifft
vor allem:

- "Normale Überschriften" (H1 bis H5)
- Links (`<a></a>`)
- Listen (wie diese hier)
- Panorama-Bilder, die die volle Breite ausfüllen. (In Markdown mit
  `![titel](url)` umschrieben)

Für besondere Elemente innerhalb der Markdown-Beiträge (z.B. Bilder mit
Bildunterschriften, Einbindung von Videos, Google Calendar usw.) werde ich 
[Shortcodes](https://gohugo.io/templates/shortcode-templates/)
bereitstellen. Deren Gebrauch muss ich dann natürlich für alle Autoren
dokumentieren &ndash; am besten irgendwie online.

## 2023-09-06 20:31 (MtLam)

> "Ist es nicht idiotisch, monatelang an einem Roman zu schreiben, wenn man an 
> jeder Straßenecke für drei Dollar einen kaufen kann? &ndash; _Mark Twain_

Abgewandelt auf das Projekt: "Ist es nicht idiotisch, sich tagelang mit
__JOOMLA__ und einem Migrations-Tool aus dem Netz herumzuärgern und sich dann
wochenlang mit Korrekturarbeiten zu plagen, wenn man die Inhalte einfach aus der
bestehenden Webseite in die Hugo-Vorlagen kopieren kann?

Irgendwie schon, nicht wahr?

## 2023-09-06 19:20 (MtLam)

Habe jetzt nach einigen Mühen Tailwind endlich so weit eingerichtet bekommen,
dass ich damit die Seiten formatieren kann. Ist gleich nach dem ersten
Einrichten immer noch ein bisschen nervig, weil ich bei jeder Layout-Änderung
die _Tailwind_-App durchlaufen lassen muss, damit die neuen Formatierungen auch
im Browser sichtbar werden. Beim Experimentieren kostet das wirklich Nerven.
Aber wenn die Formatierungen dann irgendwann etabliert sind, wird auch das
Geschichte sein. 

__[UPDATE 20:13]:__ Ich habe eine Lösung gefunden! Da Experimente nur auf dem
Hugo-Live-Server passieren, habe ich für den jetzt bestimmt, dass er sich die 
_Tailwind_-Klassen von der CDN-Version holt wie in der 
[offiziellen Doku](https://tailwindcss.com/docs/installation/play-cdn)
beschrieben. Damit bin ich jetzt auch "in Echtzeit" absolut flexibel mit
_Tailwind._ Hurra! (Die genauen Einstellungen stehen in
`/themes/tw_basic/layouts/partials/head/css.html`)

## 2023-09-05 19:36 (MtLam)

Ich habe mich entschlossen, dem Raymond-Credo zu folgen, was
Code-Veröffentlichung angeht. In _"The Cathedral and the Bazaar"_ hat Eric
Raymond es so formuliert:

> _Release early. Release often. And always listen to your customers._

Das heißt: Alles immer ganz früh raus, jeden kleinen Fortschritt gleich online
stellen und zeitnah auf alles Feedback eingehen, das ich von KlBgm oder StOtt
bekomme &ndash; oder wer sonst noch irgendwann konstruktives Feedback geben
will.

Damit ich schnell vorankomme und immer was vorzeigen kann, habe ich mich &ndash;
fürs erste zumindest &ndash; gegen ein Theme wie
[Paige](https://hugothemesfree.com/paige-hugo-theme/)
entschieden und werde stattdessen die Basis-Formatierungen mit
[Tailwind](https://tailwindcss.com/)
vornehmen. Schon weil ich mich bei _Tailwind_ nicht mehr sonderlich einarbeiten
muss. Später können wir gerne ein "professionelles" Theme verwenden, aber für
die ersten Schritte reicht _Tailwind_ absolut aus.

Ein weiteres Credo soll sein: _"Erst der Inhalt, dann die Schönheit!"_ Das
heißt: Erst wenn die Texte und die Bilder alle auf der Webseite sind (oder sagen
wir: 95% davon), erst dann lohnt es sich, das Design (Layout, Farben,
Schriftarten usw.) in Angriff zu nehmen &ndash; umso mehr als KlBgm sich mit
anderen zusammen über Änderungen in Inhalt, Layout und zusätzliche Features noch
weitere Gedanken machen will. Lohnt sich nicht, alles gleich picobello
durchzustylen &ndash; um dann von der "Kommission" gesagt zu bekommen: "Alles super,
aber wir wollen es lieber so und so haben." Dann sind womöglich mehrere
Arbeitstage für die Katz gewesen.

Infolgedessen werden die ersten Formatierungen alle sehr schlicht und monochrom
(schwarzweiß) sein. Über die richtigen Farben für Boxen, Buttons und Leisten wie
die Navigationsleiste kann dann später entschieden werden.

## 2023-09-05 09:45 (KlBgm)

Vielen Dank MtLam für die Grundlagenarbeit!
Ich bin jetzt auch bei GitHub angemeldet. Mir scheint das eine gute Möglichkeit
zu sein, gemeinsam an der HP zu arbeiten und diese dann auch relativ leicht zu
pflegen. Jedenfalls kann ich so ohne große Programmierkenntnisse Texte schreiben
und Änderungen einpflegen.

#### Zum Vorgehen:

@MtLam: Du hattest ja ein Migrationstool von Joomla auf Jamstack gefunden. Wie
wäre es, wenn Du damit einmal ein paar Seiten migrist. Dann könnten wir sehen,
wie das aussieht, Veränderungen vornehmen und die Zusammenarbeit üben. Vorher
jedoch sollten StOtt und ich uns in Rücksprache mit anderen Gedanken machen,
welche Veränderungen wir uns bei der HP wünschen (Inhalt, Layout etc...)

## 2023-09-04 08:35:57 (MtLam)

Projektbeginn. MtLam hat das Projekt auf GitHub erstellt, so dass es
theoretisch von allen Mitarbeitern heruntergeladen und vielleicht ergänzt
werden kann.

#### Die drängendsten Fragen im Moment:

- Auf welchem Wege kommen wir (RML + Mitarbeiter) am schnellsten zu erwünschten
  Ergebnissen. D.h. was muss wann in welcher Reihenfolge erledigt werden?
  Das wird erst mal ein, zwei Tage Orientierung und Planung bedeuten &ndash; **ohne**
  dass die Webseite wirklich vorankommt.
- Es hat sich herausgestellt, dass alle "handverlesenen Mitarbeiter" (README.md)
  einen eigenen Github-Account brauchen, um hier wirklich mitarbeiten zu können.
  Grund: Sie müssen ihre Schreibrechte jedes Mal nachweisen, wenn sie etwas
  hochladen wollen ("Dienstausweis-Kontrolle"). Das muss also auch noch für sie
  eingerichtet werden. Vielleicht schreib ich dafür einen Schritt-Für-Schritt
  Leitfaden.
  - Der Vorteil bei Github ist, dass sie mit einem Github-Account auch im Browser
    auf der Github-Plattform in den Dateien arbeiten können. Dann hätte KlBgm die
    grafische Oberfläche, die er sich wünscht und würde beim Speichern sofort das
    Projekt updaten und über das Update auch gleich veröffentlichen. Drei Fliegen
    mit einer Klappe!
