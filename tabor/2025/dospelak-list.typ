#import "./dospelak.typ": *
#import "./_data.typ": *

#let data = csv("./vedouci.csv", row-type: dictionary);

#show: duha.with(
    title:"Závazná přihláška dospěláka",
    author: "Duha AZ"
)

#let povoleneRole = (
    "Zástupce HVT": "Zástupce hlavního vedoucího",
    "HVT": "Hlavní vedoucí tábora",
    "Zdravotník": "Zdravotník",
    "Hospodář": "Hospodář",
)

#let mapRole(funkce) = {
    // Check if the role contains a valid key
    let role = povoleneRole.keys().find(key => {
        return funkce.contains(key)
    })
    if (role != none) {
        return povoleneRole.at(role)
    } else {
        return "Vedoucí"
    }
}

#let mapTrueFalse(value) = {
    if (value == "TRUE") {
        return 1
    } else {
        return 0
    }
}

#let mapRidicPrukaz(value) = {
    if (value == "Mám a jsem ochotný řídit") {
        return 1
    } else if (value == "Mám, ale nechci řídit") {
        return 2
    } else {
        return 0
    }
}

#let mapDatum(value) = {
    if (value == "") {
        return ""
    } else {
        // Format DD.MM. to YYYY-MM-DD
        let parts = value.split(".")
        let year = tabor.at("rok")
        // Pad the day and month with leading zeros
        let day = parts.at(0)
        let month = parts.at(1)
        if (day.len() == 1) {
            day = "0" + day
        }
        if (month.len() == 1) {
            month = "0" + month
        }
        return year + "-" + month + "-" + day
    }
}

#let mapDatumFull(value) = {
    if (value == "") {
        return ""
    } else {
        // Format DD.MM. to YYYY-MM-DD
        let parts = value.split(". ")
        // Pad the day and month with leading zeros
        let day = parts.at(0)
        let month = parts.at(1)
        let year = parts.at(2)
        if (day.len() == 1) {
            day = "0" + day
        }
        if (month.len() == 1) {
            month = "0" + month
        }

        return year + "-" + month + "-" + day
    }
}

#let mapped = data.map(row => (
    jmeno: row.at("Jméno"),
    prijmeni: row.at("Příjmení"),
    prezdivka: row.at("Přezdívka"),
    datum_narozeni: row.at("Narození"),
    bydliste: row.at("Bydliště"),
    telefon: row.at("Telefon").replace("\u{a0}", ""),
    funkce: mapRole(row.at("Role")),
    kurz_zdravotnik: mapTrueFalse(row.at("Zdravotník")),
    kurz_hvt: mapTrueFalse(row.at("HVT")),
    ridicsky_prukaz: mapRidicPrukaz(row.at("Řidičský průkaz")),
    vedouci: mapTrueFalse(row.at("Ofiko vedoucí")),
    tabor_od: mapDatum(row.at("Nástup")),
    tabor_do: mapDatum(row.at("Odjezd")),
    datum: datetime.today().display("[year]-[month]-[day]"),
    bezinfekcnost_datum: mapDatumFull(tabor.at("od")),
))

// Foreach over the data show: dospelak.with(row)
#while mapped.len() > 0 {
    let row = mapped.at(0)
    let mapped = mapped.remove(0)
    if (row.at("vedouci") == 1) {
        page({
            dospelak(row)
        })
    }
}