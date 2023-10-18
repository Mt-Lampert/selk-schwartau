# JOURNAL Selk-Schwartau

> Dieses Dokument ist eine Art "Logbuch" für den Projektverlauf.
> Immer wenn Probleme auftauchen &ndash; und hoffentlich eine
> Lösung erfahren &ndash; wird in diesem Dokument darüber berichtet.
> Dadurch soll es allen Mitarbeitern möglich sein, den Verlauf
> dieses Projekts zu verfolgen und Unklarheiten so weit es geht
> zu klären.


## TODO &mdash; Die nächsten Schritte (MtLam)
- [ ] Ausarbeitung der Fußzeile gemäß der Skizze von KlBgm. Wie ich schon in
  der Besprechung sagte: Die Fußzeile hat alles, was auf keiner Seite fehlen
  darf, das aber wirklich nur die Leute sehen sollen, die ausdrücklich danach
  suchen.
    - Die Fußzeile wird ein „Karten-Rack“ werden mit drei Karten nebeneinander
      auf dem Desktop und untereinander auf dem Handy. Wird wieder eine
      Flexbox-Lösung werden.

- [x] Aus den Skizzen und Notizen von KlBgm richtige Wireframes und technische
  Anweisungen herausdestillieren. Dann weiterarbeiten.
- [x] Arbeitspläne für die einzelnen Schritte ausarbeiten, die noch anstehen.
  „Wenn du nicht weißt, was du als nächstes machen sollst &ndash; mach erst
  eine Liste und dann einen Plan.“
- [ ] _Google Iframes._ Google Calendar und Google Maps werden mit `<iframe>`
  in der Original-Webseite eingebunden. Wenn ich Glück habe, brauche ich
  die Iframes aus der Original-Webseite für das gleiche Ergebnis nur in die
  Hugo-Vorlagen hineinzukopieren.
    - Stellt sich heraus: Das wird doch nicht so einfach, weil die Sache auch
      „responsive“ sein soll. Auf dem Handy darf der IFrame nur 250px breit
      sein, auf dem Desktop soll er die ganze Breite einnehmen. Das geht aber,
      wenn man den IFrame in einen responsiven Container einbettet.
    - Ganz allgemein stellt sich die Frage, ob man auf dem Handy den Iframe
      nicht gleich durch einen passenden Link ersetzen sollte. Aber vielleicht
      geht dann ja alles durch Wischen vom aktuellen Tag auf den folgenden und 
      darauf folgenden Tag.
- [ ] Ein Konzept für lokale JavaScript-Dateien ausarbeiten. Das wird wichtig
  werden, um [GlideJS](https://glidejs.com/) individuell auf einzelne Seiten
  zuzuschneidern; verschiedene Seiten werden verschiedene Konfigurationen
  brauchen. Man könnte die entsprechende JavaScript-Datei jeweils im 
  _Front Matter_ der einzelnen Seite vermerken und sie dann im Layout abrufen.
- [ ] _Startseite._ Bevor ich irgendwas als „druckreif“ verkaufe, muss ich erst
  mehrere gestalterische Möglichkeiten durchspielen.
- [ ] Ein paar provisorische Bilder für verschiedene Seiten aus dem Netz
  zusammensuchen. (z.B. [Unsplash](https://unsplash.com)) Je blödsinniger und
  peinlicher die sind, desto mehr Mühe werden sich die Kollegen geben, um
  passendere Bilder für mich zu finden. Die Maße müssen allerdings gleich am
  Anfang stimmen.

## 2023-10-18 06:16 (MtLam)

Ich habe mit Ronas freundlicher Unterstützung einen ersten Entwurf für die
Fußzeile hinbekommen. Das Problem war, dass das Bild vom Gemeindebrief die
Grid-Strukturen völlig zerrissen hat. Jetzt habe ich das hoffentlich fürs Erste
gelöst.


## 2023-10-15 11:16 (MtLam)

Weil ich ein passendes Bild in der „Requisite“ gefunden habe, habe ich eine
Einzelseite vorgezogen. „Spirit-of-Joy“ hat jetzt ein großes Bild als Aufmacher
&ndash; das gleiche Bild wie bei den „10 Jahren Adi Kläs“ als Chorleiter.

War ein bisschen Arbeit, weil es verschiedene Quellen geben für das Bild geben
kann. Im Normalfall sollte das Bild aus dem `images`-Ordner des
Content-Verzeichnisses kommen. Manchmal kommen aber auch Bilder aus dem
`/static/images/`-Verzeichnis zum Zug. Der Code in `single.html` will dem
Rechnung tragen.

## 2023-10-14 21:16 (MtLam)

- [x] _Google Iframes._ Google Calendar mit `<iframe>` in der Original-Webseite
  einbinden. Wenn ich Glück habe, brauche ich die Iframes aus der
  Original-Webseite für das gleiche Ergebnis nur in die Hugo-Vorlagen
  hineinzukopieren.

Das hat viel besser funktioniert als ich ursprünglich dachte! Ich konnte im
_IFrame_ Höhe und Breite einstellen, und der _IFrame_ selbst war so
konfiguriert, dass er sich immer in den Vorgaben seines _containers_ bewegt
hat. Damit hat dann auch alles auf der Handy-Version geklappt!

## 2023-10-14 18:08 (MtLam)

- [x] _Überarbeitung der globalen Kopfzeile_ auf die Form, die KlBgm in seiner
  Skizze vorgestellt hat. Im Zweifelsfall lassen sich die Menüpunkte auf dem PC
  auch in _zwei_ Reihen anordnen. Müsste mit Flexbox und _flex-wrap_ gehen.
    - Außerdem das allgemeine große Bild (im Moment Jahreslosung) aus dem
      Kopfbereich in den _Main_-Bereich verschieben. Das wird einen speziellen
      Arbeitsplan erfordern, weil diese Umstellung bei vielen einzelnen Seiten 
      vorgenommen werden muss. 

Die erste Überarbeitung der Kopfzeile ist soweit abgeschlossen. Ich habe auch
das große Bild aus dem Kopfteil herausgenommen.

Auf der Startseite habe ich außerdem die Sidebars weggenommen. Ihr Inhalt kommt
jetzt in den Fußteil. Der muss allerdings noch gemacht werden 




## 2023-09-18 16:16 (MtLam)

Im Zuge der jüngsten Erkenntnisse habe ich beschlossen, die Arbeit mit Bildern
nur noch über _Shortcodes_ zu machen und nicht mehr über Layouts. _Shortcodes_
erreichen genau das gleiche wie Layouts, lassen uns aber viel mehr Flexibilität.
In einem Layout ist man gefangen wie in einem Käfig, im Shortcode sperrt man nur
ein einziges Bild und ein bisschen Text in einen Käfig.

Und noch etwas: Ich weiß jetzt, warum _floats_ bei Web-Designern so verhasst sind
&ndash; sie rauben uns die Kontrolle über den "umfließenden" Text. Wenn der
Browser neben dem Bild noch Platz für zwei kurze Wörter findet, quetscht er die
zwei kurzen Wörter neben das Bild! Einfach weil er es kann! Da lob ich mir doch
die festen Bild- und Text-Container, zu denen _Flexbox_ oder _CSS Grid_ mich
zwingen!

## 2023-09-18 09:01 (MtLam)

- [x] Weiter an den Einzelseiten aus dem Paket _About/Über Uns_ arbeiten.

Mit dem Abschluss der Seite über "Unsere Kirche, die SELK" ist die Arbeit an
dieser _Section_ abgeschlossen!

Ich habe wieder einen neuen _Shortcode_ erstellt: `image-in-p`, und er fügt ein
Bild als "fließendes Objekt" in einen Text ein.

Profitiert haben davon die Seiten "Unser Pastor" und "Unsere Kirche". Ärgerlich
war nur, dass meine Version von _Tailwind_ die Klassen `float-right` bzw.
`float-left` nicht akzeptiert hat (die ich für diesen _Shortcode_ brauchte) und
ich sie "von Hand" nachreichen musste.

Aber am Ende ging ja alle gut!

## 2023-09-17 20:51 (MtLam)

Mehrere Meilensteine sind geschafft: Die Seiten über den Pastor, den
Küchenvorstand und die Orgel der Martin-Luther-Gemeinde. 

Ein wichtiger Meilenstein war die Erstellung des _wide-pic_-Shortcodes.
Damit ist es möglich, ein einzelnes großes Bild zentral über die komplette
Breite einer Seite anzuzeigen, und zwar so, dass das Bild immer zentriert 
auf der Seite erscheint. 

Die Arbeit war dieses Mal um einiges leichter wegen der vielen Vorarbeiten
(shortcodes, partials, Layouts), an die ich jetzt einfch anknüpfen konnte.
Das wird auch die kommende Arbeit sehr beschleuniigen!

## 2023-09-16 19:43 (MtLam)

Und schon wieder ein Seite geschafft! Dieses Mal die Seite über die
Gemeindekreise. Das war ein größeres Unternehmen, weil ich hier ein riesiges JPEG durch echtes
HTML und CSS ersetzen musste.

Warum musste das sein? Weil das riesige JPEG nicht responsiv ist und auf dem Handy
auf gut Deutsch einfach nur :poop: aussieht. Die jetzige Lösung ___ist___
responsiv!

### Besondere Anmerkungen

1. Ich musste mehrere _Shortcodes_ definieren, um die Seite auch im Markdown
   gestaltbar zu machen. Das hat sehr gut funktioniert, ist aber "sehr
   technisch" geworden (siehe `/content/about/gemeindekreise.md`). Wenn es sehr
   technisch wird, werde ich für Autoren und Mitarbeiter im _Wiki_ ausführlich
   dokumentieren müssen, wie sie mit den Shortcodes umgehen müssen, wenn sie
   damit das gleiche erreichen wollen wie ich.
2. Auch im _Front Matter_ der Gemeidekreis-Seite gibt es einige Dinge, die der
   Aufklärung für Uneingeweihte bedürfen. Hugo macht beim Bau von Webseiten
   unglaublich viel möglich, keine Frage, aber "intuitiv" kann man seinen _modus
   operandi_ wirklich nicht nennen. Die Möglichkeiten, die es bietet, wiegen
   diesen "Makel" für mich aber mehr als auf!
3. Die benötigten Bilder wurden mir dankenswerterweise zur Verfügung gestellt.
   Zwei habe ich allerdings durch freie
   [Unsplash](https://unsplash.com)-Bilder ersetzt: `bible_250x.png` für den
   Bibelkreis und `fireplace.png` für die Kaminabende.
4. Mit Hilfe von [GraphicsMagick](http://www.graphicsmagick.org/) war es sehr
   leicht, alle Bilder auf eine einheitliche Breite von 250px zu skalieren.
   Folgende Kommandozeilen genügten. 

    ```bash
    # dir: /content/about/images/gk/
    $ gm mogrify -resize 250x *.jpg
    $ gm mogrify -resize 250x *.png
    ```
   

## 2023-09-15 19:17 (MtLam)

Die nächste Seite ("Spirit-of-Joy")  ist fertig! Dieses Mal bin ich nicht den
Weg übers _Layout_ gegangen, sondern habe im _Theme_ einen (recht
anspruchsvollen) _Shortcode_ definiert (`/layouts/shortcodes/img-right.html`).
Dieser _Shortcode_ macht es möglich, ein Bild rechts neben einen Text zu legen,
ohne die Seitenformatierung zu vergewaltigen! Das gilt auch dann noch, wenn die
Seite vom Handy oder von einem Tablet aus besucht wird!

Das Ergebnis kann sich sehen lassen, denke ich, und dieser Weg hat noch einen
zusätzlichen Vorteil &ndash; er macht Autoren flexibler. Jeder freie Autor kann
mit `{{% img-right src="my-image"}}` dieses Feature nutzen, und das Ergebnis
sollte genau so aussehen wie beim Chefdesigner.

Content-Datei zur Ansicht: `/content/about/spirit-of-joy.md`

## 2023-09-15 12:56 (MtLam)

- [x] Die schon existierenden Seiten "responsive" machen, sofern sie es nicht
      schon sind.

Habe die Handy-Version der bestehenden Seiten korrigiert und ein wenig hübscher
gemacht. Außerdem habe ich die interne Navigation verbessert.

## 2023-09-14 11:31 (MtLam)

ALLES FERTIG mit der neuen Navbar! Nicht alle Einträge, aber alle Funktionalität. 
Jetzt funktionieren auch Unter-Menüs! Das lange Arbeiten hat sich gelohnt.

## 2023-09-13 20:40 (MtLam)

- [x] AlpineJS im Crashkurs lernen (2-3 Tage)
- [x] AlpineJS in das Projekt integrieren
- [x] Mit Hilfe von AlpineJS eine neue Navigationsleiste aufbauen.

Diese beiden Sachen waren das Einfachste von allen. _AlpineJS_ ist noch
einfacher als ich im ersten Moment dachte. Und die Installation war auch einfach
-- allerdings nur, wenn man das npm-Paket auf Projektebene installiert, nicht
nicht auf Theme-Ebene. Mal wieder ein Pfadproblem ... :weary:

Und dann ist es mir tatsächlich in vergleichsweise kurzer Zeit gelungen, die
neue Navbar zumindest auf der ersten Ebene aufzubauen. Jawollski!

## 2023-09-13 07:28 (MtLam)

Auf der _development_-Ebene funktioniert alles recht gut, aber an dieser Stelle
ist es wohl wieder einmal an der Zeit, mich zwei, drei Tage weiter zu bilden,
bevor mich das Gelernte dann umso produktiver bei der Arbeit an diesem Projekt
macht. 

Es geht um [AlpineJS](https://alpinejs.dev/), einen mehr als würdigen Nachfolger
von [JQuery](https://jquery.com), der mir auf Javascript-Ebene genau so helfen
wird wie _Tailwind_ auf CSS-Ebene. (JQuery macht das Javascript in der
JOOMLA-Version dieser Webseite, wird aber seit 2016 nicht mehr aktiv
weiterentwickelt und kann deshalb für extreme Sicherheitslücken auf
Javascript-Ebene sorgen.) 

Im Projekt wird Javascript und damit _AlpineJS_ vor allem dafür sorgen, dass es
Spaß machen wird, die Navigationsleiste zu benutzen. 

> _Vergessen Sie nie, dass der Mensch den Computer als
> magisches Spielzeug betrachtet, ganz besonders, wenn der Computer 
> vollständig in seine Hand passt. 
> &mdash; Rich Harris, Erfinder des Svelte-Frameworks._

Warum ist das nötig? Weil meine Rezensoren die Seiten irgendwie ansteuern müssen
können, die ich online stelle und die sie sich anschauen sollen.

## 2023-09-12 18:53 (MtLam)

Habe damit begonnen, die _Section_ "About" zu implementieren. Das war wieder
gespickt mit neuen Herausforderungen:

1. Wenn ich ein spezielles Layout für bestimmte _Single Pages_ benötige, kann ich
   es wie folgt im _Front Matter_ anfordern:

    ```yaml
    ---
    layout: "special"
    ---
    ```

    In diesem Fall muss folgende Datei existieren: 
    `/layout/my-section/special.html`. Mit `my-section` ist natürlich gemeint
    der Name der aktuellen _Section,_ in der ich arbeite.

2. Jaja, die Pfadangaben: Der Zugriff auf Ressourcen hat bei _Single Pages_
   ebenfalls seine besonderen Eigenheiten.  Wenn ich in einer _Single Page_ z.B.
   auf eine Bild-Datei im _Section_-eigenen `images`-Verzeichnis zugreifen will,
   muss ich es wie folgt tun:

    ```yaml
    ---
    image: "../images/my-image.jpg"
    ---
    ```
    ```markdown
    ![My image](../images/my-other-image.jpg)
    ```

    `'../images'` bedeutet eigentlich: "Geh ein Verzeichnis nach oben und such
    dort nach dem `images`-Vezeichnis. Ich kann mir nicht erklären, welche Logik
    Hugo damit verfolgt, aber so muss man es machen. Sonst findet Hugo die
    Bild-Datei nicht! :weary:



## 2023-09-12 15:12 (MtLam)

Der Kopfteil der Webseite wurde übergangsweise mit der Jahreslosung aufgewertet.
Eine vollständige Lösung für Galerie steht allerdings noch aus. In diese Lösung
will ich aber auch noch nicht so viel investieren, weil das Dinge sind, die
eventuell noch ganz über den Haufen geworfen werden können.

Habe 'About' als neue _Section_ angelegt. Die Listen-Layout war zufriedenstellend.

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
