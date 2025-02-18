#import "../../template.typ": *
#import "./_data.typ": *

#let data = json.decode(sys.inputs.at("data", default: "{}"))

#show: duha.with(
  title:"Úvodní informace",
  author: "Duha AZ"
)

#set text(size: 11pt)

#title("Letní dětský tábor Duhy AZ")

Vážení rodiče, milé děti!

Právě jste obdrželi první informační balík na letní tábor, který pořádá dětská organizace Duha Alternativní zóna, Žďár nad Sázavou (dále jen Duha AZ). Tábor se koná od neděle *#tabor.at("od")* do soboty *#tabor.at("do")* na základně Údolí Slunce poblíž Železných Horek u Přibyslavi. 

Určen je pro *děti a mládež ve věku 7-16 let*.

Pokud jste se rozhodli přihlásit své dítě na tábor, vyplňte *všechna* povinná pole v *Závazné přihlášce* na stránce #link("https://azduha.cz/tabor/"+tabor.at("rok")+"/prihlasky"), po kliknutí na tlačítko generovat se Vám stáhne předvyplněná přihláška na letošní tábor. Tato přihláška Vám společně s dalšími informacemi přijde i na všechny *uvedené kontaktní emaily*. Dále je nutné navštívit dětského či praktického lékaře, který potvrdí absolvování povinných očkování a posoudí, zda je dítě zdravotně způsobilé a může se tak tábora zúčastnit. Závaznou přihlášku (včetně části týkající se zdravotního stavu dítěte) poté potvrďte coby zákonný zástupce svým podpisem.

Z důvodu hromadného pojištění je třeba, aby všichni účastníci tábora byli členy Duhy AZ. Pokud Vaše dítě v současné době není členem, vyplňte také *Přihlášku do dětské organizace Duha AZ*, která Vám přijde společně s přihláškou na tábor emailem. Tuto přihlášku, prosím, také odevzdejte společně se Závaznou přihláškou na tábor. Budete poté vyzváni k zaplacení členského příspěvku do Duhy AZ, jehož uhrazení Vás opravňuje účastnit se celoroční činnosti oddílu.

Přihlášku (přihlášky) poté zašlete na adresu organizátora tábora - *Luční 1151/8, Žďár nad Sázavou, 591 01*, případně ji předejte na pravidelných schůzkách vedoucímu. Přihlášku je třeba odevzdat *do neděle 13. 4. 2025* (pokud není s hlavním vedoucím dohodnuto jinak). Kapacita tábora je omezená, proto budou upřednostňovány dříve odevzdané přihlášky a do neděle 16. 3. 2025 budou mít prioritu přihlášky stálých členů Duhy AZ. Hlavní vedoucí tábora si také vyhrazuje právo v odůvodněných případech přihlášky odmítnout.

#v(1em)

#align(right, [
  Za táborové vedení \
  Jonáš "Sony" Rosecký, hlavní vedoucí tábora \
  +420 730 585 427 \
  tabor\@azduha.cz
])


#pagebreak()


#title("Placení tábora")

Po odevzdání přihlášky a zařazení do seznamu účastníků Vám hospodář zašle e-mailem na Vaši kontaktní adresu variabilní symbol, který je nutný uvést při platbě tábora. Prosíme neplaťte tábor před tímto informačním emailem. Po uhrazení poplatku za tábor bude Vaše přihlášení považováno za závazné.

Stornovat pobyt lze nejpozději měsíc před táborem, tedy *20. 6. 2025* (telefonicky, e-mailem). Z důvodu nákupu společného jídla a materiálu v době před táborem je však možné vrátit pouze polovinu zaplacené částky. Při stornování pobytu po *20. 6. 2025* již bohužel není možné poplatek vrátit vůbec.

#v(1em)

#credentials(width: 25%, fields: (
  "Cena tábora:": [
    *4 200 Kč* - členové Duhy AZ \
    *4 200 Kč + 400 Kč členský příspěvek* - nečlenové Duhy AZ \
    *2 000 Kč* - 3. dítě v rodině (člen Duhy AZ)
  ]
))

#heading("Způsoby placení:")

-	*Převodem* na bankovní účet Duhy AZ: *2200972129/2010* (Fio banka)
  -	Při platbě vyplňte *přidělený variabilní symbol* a do zprávy pro příjemce uveďte #"\n"*jméno účastníka*
  -	Platby jsou automaticky ověřovány a jejich stav si můžete zobrazit na táborovém webu #"\n"v sekci #link("https://azduha.cz/tabor/"+tabor.at("rok")+"/index.php?page=ucastnici", "Účastníci")
-	*Platbu provede zaměstnavatel* na základě *Žádosti o příspěvek zaměstnavatele*, případně na základě *faktury*
  -	oba dokumenty na požádání vystavíme
  -	prosíme opět o uvedení *variabilního symbolu*
-	*hotově* hospodáři tábora
  -	pouze výjimečně po předchozí telefonické domluvě

#v(1em)

Po zaplacení (avšak v dostatečném předstihu před táborem) obdržíte další informační balík, tedy *podrobné informace* a *seznam věcí na tábor*.

V případě jakýchkoliv dotazů ohledně tábora se na nás neváhejte obrátit.

#v(1em)

#align(right, [
  Za táborové finance \
  Jakub "Kubula" Svoboda, hospodář tábora \
  +420 774 976 512
  tabor\@azduha.cz
])


#pagebreak()

#title("Letní dětský tábor Duha AZ", subtitle: "neděle "+tabor.at("od")+" – sobota "+tabor.at("do"))
#v(-1em)
_Určen pro kluky i holky ve věku 7–16 let_
#v(1em)
#credentials(width: 23%, spacing: 1.3em, fields: (
  "MÍSTO:":	[
    Údolí Slunce, Železné Horky u Přibyslavi
  ],

  "POPLATEK:":	[
    *4 200 Kč* (*+ 400 Kč* členský příspěvek Duhy AZ) \ *2 000 Kč* 3. dítě v rodině (člen)
  ],
  
  "PŘIHLÁŠKY:": [
    doručte hlavnímu vedoucímu (osobně, poštou) nebo odevzdejte na duhových schůzkách *nejpozději do neděle 13. 4. 2025*
  ],
  
  "PROGRAM:": [
    hry, sport, soutěže, turistika, zálesáctví, tábornické dovednosti, rozvoj osobnosti
  ],
  
  "STRAVOVÁNÍ:":	[
    5x denně; pití zajištěno po celý den
  ],
  
  "UBYTOVÁNÍ:": [
    ve stanech s podsadami (po dvojicích)
  ],
  
  "POJIŠTĚNÍ:": [
    všichni účastníci tábora jsou hromadně pojištěni
  ],
  
  "VEDENÍ:":	[
    *Hlavní vedoucí:* \
    Jonáš „Sony“ Rosecký \
    Luční 1151/8, Žďár nad Sázavou, 591 01 \
    +420 730 585 427
    
    *Zástupce HV:* \
    Sára "Sára" Krabcová
    
    *Zdravotník:* \
    Miroslav "Míra" Kadlec \
    Denisa "Deni" Sáblíková
  ],
  	
  "ADRESA:":	[
    \[jméno dítěte\] \
  	Letní dětský tábor Duha AZ \
  	Prodejna COOP \
  	Žižkovo Pole 59 \
  	582 22, Žižkovo Pole
  ],
  
  "DOPRAVA:": [
    tam společně, zavazadla dodávkou; zpět s rodiči auty (děkujeme!)
  ],
  
  "NUTNÉ:": [
    při nástupu na tábor je potřeba odevzdat:
    - průkazku zdravotní pojišťovny
    - případné léky, které dítě užívá pravidelně
  ],
  
  "SRAZ:":	[
    sraz *v neděli #tabor.at("od")* dopoledne, místo bude upřesněno
  ],
  
  "UKONČENÍ:":	[
    *v sobotu #tabor.at("do")* dopoledne (od 9:00 do 10:00)
  ],
  
  "VYBAVENÍ:":	[
    seznam potřeb a další potřebné informace obdržíte po termínu zaplacení poplatku, avšak v dostatečném předstihu před začátkem tábora.
  ],
  
  "DALŠÍ INFO:":	[
    novinky a aktualizace sledujte na táborovém webu, či na Facebooku Duhy AZ.
    S případnými dotazy se na nás můžete obracet buď emailem, nebo telefonicky
    #v(1em)
  	*Web:*	#link("https://azduha.cz/tabor/"+tabor.at("rok")+"/prihlasky") \
  	*Facebook:*	https://www.facebook.com/groups/246886215486106/ \
  	*Email:*	tabor\@azduha.cz \
  	*Telefon:* 	+420 730 585 427
 ]

))