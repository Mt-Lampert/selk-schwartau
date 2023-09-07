# JOURNAL Selk-Schwartau

> Dieses Dokument ist eine Art "Logbuch" für den Projektverlauf.
> Immer wenn Probleme auftauchen &ndash; und hoffentlich eine
> Lösung erfahren &ndash; wird in diesem Dokument darüber berichtet.
> Dadurch soll es allen Mitarbeitern möglich sein, den Verlauf
> dieses Projekts zu verfolgen und Unklarheiten so weit es geht
> zu klären.

## TODO &mdash; Die nächsten Schritte:

- [ ] Die derzeitige Webseite mit Hugo aufbauen und online stellen. Nicht weil sie
      so toll gelungen ist, sondern weil wir das ausprobieren und üben müssen.
- [ ] Wenn sich irgendwann ein guter Workflow etabliert hat, können wir die einzelnen 
      Schritte mit _Make_ automatisieren.


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
