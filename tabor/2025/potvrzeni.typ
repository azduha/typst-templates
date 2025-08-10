#import "../../template.typ": *
#import "./_data.typ": *

#let data = json(bytes(sys.inputs.at("data", default: "{
  \"jmeno\": \"Tora\",
  \"prijmeni\": \"Švomová\",
  \"datum_narozeni\": \"2015-03-10\",
  \"datum_uhrazeni\": \"2025-06-13\",
  \"datum\": \"2025-08-06\"
}")))

#show: duha.with(
  title:"Potvrzení o účasti a úhradě organizovaného pobytu",
  author: "Duha AZ"
)

#title("Potvrzení o účasti", subtitle: "a úhradě organizovaného pobytu")

#credentials(fields: (
  "Typ pobytu": [letnı́ sportovně pohybový tábor],
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

#v(3em)

#separator()

#v(2em)

#form([ 
  #heading("Informace o pojištěnci")
  #field("Jméno a příjmení:", to: 55%, content: optional(data, "jmeno") + " " + optional(data, "prijmeni"))
  #field("Datum narození:", content: format-datetime(optional(data, "datum_narozeni")))

  #field("Výše úhrady:", to: 40%, content: optional(tabor, "cenaCislo"))
  #field("Datum úhrady:", content: format-datetime(optional(data, "datum_uhrazeni")))

  
  #v(13em)

  #separator()

  #v(2em)

  #text([
    Potvrzuji, že se uvedený pojištěnec zúčastnil organizovaného pobytu, který proběhl v termínu #tabor.at("od") - #tabor.at("do").

    Potvrzuji, že výše uvedený pojištěnec uhradil #tabor.at("cenaCislo") za účast na tomto pobytu.

    Potvrzuji, že výdaje nebyly uhrazeny ze zdrojů jiné osoby (např. zaměstnavatele).
  ])

  #v(2em)

  #heading("Organizátor akce")
  #field("Datum:", to: 40%, content: format-datetime(optional(data, "datum")))
  #field("Podpis:", content: {
    sign("tabor/2025/razitko.png")
    h(1em)
    sign("tabor/2025/podpis.png")
  })

  #v(3em)

  #heading("Pojištěnec, nebo zákonný zástupce")
  #field("Datum:", to: 40%)
  #field("Podpis:")
])