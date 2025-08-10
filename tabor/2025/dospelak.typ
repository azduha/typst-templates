#import "../../template.typ": *
#import "./_data.typ": *

#let dospelak(data) = [
  #title("Závazná přihláška dospěláka", subtitle: "na letní dětský tábor Duha AZ")

  #credentials(fields: (
    "Organizátor:": [
      Duha Alternativní Zóna (dále jen Duha AZ) \
      \1. máje 325/1, 591 01 Žďár nad Sázavou \
      IČO: 670 24 629, \
      registrace: VSP/1 – 3086/90 R ze dne 28. 2. 1990
    ],
    "Místo:": [
      táborová základna Údolí Slunce poblíž Železných Horek
    ],
    "Termín:": tabor.at("od") + " - " + tabor.at("do"),
  ))

  #v(1em)

  #form([
    #field("Jméno a příjmení:", to: 65%, content: optional(data, "jmeno") + " " + optional(data, "prijmeni"))
    #field("Přezdívka:", content: optional(data, "prezdivka"))
    
    #field("Datum narození:", to: 50%, content: optional(data, "datum_narozeni"))
    #field("Telefon:", content: format-phone(optional(data, "telefon")))
    
    #field("Bydliště:", content: optional(data, "bydliste"))
    
    #field("Číslo OP:", to: 40%, content: optional(data, "op"))
    #field("Zdravotní pojišťovna:", content: optional(data, "zp"))
    
    #options("Vlastním platnou průkazku zdravotní pojišťovny?", options: (
      "ANO": 90%,
      "NE": 100%
    ), selected: if optional(data, "jmeno").len() > 0 {"ANO"})
    
    #field("Zaměstnání:", to: 40%, content: optional(data, "zamestani"))
    #field("Zaměstnavatel:", content: optional(data, "zamestnavatel"))
    
    #field("Funkce na táboře:", content: optional(data, "funkce"))
    
    #options("Mám platný kurz zdravotníka podle vyhlášky 106/2001 Sb.", options: (
      "ANO": 90%,
      "NE": 100%
    ), selected: ("NE", "ANO", "").at(data.at("kurz_zdravotnik", default: 2)))
    
    #options("Mám platný kurz hlavního vedoucího akreditovaný MŠMT?", options: (
      "ANO": 90%,
      "NE": 100%
    ), selected: ("NE", "ANO", "").at(data.at("kurz_hvt", default: 2)))

    #options("Vlastním řidičský průkaz?", options: (
      "ANO, ale nechci řídit": 80%,
      "ANO": 90%,
      "NE": 100%
    ), selected: ("NE", "ANO", "ANO, ale nechci řídit", "").at(data.at("ridicsky_prukaz", default: 3)))
  ])

  #v(1em)

  #field("Datum:", to: 40%, content: format-datetime(optional(data, "datum")))
  #field("Podpis:")

  #v(4em)

  #separator()

  #v(3em)

  #title("Prohlášení o bezinfekčnosti", subtitle: "písemné prohlášení ne starší jednoho dne před začátkem tábora")

  #field("Jméno a příjmení:", to: 60%, content: optional(data, "jmeno") + " " + optional(data, "prijmeni"))
  #field("Datum narození:", content: optional(data, "datum_narozeni"))

  Prohlašuji, že jsem úplně zdráv/zdráva a nepociťuji známky akutního onemocnění (např. horečky nebo průjmu). Dále prohlašuji, že v předešlých 14 kalendářních dnech jsem nepřišel/nepřišla do styku s fyzickou osobou nemocnou infekčním onemocněním nebo podezřelou z nákazy. Také prohlašuji, že okresní hygienik ani ošetřující lékař mi nenařídil karanténní opatření, zvýšený zdravotní dozor nebo lékařský dohled.

  Jsem si vědom/vědoma právních i finančních důsledků, které by pro mne vyplynuly, kdyby z nepravdivých údajů tohoto prohlášení vzniklo zdravotní ohrožení táborového kolektivu.

  #field("Datum:", to: 40%, content: format-datetime(optional(data, "bezinfekcnost_datum")))
  #field("Podpis:")


  #page({}, header: {}) // To be able to print double-sided

  #let smlouva() = [
    #v(1em)

    #heading("I. Smluvní strany")
    Duha AZ, 1. máje 325/1, 591 01 Žďár nad Sázavou, IČO 670 24 629, zastoupená Jonášem Roseckým, hlavním vedoucím tábora, rodné číslo 990124/5222, bytem Luční 1151/8, Žďár nad Sázavou, 591 01
    (dále jen Duha AZ) a

    #field("", to: 50%, content: optional(data, "jmeno") + " " + optional(data, "prijmeni"))
    #field("datum narození", content: optional(data, "datum_narozeni"))

    #field("Bytem", to: 75%, content: optional(data, "bydliste")) (dále jen dobrovolník),

    Uzavírají podle § 2430 a násl. Zákona č. 89/2012 Sb., občanský zákoník, v platném znění,

    #v(0.8em)
    #align(center, title("PŘÍKAZNÍ SMLOUVU"))

    #heading("II. Druh práce")
    #field("Funkční zařazení na táboře:", content: optional(data, "funkce"))

    #field("Místo výkonu práce:", content: if optional(data, "jmeno").len() > 0 { "Tábořiště Železné Horky" })

    #field("V termínu od", to: 55%, content: if optional(data, "tabor_od").len() > 0 {
      format-datetime(optional(data, "tabor_od"))
    })
    #field("do", content: if optional(data, "tabor_do").len() > 0 {
      format-datetime(optional(data, "tabor_do"))
    })

    #par([
    Další ujednání:	V rámci plnění svých povinností se bude dobrovolník pohybovat i mimo vyhrazené tábořiště, bude používat různé prostředky hromadné dopravy a vykonávat další činnosti běžně spojené s pobytem na táboře. Součástí je i předtáborová příprava, stavění a bourání tábora, balení věcí a potáborový úklid.
    ], hanging-indent: 6.4em)

    #v(0.8em)
    #heading("III. Podmínky dohody")
    #heading("A. Povinnosti dobrovolníka", level: 2)

    1. Dobrovolník se zavazuje, že sjednané činnosti bude vykonávat osobně.
    2. Dobrovolník se zavazuje konat svěřenou práci řádně, svědomitě podle svých schopností a znalostí a bez přímé finanční odměny. Dále se zavazuje dodržovat obecně závazné právní a hygienické normy, dbát na bezpečnostní a morální pravidla u sebe i u ostatních.
    3. Dobrovolník se bude řídit pokyny nadřízených, zejména dle pokynů hlavního vedoucího a jím pověřených osob, jimž zodpovídá za výkon funkce a plnění úkolů, a vnitřními předpisy tábora. Pro svou práci se předem připraví podle svého funkčního zařazení.
    4. Dobrovolník se zavazuje nesnížit svoji schopnost výkonu svěřené práce požitím alkoholu nebo jiných omamných látek či dlouhým bděním.
    5. Dobrovolník je povinen řádně pečovat o svěřený majetek a po skončení činnosti jej řádně vrátit. Dobrovolník odpovídá za škodu, kterou způsobil svým zaviněním nebo nedbalostí. Byla-li škoda způsobena také zaviněním Duhy AZ, nese Duha AZ škodu poměrně.
    6. Dobrovolník bere na vědomí, že organizace může uplatnit nárok na náhradu škody způsobené svévolným porušením povinností dobrovolníka nebo nedodržením podmínek této smlouvy.
    7. Dobrovolník se zavazuje svým jednáním, které souvisí s činností Duhy AZ, nepoškozovat dobré jméno Duhy AZ.
    8. Dobrovolník se zavazuje pracovat pro rozvoj Duhy AZ a naplňovat poslání Duhy AZ.

    #pagebreak()

    #heading("B. Povinnosti organizace", level: 2)

    1. Duha AZ odpovídá za zajištění podmínek pro práci dobrovolníka \ v táboře v míře, která je požadována zejména vyhláškou č. 106/2001 Sb. \ O hygienických požadavcích na zotavovací akce pro děti.
    2. Duha AZ poskytne dle svých možností dobrovolníkovi prostředky nezbytné k vykonávání sjednané činnosti a adekvátní prostor pro odpočinek a osobní volno.
    3. Duha AZ uhradí za dobrovolníka stravu a ubytování. Případné další nároky na úhradu nákladů spojených s prací dobrovolníka je nutné předem konzultovat s Duhou AZ.
    4. Duha AZ seznámí před uzavřením dohody dobrovolníka s jeho právy a povinnostmi z ní vyplývajících, s vnitřními předpisy tábora, zdravotními a bezpečnostními předpisy a zásadami poskytování první pomoci.
    5. Duha AZ odpovídá dobrovolníkovi za škodu, která mu byla způsobena v souvislosti s výkonem sjednaných činností. Byla-li škoda způsobena také zaviněním dobrovolníka, nese dobrovolník škodu poměrně.

    #heading("IV. Prohlášení")
    1. Dobrovolník prohlašuje, že prošel stanoveným lékařským vyšetřením způsobilosti pro práci s dětmi a mládeží, jehož potvrzení předal Duze AZ společně s potvrzením o bezinfekčnosti.
    2. Dobrovolník prohlašuje, že byl proškolen ze zásad bezpečnosti práce a požární ochrany a ze zásad poskytování první pomoci.

    #heading("V. Obecná a závěrečná ujednání")
    1. Nestanoví-li tato dohoda jinak, řídí se právní vztahy z ní vyplývající Občanským zákoníkem.
    2. Tato dohoda může být měněna a doplňována pouze se souhlasem obou smluvních stran písemnými dodatky.
    3. Smlouva je sepsána ve dvou vyhotoveních, z nichž každá strana obdrží jednu kopii.
    4. Tato dohoda se uzavírá na dobu určitou do #tabor.at("do") včetně. Z důvodů zachování kontinuity programů Duhy AZ je tato smlouva pro obě smluvní strany vázána minimálně 14-ti denní výpovědní lhůtou. Toto ustanovení neruší právo hlavního vedoucího tábora odvolat v odůvodněných případech dobrovolníka z tábora (např. při svévolném porušení povinností dobrovolníka nebo nedodržení podmínek této smlouvy nebo pokud další pobyt není možný např. z výchovných důvodů).
    5. Dobrovolník může tuto dohodu zrušit, pokud nemůže svěřenou funkci a činnosti spojené s ní vykonávat např. ze zdravotních důvodů nebo jiných závažných příčin, a to písemně nebo po vzájemné dohodě.
    6. Tato smlouva nabývá účinnosti dnem podpisu.

    #v(3em)

    #field("Podpis dobrovolníka", to: 55%)
    #field(", za Duhu AZ ", content: sign("tabor/2025/podpis.png"))

    #field("Dne", to: 40%, content: format-datetime(optional(data, "datum")))
    #field("v(e)", content: if optional(data, "jmeno").len() > 0 { "Žďáře nad Sázavou" })
  ]

  #smlouva()
  #pagebreak()
  #smlouva()
]