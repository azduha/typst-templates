#import "../template.typ": *

#let data = json.decode(sys.inputs.at("data", default: "{}"))

#show: duha.with(
  title:"Závazná přihláška dítěte",
  author: "Duha AZ"
)

#title("Závazná přihláška dítěte", subtitle: "na letní dětský tábor Duha AZ")

#v(-0.3em)

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
  "Termín:": [
    \30. 6. 2024 - 13. 7. 2024
  ],
  "Cena tábora:": [
    4 100 Kč pro členy Duhy AZ, 4 500 Kč pro nečleny Duhy AZ
  ]
))

#v(0.3em)

#let imagecontent = {
  if (type(optional(data, "fotka")) == str and optional(data, "fotka").len() > 0) {
    // Cannot place image from online, this is for now
    image(width: 100.1%, height: 100.1%, fit: "cover", optional(data, "fotka"))
  } else {
    [
      Fotografie dı́těte
      #par(text(
        [
          jakákoli aktuálnı́, \
          sloužı́ ke zkvalitněnı́ \
          práce vedoucı́ch, \
          seznámı́ se s podobou \
          dı́těte již před \
          začátkem tábora
        ],
        size: 0.8em,
      ), leading: 0.4em)
    ]
  }
}

#place(top + right, box(
  align(center + horizon, imagecontent),
  width: 105pt,
  height: 140pt,
  stroke: (
    paint: black,
    thickness: 0.8pt
  ),
), dy: 38%)

#place(top + right, {
  if (data.at("rok-tabora", default: 0) + data.at("prihlaska_id", default: 0) > 0) {
    // Pad prihlaska_id to 2 digits
    let id = str(data.at("prihlaska_id"))
    while (id.len() < 2) {
      id = "0" + id
    }
    text("ID-" + str(data.at("rok_tabora")) + "-" + id, weight: "bold", fill: fillColor)
  }
}, dx: 0.8cm, dy: 1.6cm)

#form([ 
  #heading("Základní údaje o účastníkovi")
  #field("Jméno a příjmení:", to: 55%, content: optional(data, "jmeno") + " " + optional(data, "prijmeni"))
  #field("Přezdívka / oslovení:", content: optional(data, "prezdivka"))

  #field("Bydliště:", to: 60%, content: optional(data, "bydliste"))
  #field("Škola:", content: optional(data, "skola"))
  
  #field("Datum narození:", to: 35%, content: format-datetime(optional(data, "datum_narozeni")))
  #field("Zdravotní pojišťovna:", to: 75%, content: optional(data, "zp"))
  #field("Třída:", content: optional(data, "trida"))
  
  #heading("Další důležité údaje")
  #options("Je účastnı́k v současnosti členem Duhy AZ?", options: (
    "ANO": 64%,
    "NE": 74%
  ), selected: ("NE", "ANO", "").at(data.at("clen", default: 2)))
  
  #options("Je plavec (uplave alespoň 25 m)?", options: (
    "ANO": 64%,
    "NE": 74%
  ), selected: ("NE", "ANO", "").at(data.at("plavec", default: 2)))
  
  #field("Kolikrát byl(a) již na táboře (jakémkoliv):", to: 74%, content: str(optional(data, "tabor")) + (if str(optional(data, "tabor")).len() > 0 {" krát"}))
  
  #field("Stan by chtěl(a) sdı́let s:", to: 74%, content: optional(data, "stan"))  

  #field("Je nějaké jídlo, které nemůže jíst:", to: 74%, content: optional(data, "jidlo"))  

  #field("Dalšı́ důležitá (např. zdravotnı́) sdělenı́:", to: 74%, lines: 1, content: optional(data, "oznameni"))
  
  #heading("Kontaktní údaje")
  Kontakt s rodiči pro komunikaci v obdobı́ před táborem (vyplň te alespoň jeden řádek):
  
  #field("Jméno matky:", to: 40%, content: optional(data, "jmeno_matky"))
  #field("Telefon:", to: 64%, content: format-phone(optional(data, "telefon_matky")))
  #field("Email:", content: optional(data, "email_matky"))

  #field("Jméno otce:", to: 40%, content: optional(data, "jmeno_otce"))
  #field("Telefon:", to: 64%, content: format-phone(optional(data, "telefon_otce")))
  #field("Email:", content: optional(data, "email_otce"))

  #field("Zaměstnavatel (v přı́padě poskytnutı́ finančnı́ho přı́spěvku):", content: optional(data, "zamestnavatel"))

  #v(0.6em)
  
  Kontakt na zákonného zástupce dosažitelného v době konánı́ tábora:
  
  #field("Jméno:", to: 40%, content: optional(data, "kontakt_jmeno"))
  #field("Telefon:", to: 64%, content: format-phone(optional(data, "kontakt_telefon")))
  #field("Poznámka:")

  #heading("Ujednání")
  #text([
    Souhlası́m, aby se naše dı́tě zúčastnilo letnı́ho tábora organizace Duha AZ od 30. 6. do 13. 7. 2024.
    Zároveň souhlası́m s převzetı́m odpovědnosti za přı́padné škody způsobené dı́tětem.
    
    Udı́lı́m souhlas k tomu, aby vedenı́ tábora shromažďovalo, zpracovávalo a archivovalo uvedené osobnı́ údaje pro potřeby
    tábora a po dobu nezbytně nutnou (stanovenou zákonem). Osobnı́ údaje budou chráněny proti zneužitı́ a nebudou poskytnuty třetı́m stranám. Souhlası́m (i dı́tě souhlası́) s fotografovánı́m a pořizovánı́m audiovizuálnı́ho záznamu dı́těte v rámci činnosti, s archivacı́
    těchto materiálů a s jejich použitı́m při prezentaci a propagaci činnosti, např. v kronikách, tisku, na internetu atp.
    
    Také potvrzuji úplnost a pravdivost výše uvedených údajů.
  ], size: 0.9em)

  #v(0.6em)

  #field("Datum:", to: 40%, content: format-datetime(optional(data, "datum")))
  #field("Podpis:")
])


#pagebreak()


#title("Posudek o zdravotní způsobilosti", subtitle: "dítěte k účasti na zotavovací akci a škole v přírodě")

#v(-0.5em)

#form([
  #field("Evidenční číslo posudku:")
  
  #heading("1. Identifikační údaje")
  
  #field("Jméno a příjmení posuzovaného dítěte:", to: 70%, content: optional(data, "jmeno") + " " + optional(data, "prijmeni"))
  #field("Narození:", content: format-datetime(optional(data, "datum_narozeni")))
  
  #field("Adresa mı́sta trvalého pobytu nebo jiného bydliště na územı́ ČR posuzovaného dı́těte:", newline: true, content: optional(data, "bydliste"))
  
  #field("Název poskytovatele zdravotních služeb vydávajícího posudek:")
  
  #field("Adresa sı́dla nebo mı́sta podnikánı́ poskytovatele:", lines: 2, lastLineTo: 70%)
  #field("IČO:")
  
  #field(heading("2. Účel vydání posudku: "))
  
  #heading("3. Posudkový závěr")
  #v(-0.5em)
  #[
    #set par(first-line-indent: 1em)
    #heading([
      A) Posuzované dítě k účasti na zotavovací akci nebo škole v přírodě
      #super("1, 2")
    ], level: 2)
    #[
      #set par(first-line-indent: 2em, hanging-indent: 2.5em)
    
      a) je zdravotně způsobilé
      #h(20%)
      b) nenı́ zdravotně způsobilé
      #v(-0.3em)
      #field("c) je zdravotně způsobilé s omezenı́m:")
      #v(0.3em)
      #par(text(size: 0.9em, [
        #super("1") Nehodící se škrtněte
        #v(-0.4em)
        #super("2") Bylo-li zjištěno, že posuzované dı́tě je zdravotně způsobilé s omezenı́m, uvede se omezenı́ podmiňujı́cı́ zdravotní způsobilost k účasti na letnı́m táboře, zotavovacı́ akci a škole v přı́rodě
      ]))
    ]
  
    #heading([
      B) Potvrzení o tom, že dítě
    ], level: 2)
    #[
      #set par(first-line-indent: 2em, hanging-indent: 2.5em)
    
      #options("a) se podrobilo stanoveným pravidelným očkovánı́m:", options: (
        "ANO": 90%,
        "NE": 100%
      ))
      
      #field("b) je proti nákaze imunní (typ/druh):")
      
      #field("c) má trvalou kontraindikaci proti očkování (typ/druh):")
  
      #field("d) je alergické na:")
  
      #field("e) dlouhodobě užívá léky (typ/druh, dávka):")
    ]
  ]
  
  #heading("4. Poučení")
  
  #text([
      Proti bodu 3. části A) tohoto posudku je možné podat podle ustanovení § 46 odst. 1 zákona č. 373/2011 Sb., o specifických zdravotních službách, ve znění pozdějších předpisů, podat návrh na jeho přezkoumání do 10 pracovních dnů ode dne jeho prokazatelného předání poskytovatelem zdravotních služeb, který posudek vydal. Návrh na přezkoumání lékařského posudku nemá odkladný účinek, jestliže z jeho závěru vyplývá, že posuzovaná osoba je pro účel, pro nějž byla posuzována, zdravotně nezpůsobilá nebo zdravotně způsobilá s podmínkou.
    ], size: 0.8em)
  
  #heading("5. Oprávněná osoba")
  
  #field("Jméno a příjmení oprávněné osoby:")
  
  #options("Vztah k posuzovanému dítěti:", options: (
    "Zákonný zástupce": 54%,
    "Opatrovník": 70%,
    "Pěstoun": 83%,
    "Jiný: ______": 100%
  ))
  #text("")

  #place(top + left, signature(length: 40%, [Datum vydání posudku]), dy: 87%)

  #place(top + right, signature(length: 40%, [
    Jméno, přı́jmenı́ a podpis lékaře,\
    razı́tko poskytovatele zdravotnı́ch služby
  ]), dx: 0%, dy: 87%)

    #place(top + left, signature(length: 40%, [
    Oprávněná osoba převzala posudek \
    do vlastních rukou dne
  ]), dy: 95%)
  
  #place(top + right, signature(length: 40%, [Podpis oprávněné osoby]), dy: 95%)
])