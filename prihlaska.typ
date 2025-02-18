#import "./template.typ": *

#let data = json.decode(sys.inputs.at("data", default: "{}"))

#show: duha.with(
  title:"Přihláška do Duhy AZ",
  author: "Duha AZ"
)

#title("Přihláška do Duhy AZ")

#v(-2em)

_Duha Alternativní Zóna (dále jen Duha AZ) \
\1. máje 325/1, 591 01 Žďár nad Sázavou \
IČO: 670 24 629, \
registrace: VSP/1 – 3086/90 R ze dne 28. 2. 1990_

#v(1em)

Vážení členové Duhy AZ, \
prosíme o pečlivé vyplnění osobních údajů. \
Děkujeme za spolupráci.

David Novotný, \
Hlavní vedoucí Duhy AZ

#v(2em)

#form([ 
  #heading("Základní údaje o členovi")
  #field("Jméno a příjmení:", to: 55%, content: optional(data, "jmeno") + " " + optional(data, "prijmeni"))
  #field("Přezdívka / oslovení:", content: optional(data, "prezdivka"))

  #field("Bydliště:", to: 55%, content: optional(data, "bydliste"))  
  #field("Datum narození:", content: format-datetime(optional(data, "datum_narozeni")))

  #field("Email dítěte:", to: 55%, content: optional(data, "email"))
  #field("Telefon dítěte:", content: optional(data, "telefon"))

  #field("Dalšı́ důležitá (např. zdravotnı́) sdělenı́:", lines: 3, content: optional(data, "oznameni"))
  
  #v(2em)
  #heading("Údaje o zákonných zástupcích")
    
  #field("Jméno:", content: optional(data, "jmeno_matky"))

  #field("Telefon:", to: 40%, content: format-phone(optional(data, "telefon_matky")))
  #field("Email:", content: optional(data, "email_matky"))

  #v(1em)

  #field("Jméno:", content: optional(data, "jmeno_otce"))

  #field("Telefon:", to: 40%, content: format-phone(optional(data, "telefon_otce")))
  #field("Email:", content: optional(data, "email_otce"))

  #v(5em)

  Udı́lı́m souhlas k tomu, aby vedenı́ Duhy AZ shromažďovalo, zpracovávalo a archivovalo uvedené osobnı́ údaje pro potřeby oddílu a po dobu nezbytně nutnou (stanovenou zákonem). Osobnı́ údaje budou chráněny proti zneužitı́ a nebudou poskytnuty třetı́m stranám. Souhlası́m (i dı́tě souhlası́) s fotografovánı́m a pořizovánı́m audiovizuálnı́ho záznamu dı́těte v rámci činnosti, s archivacı́
  těchto materiálů a s jejich použitı́m při prezentaci a propagaci činnosti, např. v kronikách, tisku, na internetu atp.

  Zároveň se zavazujeme dodržovat vnitřní pravidla organizace, včetně platby členského příspěvku.
    
  Také potvrzuji úplnost a pravdivost výše uvedených údajů.

  #v(3em)

  #field("Datum:", to: 40%, content: format-datetime(optional(data, "datum")))
  #field("Podpis:")
])