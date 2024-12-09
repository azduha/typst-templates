#import "../template.typ": *

#let data = json.decode(sys.inputs.at("data", default: "{}"))

#show: duha.with(
  title:"Úvodní informace",
  author: "Duha AZ"
)

#set text(size: 11pt)

#title("Organizační informace Tábora 2024")

Vážení rodiče, milé děti!
Přijměte, prosím, několik organizačních informací o táboře v Železných Horkách, na který je přihlášeno i Vaše dítě.

#v(1em)

#credentials(width: 28%, spacing: 1.2em, fields: (
  "NÁSTUP NA TÁBOR:":	[
    sraz *v neděli 30. 6. 2024 v 9:45 na parkovišti „Auto...“* u nádraží ve Žďáře nad Sázavou (#link("https://mapy.cz/s/dojatagara")[49.5555228N, 15.9389528E]). Dětem oblečte *pohodlné oblečení & obutí* dle počasí. Do malého batůžku jim zabalte *pláštěnku, trochu pití, šátek, podepsaný 1 díl ešusu, podepsanou lžíci a podepsaný hrníček* (poslední 3 věci v zavázaném sáčku – vybereme na místě srazu). Děti pojedou k táboru vlakem (a pár kilometrů pěšky), zavazadla přepravíme zvlášť dodávkou.
  ],

  "NA SRAZU JE NUTNÉ:":	[
    1. být včas, ne však příliš brzy (9:45 je akorát)
    2. předat *označená zavazadla* vedoucím u dodávky
    3. předat sáček s *podepsaným ešusem, lžící a hrníčkem* vedoucím u dodávky
    4. odevzdat průkaz zdravotní pojišťovny a případné *léky* + případné *zdravotní informace* zdravotníkovi
    5. podepsat *Prohlášení o bezinfekčnosti* (budeme mít vytištěné).
  ],
  
  "UKONČENÍ TÁBORA:": [
    *v sobotu 13. 7. 2024 mezi 9:00 a 10:00* (do 9 hodin máme snídani) *na táboře v Železných Horkách* (#link("https://mapy.cz/s/kupumapoge")[49.6286222N, 15.7330169E]). *Přijeďte si, prosím, pro své děti autem.* Vedoucí zůstávají na táboře, protože následuje úklid a předání tábora dalšímu běhu. 
  ],
  
  "NÁVŠTĚVY RODIČŮ:": [
    *POUZE v sobotu 6. 7. 2024 od 9:00 do 12:00.* Návštěvy mimo tento termín (i v sobotu odpoledne) bohužel narušují běh tábora, a proto je neumožňujeme. Pokud Vaše dítě bude něco potřebovat, zavoláme Vám. *Doporučujeme přijet ve sportovním oblečení.* Prosíme, nevozte dětem žádné netrvanlivé potraviny či velké množství sladkostí. Sobotní oběd mají děti standardně zajištěn! Ochutnávka Vašeho kulinářského umění (buchty, koláče, ...) ale vždy potěší děti, vedoucí i návštěvníky tábora.
  ],
  
  "JÍDLO:":	[
    na táboře je zajištěna *vydatná strava* 5x denně. Pití (čaj, šťáva, voda) je k dispozici neustále. *Začíná se již nedělním obědem, končí se sobotní snídaní.* Nedávejte tedy dětem žádné potraviny, které podléhají rychlé zkáze. Ve stanech naložených takovými zásobami se hromadí hmyz (mouchy, vosy, mravenci) a hlodavci (myši, hraboši). V případě, že dítěti zabalíte nějaké trvanlivé dobroty, uložte je do pevného neprodyšného obalu (krabičky).
  ],
  
  "POJIŠTĚNÍ:": [
    všichni účastníci tábora jsou hromadně pojištěni úrazovým pojištěním.
  ]
))

#v(1em)
V průběhu tábora budeme mít dostupné vždy alespoň jedno z našich telefonních čísel:

*Michal “Mini” Freiwald*, hlavní vedoucího, *tel: 775 244 262* \
*Jonáš „Sony“ Rosecký*, zástupce vedoucího tábora, *tel: 730 585 427* \
*Jan „Honzys“ Stratil*, hospodář tábora, *tel: 777 047 087* \
*Pavlína “Pajda” Bratránková*, zástupkyně hospodáře tábora \
*Petr “Big” Glajc*, zdravotník, *tel: 733 702 548* \
*David “Heri” Novotný*, zdravotník, *tel: 731 33 195* \
*Lenka „Léňa“ Pokorná*, kuchařka, *tel: 608 100 654* \


#pagebreak()

#title("Vybavení na Tábor 2024")

Vaše dítě bude na táboře 14 dní neustále v kontaktu s přírodou. Doporučujeme tedy vhodný výběr a množství oblečení a výbavy. Níže je uveden seznam *povinné výbavy*, kterou musí Vaše dítě na tábor *bezpodmínečně mít*. Ostatní necháváme dle Vašeho uvážení, jelikož Vy znáte nejlépe potřeby Vašeho dítěte. Doporučené věci jsou však uvedeny z mnohaleté táborové zkušenosti. 

Věci zabalte *do nižšího* (cca 25 cm) kufru nebo do *krabice od banánů*, zde jsou přehledněji uloženy a vejdou se pod postel. Vřele doporučujeme zapojit do procesu balení *Vaše dítě*. Dítě má poté větší přehled, co vše s sebou (ne)veze v kufru. \
*Všechna zavazadla, prosím, označte jménem dítěte. *

*Nedávejte* dětem cenné předměty a větší obnosy peněz. Stan není vhodný pro uschování elektroniky. *Za případnou ztrátu neručíme!* Cennosti lze uložit do úschovy k vedoucím a poskytovat je na vyžádání. 

*Mobilní telefony* výrazně nedoporučujeme na tábor brát. Na táboře *není možnost jejich nabíjení*.

#v(0.5em)
#align(center, heading("Seznam NUTNÝCH věcí na tábor:", depth: 2))

#columns(2, gutter: 1em, [
-	teplý spací pytel (případně 2x) a karimatka
-	teplé oblečení na spaní (chladné noci)
-	oblečení na 14 dní dle potřeby
-	pláštěnka
-	prodyšný (látkový) sáček na špinavé prádlo
-	třídílný ešus (nebo 2 misky na jídlo), lžíce v obalu, hrnek, utěrka
-	batůžek na výlety, do kterého se vejde láhev na pití (1–1,5 litru), svačina a pláštěnka (NE s jedním popruhem přes rameno)
-	láhev na pití (1 až 1,5 litru)
-	pevné boty na pěší výlety (prošlápnuté!)
-	sportovní obuv (starší, ale funkční)
-	gumové holínky
-	sandály
#colbreak()
-	plavky
-	ostrý kapesní nůž, KPZ
-	šátek, baterka + náhradní baterie, píšťalka
-	2-3 ručníky (nejlépe tmavé), mýdlo
-	kartáček v obalu, pasta, kelímek na vodu (jiný, než hrníček na pití)
-	toaletní papír – 1 role
-	pružné obinadlo
-	zápisník a tužka
-	repelent (prostředek proti hmyzu)
-	sluneční brýle, UV krém, kšiltovka
-	tematický kostým
-	boty do potoka (nebo staré cvičky, bačkory, Crocsy…)
])

#align(center, heading("Seznam doporučených věcí na tábor: ", depth: 2))

#columns(2, gutter: 1em, [
-	deka
-	tmavé nebo maskáčové oblečení
-	tmavé ponožky a spodní prádlo
-	tmavá trička s dlouhým rukávem
-	tmavá trička s krátkým rukávem
-	teplá košile a teplá mikina
-	tepláková souprava do přírody
-	starší dlouhé kalhoty, krátké kalhoty
-	teplý svetr
-	deštník pro přecházení po táboře (starší)
-	nepromokavá větrovka (nenahrazuje pláštěnku!),
#colbreak()
-	kapesníky, šití, asi 5 m motouzu
-	prací prostředek a kolíčky na prádlo
-	šampon, hřeben, houbička na mytí
-	pastelky, obálky s adresami a nalepenými známkami
-	kniha na čtení, drobné hry
-	kapesné (asi 100,- Kč v drobných)
-	kapsář na zavěšení do stanu
-	Duhový zpěvník – najdete na az.duha.cz 
-	Zpěvníky Já, písnička
-	hudební nástroj, tamburínky, chrastítka
-	pokud máte, herní karty z loňského tábor 
])

#v(0.5em)
Dále vřele doporučujeme označit všechny věci, které se označit dají. Jedná se hlavně o *ešusy, lžíce, hrníčky, nožíky, kartáčky, ručníky, baterky, deštníky, pláštěnky; boty, ponožky, spodní prádlo, trička* atd. Každý den nám to ušetří hledání majitelů věcí ze ztrát a nálezů.