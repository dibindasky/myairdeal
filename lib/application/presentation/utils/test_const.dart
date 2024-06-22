const String searchCode = 'code';
const String searchName = 'name';
const String searchCityCode = 'citycode';
const String searchcity = 'city';
const String searchCountry = 'country';
const String searchCountryCode = 'countrycode';

const List<Map<String, String>> searchAirport = <Map<String, String>>[
  {
    "code": "BAN",
    "name": "Basongo Airport",
    "citycode": "BAN",
    "city": "Basongo, Democratic Republic of the Congo",
    "country": "",
    "countrycode": "CG"
  },
  {
    "code": "KDH",
    "name": "Kandahar International Airport",
    "citycode": "KDH",
    "city": "Kandahar, Afghanistan",
    "country": "Afghanistan",
    "countrycode": "AF"
  },
  {
    "code": "MZR",
    "name": "Mazar I Sharif Arpt",
    "citycode": "MZR",
    "city": "Mazar I Sharif",
    "country": "Afghanistan",
    "countrycode": "AF"
  },
  {
    "code": "KBL",
    "name": "Khwaja Rawash Arpt",
    "citycode": "KBL",
    "city": "Kabul",
    "country": "Afghanistan",
    "countrycode": "AF"
  },
  {
    "code": "FBD",
    "name": "Faizabad Arpt",
    "citycode": "FBD",
    "city": "Faizabad",
    "country": "Afghanistan",
    "countrycode": "AF"
  },
  {
    "code": "HEA",
    "name": "Herat Arpt",
    "citycode": "HEA",
    "city": "Herat",
    "country": "Afghanistan",
    "countrycode": "AF"
  },
  {
    "code": "TIA",
    "name": "Rinas Arpt",
    "citycode": "TIA",
    "city": "Tirana",
    "country": "Albania",
    "countrycode": "AL"
  },
  {
    "code": "BJA",
    "name": "Bejaia Arpt",
    "citycode": "BJA",
    "city": "Bejaia",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "BLJ",
    "name": "Batna Arpt",
    "citycode": "BLJ",
    "city": "Batna",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "AAE",
    "name": "Les Salines Arpt",
    "citycode": "AAE",
    "city": "Annaba",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "ALG",
    "name": "Houari Boumedienne Arpt",
    "citycode": "ALG",
    "city": "Algiers",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "INF",
    "name": "In Guezzam Airport",
    "citycode": "INF",
    "city": "In Guezzam",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "ORN",
    "name": "Es Senia",
    "citycode": "ORN",
    "city": "Oran",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "TLM",
    "name": "Zenata Messali El Hadj Airport",
    "citycode": "TLM",
    "city": "Tlemcen",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "QSF",
    "name": "Setif Arpt",
    "citycode": "QSF",
    "city": "Setif",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "CZL",
    "name": "Ain El Bey Arpt",
    "citycode": "CZL",
    "city": "Constantine",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "GHA",
    "name": "Noumerate Arpt",
    "citycode": "GHA",
    "city": "Ghardaia",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "CFK",
    "name": "Chlef Arpt",
    "citycode": "CFK",
    "city": "Chlef",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "BSK",
    "name": "Biskra Arpt",
    "citycode": "BSK",
    "city": "Biskra",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "TAF",
    "name": "Tafaraoui Arpt",
    "citycode": "ORN",
    "city": "Oran",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "HME",
    "name": "Oued Irara Arpt",
    "citycode": "HME",
    "city": "Hassi Messaoud",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "VVZ",
    "name": "Takhamalt Arpt",
    "citycode": "VVZ",
    "city": "Illizi",
    "country": "Algeria",
    "countrycode": "DZ"
  },
  {
    "code": "PPG",
    "name": "Pago Pago Arpt",
    "citycode": "PPG",
    "city": "Pago Pago",
    "country": "American Samoa",
    "countrycode": "AS"
  },
  {
    "code": "ALV",
    "name": "Andorra La Vella Hlpt",
    "citycode": "ALV",
    "city": "Andorra La Vella",
    "country": "Andorra",
    "countrycode": "AD"
  },
  {
    "code": "SDD",
    "name": "Mukanka Airport",
    "citycode": "SDD",
    "city": "Lubango",
    "country": "Angola",
    "countrycode": "AO"
  },
  {
    "code": "LAD",
    "name": "Four De Fevereiro Arpt",
    "citycode": "LAD",
    "city": "Luanda",
    "country": "Angola",
    "countrycode": "AO"
  },
  {
    "code": "AXA",
    "name": "Wallblake Municipal",
    "citycode": "AXA",
    "city": "Anguilla",
    "country": "Anguilla",
    "countrycode": "AI"
  },
  {
    "code": "ANU",
    "name": "V C Bird Intl Arpt",
    "citycode": "ANU",
    "city": "Antigua",
    "country": "Antigua and Barbuda",
    "countrycode": "AG"
  },
  {
    "code": "IGR",
    "name": "Iguazu Intl",
    "citycode": "IGR",
    "city": "Iguazu",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "VME",
    "name": "Villa Mercedes Arpt",
    "citycode": "VME",
    "city": "Villa Mercedes",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "SFN",
    "name": "Santa Fe Arpt",
    "citycode": "SFN",
    "city": "Santa Fe",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "RSA",
    "name": "Santa Rosa Arpt",
    "citycode": "RSA",
    "city": "Santa Rosa",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "SDE",
    "name": "Santiago Des Estero Arpt",
    "citycode": "SDE",
    "city": "Santiago Del Estero",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "TDL",
    "name": "Tandil Arpt",
    "citycode": "TDL",
    "city": "Tandil",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "REL",
    "name": "Trelew Arpt",
    "citycode": "REL",
    "city": "Trelew",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "BHI",
    "name": "Commandante Airport",
    "citycode": "BHI",
    "city": "Bahia Blanca",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "AEP",
    "name": "Jorge Newbery",
    "citycode": "BUE",
    "city": "Buenos Aires",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "EZE",
    "name": "Ministro Pistarini",
    "citycode": "BUE",
    "city": "Buenos Aires",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "CTC",
    "name": "Choya Arpt",
    "citycode": "CTC",
    "city": "Catamarca",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "CPC",
    "name": "Chapelco Arpt",
    "citycode": "CPC",
    "city": "Chapelco",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "CRD",
    "name": "Comodoro Rivadavia Arpt",
    "citycode": "CRD",
    "city": "Comodoro Rivadavia",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "COC",
    "name": "Concordia Arpt",
    "citycode": "COC",
    "city": "Concordia",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "COR",
    "name": "Pajas Blanco Arpt",
    "citycode": "COR",
    "city": "Cordoba",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "CNQ",
    "name": "Camba Punta Arpt",
    "citycode": "CNQ",
    "city": "Corrientes",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "EHL",
    "name": "El Bolson Arpt",
    "citycode": "EHL",
    "city": "El Bolson",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "FTE",
    "name": "El Calafate Arpt",
    "citycode": "FTE",
    "city": "El Calafate",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "EQS",
    "name": "Esquel Airport",
    "citycode": "EQS",
    "city": "Esquel",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "VDM",
    "name": "Viedma Arpt",
    "citycode": "VDM",
    "city": "Viedma",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "VLG",
    "name": "Villa Gesell Arpt",
    "citycode": "VLG",
    "city": "Villa Gesell",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "FMA",
    "name": "El Pucu Arpt",
    "citycode": "FMA",
    "city": "Formosa",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "RGA",
    "name": "Rio Grande Arpt",
    "citycode": "RGA",
    "city": "Rio Grande",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "ROS",
    "name": "Fisherton Airport",
    "citycode": "ROS",
    "city": "Rosario",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "SLA",
    "name": "General Belgrano Intl Arpt",
    "citycode": "SLA",
    "city": "Salta",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "BRC",
    "name": "San Carlos De Bariloche Intl Arpt",
    "citycode": "BRC",
    "city": "San Carlos Bariloche",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "UAQ",
    "name": "San Juan Arpt",
    "citycode": "UAQ",
    "city": "San Juan",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "LUQ",
    "name": "San Luis Cty Arpt",
    "citycode": "LUQ",
    "city": "San Luis",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "AFA",
    "name": "San Rafael Arpt",
    "citycode": "AFA",
    "city": "San Rafael",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "RGL",
    "name": "Rio Gallegos Internacional Arpt",
    "citycode": "RGL",
    "city": "Rio Gallegos",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "RCU",
    "name": "Rio Cuarto Arpt",
    "citycode": "RCU",
    "city": "Rio Cuarto",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "RES",
    "name": "Resistencia Arpt",
    "citycode": "RES",
    "city": "Resistencia",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "PMY",
    "name": "El Tehuelche Arpt",
    "citycode": "PMY",
    "city": "Puerto Madryn",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "PSS",
    "name": "Posadas Arpt",
    "citycode": "PSS",
    "city": "Posadas",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "AOL",
    "name": "Paso De Los Libres Arpt",
    "citycode": "AOL",
    "city": "Paso De Los Libres",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "PRA",
    "name": "Parana Arpt",
    "citycode": "PRA",
    "city": "Parana",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "NQN",
    "name": "Neuquen Airport",
    "citycode": "NQN",
    "city": "Neuquen",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "MJR",
    "name": "Miramar Arpt",
    "citycode": "MJR",
    "city": "Miramar",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "MDZ",
    "name": "El Plumerillo Airport",
    "citycode": "MDZ",
    "city": "Mendoza",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "MDQ",
    "name": "Mar Del Plata Arpt",
    "citycode": "MDQ",
    "city": "Mar Del Plata",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "IRJ",
    "name": "La Rioja Arpt",
    "citycode": "IRJ",
    "city": "La Rioja",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "LPG",
    "name": "La Plata Arpt",
    "citycode": "LPG",
    "city": "La Plata",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "OYO",
    "name": "Tres Arroyos Arpt",
    "citycode": "OYO",
    "city": "Tres Arroyos",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "JUJ",
    "name": "El Cadillal Airport",
    "citycode": "JUJ",
    "city": "Jujuy",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "TUC",
    "name": "Benjamin Matienzo Airport",
    "citycode": "TUC",
    "city": "Tucuman",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "USH",
    "name": "Islas Malvinas Arpt",
    "citycode": "USH",
    "city": "Ushuaia",
    "country": "Argentina",
    "countrycode": "AR"
  },
  {
    "code": "EVN",
    "name": "Yerevan Arpt",
    "citycode": "EVN",
    "city": "Yerevan",
    "country": "Armenia",
    "countrycode": "AM"
  },
  {
    "code": "AUA",
    "name": "Reina Beatrix Arpt",
    "citycode": "AUA",
    "city": "Aruba",
    "country": "Aruba",
    "countrycode": "AW"
  },
  {
    "code": "DMD",
    "name": "Doomadgee Arpt",
    "citycode": "DMD",
    "city": "Doomadgee",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DBO",
    "name": "Dubbo Arpt",
    "citycode": "DBO",
    "city": "Dubbo",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DKI",
    "name": "Dunk Island Arpt",
    "citycode": "DKI",
    "city": "Dunk Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ECH",
    "name": "Echuca Arpt",
    "citycode": "ECH",
    "city": "Echuca",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "EDR",
    "name": "Edward River Arpt",
    "citycode": "EDR",
    "city": "Edward River",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "EMD",
    "name": "Emerald Arpt",
    "citycode": "EMD",
    "city": "Emerald",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "EPR",
    "name": "Esperance Arpt",
    "citycode": "EPR",
    "city": "Esperance",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "EXM",
    "name": "Exmouth Gulf",
    "citycode": "EXM",
    "city": "Exmouth Gulf",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "FLC",
    "name": "Falls Creek Arpt",
    "citycode": "FLC",
    "city": "Falls Creek",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "FOT",
    "name": "Forster",
    "citycode": "FOT",
    "city": "Forster",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "JFM",
    "name": "Fremantle Heliport",
    "citycode": "JFM",
    "city": "Fremantle",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GEX",
    "name": "Geelong Arpt",
    "citycode": "GEX",
    "city": "Geelong",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GET",
    "name": "Geraldton Arpt",
    "citycode": "GET",
    "city": "Geraldton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GLT",
    "name": "Gladstone Airport",
    "citycode": "GLT",
    "city": "Gladstone",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GLI",
    "name": "Glen Innes Arpt",
    "citycode": "GLI",
    "city": "Glen Innes",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GOO",
    "name": "Goondiwindi Arpt",
    "citycode": "GOO",
    "city": "Goondiwindi",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GOS",
    "name": "Gosford Airport",
    "citycode": "GOS",
    "city": "Gosford",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GOV",
    "name": "Nhulunbuy Arpt",
    "citycode": "GOV",
    "city": "Gove",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GFN",
    "name": "Grafton Arpt",
    "citycode": "GFN",
    "city": "Grafton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GFF",
    "name": "Griffith Arpt",
    "citycode": "GFF",
    "city": "Griffith",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GTE",
    "name": "Alyangula Arpt",
    "citycode": "GTE",
    "city": "Groote Eylandt",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GUH",
    "name": "Gunnedah Airport",
    "citycode": "GUH",
    "city": "Gunnedah",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GYP",
    "name": "Gympie Arpt",
    "citycode": "GYP",
    "city": "Gympie",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HCQ",
    "name": "Halls Creek Arpt",
    "citycode": "HCQ",
    "city": "Halls Creek",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HTI",
    "name": "Hamilton Island Arpt",
    "citycode": "HTI",
    "city": "Hamilton Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HIS",
    "name": "Hayman Island Arpt",
    "citycode": "HIS",
    "city": "Hayman Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HVB",
    "name": "Hervey Bay",
    "citycode": "HVB",
    "city": "Hervey Bay",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HID",
    "name": "Horn Island Arpt",
    "citycode": "HID",
    "city": "Horn Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HGD",
    "name": "Hughenden Arpt",
    "citycode": "HGD",
    "city": "Hughenden",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "IGH",
    "name": "Ingham Arpt",
    "citycode": "IGH",
    "city": "Ingham",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "INJ",
    "name": "Injune Airport",
    "citycode": "INJ",
    "city": "Injune",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "IVR",
    "name": "Inverell Arpt",
    "citycode": "IVR",
    "city": "Inverell",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "JAB",
    "name": "Jabiru Arpt",
    "citycode": "JAB",
    "city": "Jabiru",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "JCK",
    "name": "Julia Creek Arpt",
    "citycode": "JCK",
    "city": "Julia Creek",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KGI",
    "name": "Kalgoorlie Arpt",
    "citycode": "KGI",
    "city": "Kalgoorlie",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KTA",
    "name": "Karratha Airport",
    "citycode": "KTA",
    "city": "Karratha",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KRB",
    "name": "Karumba Arpt",
    "citycode": "KRB",
    "city": "Karumba",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KTR",
    "name": "Tindal Airport",
    "citycode": "KTR",
    "city": "Katherine",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KPS",
    "name": "Kempsey Arpt",
    "citycode": "KPS",
    "city": "Kempsey",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KNS",
    "name": "King Island Arpt",
    "citycode": "KNS",
    "city": "King Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KBJ",
    "name": "Kings Canyon Arpt",
    "citycode": "KBJ",
    "city": "Kings Canyon",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KGC",
    "name": "Kingscote Arpt",
    "citycode": "KGC",
    "city": "Kingscote",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KNX",
    "name": "Kununurra Airport",
    "citycode": "KNX",
    "city": "Kununurra",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LST",
    "name": "Launceston Arpt",
    "citycode": "LST",
    "city": "Launceston",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LVO",
    "name": "Laverton Airport",
    "citycode": "LVO",
    "city": "Laverton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LEA",
    "name": "Learmonth Arpt",
    "citycode": "LEA",
    "city": "Learmonth",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "QLE",
    "name": "Leeton Arpt",
    "citycode": "QLE",
    "city": "Leeton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LER",
    "name": "Leinster Arpt",
    "citycode": "LER",
    "city": "Leinster",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LNO",
    "name": "Leonora Arpt",
    "citycode": "LNO",
    "city": "Leonora",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LHG",
    "name": "Lightning Ridge Arpt",
    "citycode": "LHG",
    "city": "Lightning Ridge",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LSY",
    "name": "Lismore Airport",
    "citycode": "LSY",
    "city": "Lismore",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LZR",
    "name": "Lizard Island Arpt",
    "citycode": "LZR",
    "city": "Lizard Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "IRG",
    "name": "Lockhart River Arpt",
    "citycode": "IRG",
    "city": "Lockhart",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HAP",
    "name": "Long Island Arpt",
    "citycode": "HAP",
    "city": "Long Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LRE",
    "name": "Longreach Arpt",
    "citycode": "LRE",
    "city": "Longreach",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LDH",
    "name": "Lord Howe Island Arpt",
    "citycode": "LDH",
    "city": "Lord Howe Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MKY",
    "name": "Mackay Arpt",
    "citycode": "MKY",
    "city": "Mackay",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MTL",
    "name": "Maitland Airport",
    "citycode": "MTL",
    "city": "Maitland",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MQZ",
    "name": "Margaret River Arpt",
    "citycode": "MQZ",
    "city": "Margaret River",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MGV",
    "name": "Margaret River Station Arpt",
    "citycode": "MGV",
    "city": "Margaret River Station",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MCY",
    "name": "Maroochydore Arpt",
    "citycode": "MCY",
    "city": "Maroochydore",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MBH",
    "name": "Maryborough Arpt",
    "citycode": "MBH",
    "city": "Maryborough",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MCV",
    "name": "McArthur River Arpt",
    "citycode": "MCV",
    "city": "McArthur River",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MKR",
    "name": "Meekatharra Arpt",
    "citycode": "MKR",
    "city": "Meekathara",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MEB",
    "name": "Essendon Arpt",
    "citycode": "MEL",
    "city": "Melbourne",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KAH",
    "name": "City Heliport",
    "citycode": "MEL",
    "city": "Melbourne",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MIM",
    "name": "Merimbula Arpt",
    "citycode": "MIM",
    "city": "Merimbula",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MMM",
    "name": "Middlemount Arpt",
    "citycode": "MMM",
    "city": "Middlemount",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MQL",
    "name": "Mildura Arpt",
    "citycode": "MQL",
    "city": "Mildura",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MJK",
    "name": "Shark Bay Arpt",
    "citycode": "MJK",
    "city": "Monkey Mia",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MNQ",
    "name": "Monto Arpt",
    "citycode": "MNQ",
    "city": "Monto",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MBW",
    "name": "Moorabbin Arpt",
    "citycode": "MBW",
    "city": "Moorabbin",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MOV",
    "name": "Moranbah Arpt",
    "citycode": "MOV",
    "city": "Moranbah",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MRZ",
    "name": "Moree Arpt",
    "citycode": "MRZ",
    "city": "Moree",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ONG",
    "name": "Mornington Arpt",
    "citycode": "ONG",
    "city": "Mornington",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MYA",
    "name": "Moruya Arpt",
    "citycode": "MYA",
    "city": "Moruya",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MHU",
    "name": "Mount Hotham Arpt",
    "citycode": "MHU",
    "city": "Mount Hotham",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ISA",
    "name": "Mount Isa Arpt",
    "citycode": "ISA",
    "city": "Mount Isa",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MMG",
    "name": "Mount Magnet Arpt",
    "citycode": "MMG",
    "city": "Mount Magnet",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MGB",
    "name": "Mount Gambier Arpt",
    "citycode": "MGB",
    "city": "Mt Gambier",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DGE",
    "name": "Mudgee Arpt",
    "citycode": "DGE",
    "city": "Mudgee",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NAC",
    "name": "Naracoorte Arpt",
    "citycode": "NAC",
    "city": "Naracoorte",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NAA",
    "name": "Narrabri Arpt",
    "citycode": "NAA",
    "city": "Narrabri",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NRA",
    "name": "Narrandera Arpt",
    "citycode": "NRA",
    "city": "Narrandera",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BEO",
    "name": "Belmont Arpt",
    "citycode": "NTL",
    "city": "Newcastle",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NTL",
    "name": "Williamtown Arpt",
    "citycode": "NTL",
    "city": "Newcastle",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ZNE",
    "name": "Newman Airport",
    "citycode": "ZNE",
    "city": "Newman",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NSA",
    "name": "Noosa Airport",
    "citycode": "NSA",
    "city": "Noosa",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NTN",
    "name": "Normanton Arpt",
    "citycode": "NTN",
    "city": "Normanton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NSM",
    "name": "Norseman Arpt",
    "citycode": "NSM",
    "city": "Norseman",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NOA",
    "name": "Nowra Arpt",
    "citycode": "NOA",
    "city": "Nowra",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NUR",
    "name": "Nullarbor Arpt",
    "citycode": "NUR",
    "city": "Nullarbor",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NYN",
    "name": "Nyngan Arpt",
    "citycode": "NYN",
    "city": "Nyngan",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "OLP",
    "name": "Olympic Dam Arpt",
    "citycode": "OLP",
    "city": "Olympic Dam",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "OAG",
    "name": "Springhill Arpt",
    "citycode": "OAG",
    "city": "Orange",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ORS",
    "name": "Waterport Arpt",
    "citycode": "ORS",
    "city": "Orpheus Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PMK",
    "name": "Palm Island Arpt",
    "citycode": "PMK",
    "city": "Palm Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PBO",
    "name": "Paraburdoo Arpt",
    "citycode": "PBO",
    "city": "Paraburdoo",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PKE",
    "name": "Parkes Arpt",
    "citycode": "PKE",
    "city": "Parkes",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PUG",
    "name": "Port Augusta Arpt",
    "citycode": "PUG",
    "city": "Port Augusta",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PTI",
    "name": "Port Douglas Arpt",
    "citycode": "PTI",
    "city": "Port Douglas",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PHE",
    "name": "Port Hedland Arpt",
    "citycode": "PHE",
    "city": "Port Hedland",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PLO",
    "name": "Port Lincoln Arpt",
    "citycode": "PLO",
    "city": "Port Lincoln",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PPI",
    "name": "Port Porie Arpt",
    "citycode": "PPI",
    "city": "Port Pirie",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PTJ",
    "name": "Portland Arpt",
    "citycode": "PTJ",
    "city": "Portland",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PPP",
    "name": "Whitsunday Coast Arpt",
    "citycode": "PPP",
    "city": "Proserpine",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PQQ",
    "name": "Port Macquarie Arpt",
    "citycode": "PQQ",
    "city": "Pt Macquarie",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "UEE",
    "name": "Queenstown Arpt",
    "citycode": "UEE",
    "city": "Queenstown",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ULP",
    "name": "Quilpie Arpt",
    "citycode": "ULP",
    "city": "Quilpie",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "UIR",
    "name": "Quirindi Arpt",
    "citycode": "UIR",
    "city": "Quirindi",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "RVT",
    "name": "Ravensthorpe Arpt",
    "citycode": "RVT",
    "city": "Ravensthorpe",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "RMK",
    "name": "Renmark Airport",
    "citycode": "RMK",
    "city": "Renmark",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "RCM",
    "name": "Richmond Arpt",
    "citycode": "RCM",
    "city": "Richmond",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ROK",
    "name": "Rockhampton Arpt",
    "citycode": "ROK",
    "city": "Rockhampton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "RMA",
    "name": "Roma Arpt",
    "citycode": "RMA",
    "city": "Roma",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "RTS",
    "name": "Rottnest Island Arpt",
    "citycode": "RTS",
    "city": "Rottnest",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SXE",
    "name": "Sale Arpt",
    "citycode": "SXE",
    "city": "Sale",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NSO",
    "name": "Scone Airport",
    "citycode": "NSO",
    "city": "Scone",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SHT",
    "name": "Shepparton",
    "citycode": "SHT",
    "city": "Shepparton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "JHQ",
    "name": "Shute Harbour Heliport",
    "citycode": "JHQ",
    "city": "Shute Hrb",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SIX",
    "name": "Singleton Arpt",
    "citycode": "SIX",
    "city": "Singleton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SOI",
    "name": "South Molle Island Arpt",
    "citycode": "SOI",
    "city": "South Molle",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SGO",
    "name": "St George Arpt",
    "citycode": "SGO",
    "city": "St George",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HLS",
    "name": "St Helens Arpt",
    "citycode": "HLS",
    "city": "St Helens",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SNH",
    "name": "Stanthorpe",
    "citycode": "SNH",
    "city": "Stanthorpe",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SRN",
    "name": "Strahan Arpt",
    "citycode": "SRN",
    "city": "Strahan",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SWH",
    "name": "Swan Hill Arpt",
    "citycode": "SWH",
    "city": "Swan Hill",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SWZ",
    "name": "Sydney West",
    "citycode": "SYD",
    "city": "Sydney",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "LBH",
    "name": "Palm Beach Arpt",
    "citycode": "SYD",
    "city": "Sydney",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CBM",
    "name": "Columbus Airforce Base",
    "citycode": "SYD",
    "city": "Sydney",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ZZZ",
    "name": "Sydney Kingsford Smiht Arpt",
    "citycode": "SYD",
    "city": "Sydney",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "RSE",
    "name": "Au Rose Bay Arpt",
    "citycode": "SYD",
    "city": "Sydney",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TMW",
    "name": "Tamworth Arpt",
    "citycode": "TMW",
    "city": "Tamworth",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TRO",
    "name": "Taree Arpt",
    "citycode": "TRO",
    "city": "Taree",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TCA",
    "name": "Tennant Creek Arpt",
    "citycode": "TCA",
    "city": "Tennant Creek",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "THG",
    "name": "Thangool Arpt",
    "citycode": "THG",
    "city": "Thangool",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "XTG",
    "name": "Thargomindah Arpt",
    "citycode": "XTG",
    "city": "Thargomindah",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TIS",
    "name": "Thursday Island Arpt",
    "citycode": "TIS",
    "city": "Thursday Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TCW",
    "name": "Tocumwal Arpt",
    "citycode": "TCW",
    "city": "Tocumwal",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TPR",
    "name": "Tom Price",
    "citycode": "TPR",
    "city": "Tom Price",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TWB",
    "name": "Toowoomba Arpt",
    "citycode": "TWB",
    "city": "Toowoomba",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TSV",
    "name": "Townsville Arpt",
    "citycode": "TSV",
    "city": "Townsville",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "TGN",
    "name": "La Trobe Traralgon Arpt",
    "citycode": "TGN",
    "city": "Traralgon",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "USL",
    "name": "Useless Loop Arpt",
    "citycode": "USL",
    "city": "Useless Loop",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WGA",
    "name": "Forrest Hill Arpt",
    "citycode": "WGA",
    "city": "Wagga Wagga",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WGE",
    "name": "Walgett Arpt",
    "citycode": "WGE",
    "city": "Walgett",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WGT",
    "name": "Wangaratta",
    "citycode": "WGT",
    "city": "Wangaratta",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WAZ",
    "name": "Warwick Arpt",
    "citycode": "WAZ",
    "city": "Warwick",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WEW",
    "name": "Wee Waa Airport",
    "citycode": "WEW",
    "city": "Wee Waa",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WEI",
    "name": "Weipa Arpt",
    "citycode": "WEI",
    "city": "Weipa",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WHL",
    "name": "Welshpool Arpt",
    "citycode": "WHL",
    "city": "Welshpool",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WYA",
    "name": "Whyalla Arpt",
    "citycode": "WYA",
    "city": "Whyalla",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WUN",
    "name": "Wiluna Arpt",
    "citycode": "WUN",
    "city": "Wiluna",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WNR",
    "name": "Windorah Arpt",
    "citycode": "WNR",
    "city": "Windorah",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WOL",
    "name": "Wollongong Arpt",
    "citycode": "WOL",
    "city": "Wollongong",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WYN",
    "name": "Wyndham Arpt",
    "citycode": "WYN",
    "city": "Wyndham",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "XMY",
    "name": "Yam Island Arpt",
    "citycode": "XMY",
    "city": "Yam Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "YNN",
    "name": "Yandi Arpt",
    "citycode": "YNN",
    "city": "Yandicoogina",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "NGA",
    "name": "Young Arpt",
    "citycode": "NGA",
    "city": "Young",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "PER",
    "name": "Perth Arpt",
    "citycode": "PER",
    "city": "Perth",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "OOL",
    "name": "Gold Coast Arpt",
    "citycode": "OOL",
    "city": "Gold Coast",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "MEL",
    "name": "Tullamarine Arpt",
    "citycode": "MEL",
    "city": "Melbourne",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "HBA",
    "name": "Hobart International Arpt",
    "citycode": "HBA",
    "city": "Hobart",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DRW",
    "name": "Darwin Airport",
    "citycode": "DRW",
    "city": "Darwin",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KOL",
    "name": "Koumala Airport",
    "citycode": "KOL",
    "city": "East Mackay",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KOH",
    "name": "Koolatah Airport",
    "citycode": "KOH",
    "city": "Maramie",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WTB",
    "name": "Brisbane West Wellcamp Airport",
    "citycode": "WTB",
    "city": "Wellcamp",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "XHX",
    "name": "Adelaide Keswick Rail Station",
    "citycode": "ADL",
    "city": "Adelaide",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "WSY",
    "name": "Whitsunday Airstrip",
    "citycode": "WSY",
    "city": "Airlie Beach",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ALH",
    "name": "Albany Airport",
    "citycode": "ALH",
    "city": "Albany",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ABX",
    "name": "Albury Airport",
    "citycode": "ABX",
    "city": "Albury",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "XHW",
    "name": "Alice Springs Railway Station",
    "citycode": "ASP",
    "city": "Alice Springs",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ASP",
    "name": "Alice Springs Arpt",
    "citycode": "ASP",
    "city": "Alice Springs",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ARY",
    "name": "Ararat Arpt",
    "citycode": "ARY",
    "city": "Ararat",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ARM",
    "name": "Armidale Arpt",
    "citycode": "ARM",
    "city": "Armidale",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "AUU",
    "name": "Aurukin Arpt",
    "citycode": "AUU",
    "city": "Aurukun Mission",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "AYQ",
    "name": "Connellan Arpt",
    "citycode": "AYQ",
    "city": "Ayers Rock",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "AYR",
    "name": "Ayr Arpt",
    "citycode": "AYR",
    "city": "Ayr Au",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BDD",
    "name": "Badu Island Arpt",
    "citycode": "BDD",
    "city": "Badu Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BSJ",
    "name": "Bairnsdale Airport",
    "citycode": "BSJ",
    "city": "Bairnsdale",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BNK",
    "name": "Ballina Arpt",
    "citycode": "BNK",
    "city": "Ballina",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ABM",
    "name": "Bamaga Arpt",
    "citycode": "ABM",
    "city": "Bamaga",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BWU",
    "name": "Bankstown Aerodrome",
    "citycode": "BWU",
    "city": "Bankstown",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BCI",
    "name": "Barcaldine Arpt",
    "citycode": "BCI",
    "city": "Barcaldine",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BHS",
    "name": "Raglan Airport",
    "citycode": "BHS",
    "city": "Bathurst",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BRT",
    "name": "Bathurst Island Arpt",
    "citycode": "BRT",
    "city": "Bathurst Isl",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BEU",
    "name": "Bedourie Arpt",
    "citycode": "BEU",
    "city": "Bedourie",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ZBL",
    "name": "Biloela Arpt",
    "citycode": "ZBL",
    "city": "Biloela",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BVI",
    "name": "Birdsville Arpt",
    "citycode": "BVI",
    "city": "Birdsville",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BKQ",
    "name": "Blackall Arpt",
    "citycode": "BKQ",
    "city": "Blackall",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BLT",
    "name": "Blackwater Arpt",
    "citycode": "BLT",
    "city": "Blackwater",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GIC",
    "name": "Boigu Island Arpt",
    "citycode": "GIC",
    "city": "Boigu Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BOX",
    "name": "Borroloola Arpt",
    "citycode": "BOX",
    "city": "Borroloola",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BQL",
    "name": "Boulia Arpt",
    "citycode": "BQL",
    "city": "Boulia",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BRK",
    "name": "Bourke Airport",
    "citycode": "BRK",
    "city": "Bourke",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BMP",
    "name": "Brampton Island Arpt",
    "citycode": "BMP",
    "city": "Brampton Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BWQ",
    "name": "Brewarrina Arpt",
    "citycode": "BWQ",
    "city": "Brewarrina",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BHQ",
    "name": "Broken Hill Arpt",
    "citycode": "BHQ",
    "city": "Broken Hill",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BME",
    "name": "Broome Airport",
    "citycode": "BME",
    "city": "Broome",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BUY",
    "name": "Bunbury Arpt",
    "citycode": "BUY",
    "city": "Bunbury",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BDB",
    "name": "Bundaberg Arpt",
    "citycode": "BDB",
    "city": "Bundaberg",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BUC",
    "name": "Burketown Arpt",
    "citycode": "BUC",
    "city": "Burketown",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BWT",
    "name": "Burnie Wynyard Arpt",
    "citycode": "BWT",
    "city": "Burnie",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BQB",
    "name": "Busselton Arpt",
    "citycode": "BQB",
    "city": "Busselton",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CBR",
    "name": "Canberra Arpt",
    "citycode": "CBR",
    "city": "Canberra",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CVQ",
    "name": "Carnarvon Arpt",
    "citycode": "CVQ",
    "city": "Carnarvon",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CSI",
    "name": "Casino Arpt",
    "citycode": "CSI",
    "city": "Casino",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CED",
    "name": "Ceduna Arpt",
    "citycode": "CED",
    "city": "Ceduna",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CES",
    "name": "Cessnock Arpt",
    "citycode": "CES",
    "city": "Cessnock",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CTL",
    "name": "Charleville Arpt",
    "citycode": "CTL",
    "city": "Charleville",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CMQ",
    "name": "Clermont Arpt",
    "citycode": "CMQ",
    "city": "Clermont",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "SYD",
    "name": "Kingsford Smith",
    "citycode": "SYD",
    "city": "Sydney",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CNJ",
    "name": "Cloncurry Arpt",
    "citycode": "CNJ",
    "city": "Cloncurry",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CAZ",
    "name": "Cobar Arpt",
    "citycode": "CAZ",
    "city": "Cobar",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CNC",
    "name": "Coconut Island Arpt",
    "citycode": "CNC",
    "city": "Coconut Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CUQ",
    "name": "Coen Arpt",
    "citycode": "CUQ",
    "city": "Coen",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CFS",
    "name": "Coffs Harbour Arpt",
    "citycode": "CFS",
    "city": "Coffs Harbour",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "XCO",
    "name": "Colac Arpt",
    "citycode": "XCO",
    "city": "Colac",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "KCE",
    "name": "Collinsville Arpt",
    "citycode": "KCE",
    "city": "Collinsville",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CPD",
    "name": "Coober Pedy Arpt",
    "citycode": "CPD",
    "city": "Coober Pedy",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CDA",
    "name": "Cooinda Airport",
    "citycode": "CDA",
    "city": "Cooinda",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CTN",
    "name": "Cooktown Arpt",
    "citycode": "CTN",
    "city": "Cooktown",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "OOM",
    "name": "Cooma Airport",
    "citycode": "OOM",
    "city": "Cooma",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "COJ",
    "name": "Coonabarabran Arpt",
    "citycode": "COJ",
    "city": "Coonabarabrn",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CNB",
    "name": "Coonamble Arpt",
    "citycode": "CNB",
    "city": "Coonamble",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CWW",
    "name": "COROWA ARPT",
    "citycode": "CWW",
    "city": "Corowa",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CWT",
    "name": "Cowra Arpt",
    "citycode": "CWT",
    "city": "Cowra",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CUG",
    "name": "Cudal Arpt",
    "citycode": "CUG",
    "city": "Cudal",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CMA",
    "name": "Cunnamulla Arpt",
    "citycode": "CMA",
    "city": "Cunnamulla",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DBY",
    "name": "Dalby",
    "citycode": "DBY",
    "city": "Dalby",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "XJG",
    "name": "Darwin Railway Station",
    "citycode": "DRW",
    "city": "Darwin",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DDI",
    "name": "Daydream Island Arpt",
    "citycode": "DDI",
    "city": "Daydream Island",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DNM",
    "name": "Denham Arpt",
    "citycode": "DNM",
    "city": "Denham",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DNQ",
    "name": "Denilinquin Arpt",
    "citycode": "DNQ",
    "city": "Deniliquin",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DRB",
    "name": "Derby Airport",
    "citycode": "DRB",
    "city": "Derby",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DCN",
    "name": "Curtain Arpt",
    "citycode": "DRB",
    "city": "Derby",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DPO",
    "name": "Devonport Arpt",
    "citycode": "DPO",
    "city": "Devonport",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DRN",
    "name": "Dirranbandi Arpt",
    "citycode": "DRN",
    "city": "Dirranbandi",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "DOX",
    "name": "Dongara",
    "citycode": "DOX",
    "city": "Dongara",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "CNS",
    "name": "Cairns Airport",
    "citycode": "CNS",
    "city": "Cairns",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "BNE",
    "name": "Brisbane Arpt",
    "citycode": "BNE",
    "city": "Brisbane",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "ADL",
    "name": "Adelaide Arpt",
    "citycode": "ADL",
    "city": "Adelaide",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "AVV",
    "name": "Avalon Arpt",
    "citycode": "MEL",
    "city": "Melbourne",
    "country": "Australia",
    "countrycode": "AU"
  },
  {
    "code": "GRZ",
    "name": "Thalerhof Arpt",
    "citycode": "GRZ",
    "city": "Graz",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "VDD",
    "name": "Vienna Danubepier Hov",
    "citycode": "VIE",
    "city": "Vienna",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "SZG",
    "name": "W A Mozart Arpt",
    "citycode": "SZG",
    "city": "Salzburg",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "INN",
    "name": "Kranebitten Airport",
    "citycode": "INN",
    "city": "Innsbruck",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "KLU",
    "name": "Klagenfurt Arpt",
    "citycode": "KLU",
    "city": "Klagenfurt",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "ZSB",
    "name": "Salzburg Railway Station",
    "citycode": "SZG",
    "city": "Salzburg",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "LNZ",
    "name": "Hoersching Arpt",
    "citycode": "LNZ",
    "city": "Linz",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "VIE",
    "name": "Vienna Intl Arpt",
    "citycode": "VIE",
    "city": "Vienna",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "HOH",
    "name": "Hohenems Airport",
    "citycode": "HOH",
    "city": "Hohenems",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "XWC",
    "name": "Suedbahnhof Railway Station",
    "citycode": "VIE",
    "city": "Vienna",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "XWW",
    "name": "Westbahnhof Railway Station",
    "citycode": "VIE",
    "city": "Vienna",
    "country": "Austria",
    "countrycode": "AT"
  },
  {
    "code": "GYD",
    "name": "Heydar Aliyev Intl Arpt",
    "citycode": "BAK",
    "city": "Baku",
    "country": "Azerbaijan",
    "countrycode": "AZ"
  },
  {
    "code": "BAK",
    "citycode": "BAK",
    "city": "Baku",
    "country": "Azerbaijan",
    "countrycode": "AZ"
  },
  {
    "code": "GBB",
    "name": "Qabala International Airport",
    "citycode": "GBB",
    "city": "Gabala",
    "country": "Azerbaijan",
    "countrycode": "AZ"
  },
  {
    "code": "LLK",
    "name": "Lankaran Intl Arpt",
    "citycode": "LLK",
    "city": "Lankaran",
    "country": "Azerbaijan",
    "countrycode": "AZ"
  },
  {
    "code": "KVD",
    "name": "Gyandzha Airport",
    "citycode": "KVD",
    "city": "Gyandzhan",
    "country": "Azerbaijan",
    "countrycode": "AZ"
  },
  {
    "code": "ZXT",
    "name": "Zabrat Arpt",
    "citycode": "BAK",
    "city": "Baku",
    "country": "Azerbaijan",
    "countrycode": "AZ"
  },
  {
    "code": "ATC",
    "name": "Arthurs Town Arpt",
    "citycode": "ATC",
    "city": "Arthurs Town",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "ASD",
    "name": "Andros Town Arpt",
    "citycode": "ASD",
    "city": "Andros Town",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "TCB",
    "name": "Treasure Cay Arpt",
    "citycode": "TCB",
    "city": "Treasure Cay",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "TZN",
    "name": "South Andros Arpt",
    "citycode": "TZN",
    "city": "South Andros",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "ZSA",
    "name": "San Salvador Arpt",
    "citycode": "ZSA",
    "city": "San Salvador",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "RSD",
    "name": "S Eleuthera Arpt",
    "citycode": "RSD",
    "city": "Rock Sound",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "ELH",
    "name": "North Eleuthera Intl",
    "citycode": "ELH",
    "city": "North Eleuthera",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "WZY",
    "name": "Seaplane Base Arpt",
    "citycode": "NAS",
    "city": "Nassau",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "NAS",
    "name": "Nassau Intl",
    "citycode": "NAS",
    "city": "Nassau",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "PID",
    "name": "Paradise Island Arpt",
    "citycode": "NAS",
    "city": "Nassau",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "MHH",
    "name": "Marsh Harbour Intl Arpt",
    "citycode": "MHH",
    "city": "Marsh Harbour",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "HBI",
    "name": "Harbour Island Arpt",
    "citycode": "HBI",
    "city": "Harbour Island",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "GHB",
    "name": "Governors Harbour Municipal Arpt",
    "citycode": "GHB",
    "city": "Governor S Harbour",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "GGT",
    "name": "George Town Airport",
    "citycode": "GGT",
    "city": "George Town",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "FPO",
    "name": "Grand Bahama Intl Arpt",
    "citycode": "FPO",
    "city": "Freeport",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "LGI",
    "name": "Deadmans Cay Arpt",
    "citycode": "LGI",
    "city": "Deadmans Cay",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "CRI",
    "name": "CROOKED ISLAND AIRPORT",
    "citycode": "CRI",
    "city": "Crooked Island",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "BIM",
    "name": "Bimini Airport",
    "citycode": "BIM",
    "city": "Bimini",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "NSB",
    "name": "North Seaplane Base",
    "citycode": "BIM",
    "city": "Bimini",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "SML",
    "name": "Stella Maris Arpt",
    "citycode": "SML",
    "city": "Stella Maris",
    "country": "Bahamas",
    "countrycode": "BS"
  },
  {
    "code": "BAH",
    "name": "Bahrain Intl Arpt",
    "citycode": "BAH",
    "city": "Muharraq",
    "country": "Bahrain",
    "countrycode": "BH"
  },
  {
    "code": "GBQ",
    "name": "Muharraq Arpt",
    "citycode": "GBQ",
    "city": "Muharraq Town",
    "country": "Bahrain",
    "countrycode": "BH"
  },
  {
    "code": "CGP",
    "name": "Patenga Arpt",
    "citycode": "CGP",
    "city": "Chittagong",
    "country": "Bangladesh",
    "countrycode": "BD"
  },
  {
    "code": "CXB",
    "name": "Coxs Bazar",
    "citycode": "CXB",
    "city": "Coxs Bazar",
    "country": "Bangladesh",
    "countrycode": "BD"
  },
  {
    "code": "ZYL",
    "name": "Sylhet Osmany Arpt",
    "citycode": "ZYL",
    "city": "Sylhet",
    "country": "Bangladesh",
    "countrycode": "BD"
  },
  {
    "code": "DAC",
    "name": "Hazrat Shahjalal Intl Arpt",
    "citycode": "DAC",
    "city": "Dhaka",
    "country": "Bangladesh",
    "countrycode": "BD"
  },
  {
    "code": "SPD",
    "name": "Saidpur Airport",
    "citycode": "SPD",
    "city": "Saidpur",
    "country": "Bangladesh",
    "countrycode": "BD"
  },
  {
    "code": "BGI",
    "name": "Grantley Adams Intl Arpt",
    "citycode": "BGI",
    "city": "Bridgetown",
    "country": "Barbados",
    "countrycode": "BB"
  },
  {
    "code": "BQT",
    "name": "Brest Arpt",
    "citycode": "BQT",
    "city": "Brest",
    "country": "Belarus",
    "countrycode": "BY"
  },
  {
    "code": "GME",
    "name": "Gomel Arpt",
    "citycode": "GME",
    "city": "Gomel",
    "country": "Belarus",
    "countrycode": "BY"
  },
  {
    "code": "GNA",
    "name": "Grodna Arpt",
    "citycode": "GNA",
    "city": "Grodna",
    "country": "Belarus",
    "countrycode": "BY"
  },
  {
    "code": "MHP",
    "name": "Minsk Intl 1",
    "citycode": "MSQ",
    "city": "Minsk",
    "country": "Belarus",
    "countrycode": "BY"
  },
  {
    "code": "MSQ",
    "name": "Minsk Intl 2",
    "citycode": "MSQ",
    "city": "Minsk",
    "country": "Belarus",
    "countrycode": "BY"
  },
  {
    "code": "MVQ",
    "name": "Mogilev Arpt",
    "citycode": "MVQ",
    "city": "Mogilev",
    "country": "Belarus",
    "countrycode": "BY"
  },
  {
    "code": "VTB",
    "name": "Vitebsk Arpt",
    "citycode": "VTB",
    "city": "Vitebsk",
    "country": "Belarus",
    "countrycode": "BY"
  },
  {
    "code": "KJK",
    "name": "Kortrijk Arpt",
    "citycode": "KJK",
    "city": "Kortrijk",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "LGG",
    "name": "Bierset Airport",
    "citycode": "LGG",
    "city": "Liege",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "XHN",
    "name": "Guillemins Railway Station",
    "citycode": "LGG",
    "city": "Liege",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "OST",
    "name": "Ostend Airport",
    "citycode": "OST",
    "city": "Ostende",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "BRU",
    "name": "Brussels National Arpt",
    "citycode": "BRU",
    "city": "Brussels",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "ANR",
    "name": "Antwerp Brussels North",
    "citycode": "ANR",
    "city": "Antwerp",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "ZYR",
    "name": "Midi Railway Station",
    "citycode": "BRU",
    "city": "Brussels",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "ZYO",
    "name": "Roosendaal Rail Station",
    "citycode": "BRU",
    "city": "Brussels",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "ZYZ",
    "name": "Antwerp Berchem Rail Station",
    "citycode": "BRU",
    "city": "Brussels",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "CRL",
    "name": "Brussels South Charleroi Arpt",
    "citycode": "BRU",
    "city": "Brussels",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "ZWE",
    "name": "Antwerp Central Railway Stn",
    "citycode": "BRU",
    "city": "Brussels",
    "country": "Belgium",
    "countrycode": "BE"
  },
  {
    "code": "TZA",
    "name": "Belize City Municipal",
    "citycode": "BZE",
    "city": "Belize City",
    "country": "Belize",
    "countrycode": "BZ"
  },
  {
    "code": "PLJ",
    "name": "Placencia Arpt",
    "citycode": "PLJ",
    "city": "Placencia",
    "country": "Belize",
    "countrycode": "BZ"
  },
  {
    "code": "SPR",
    "name": "San Pedro Arpt",
    "citycode": "SPR",
    "city": "San Pedro",
    "country": "Belize",
    "countrycode": "BZ"
  },
  {
    "code": "BZE",
    "name": "Belize Intl Arpt",
    "citycode": "BZE",
    "city": "Belize City",
    "country": "Belize",
    "countrycode": "BZ"
  },
  {
    "code": "COO",
    "name": "Cotonou Airport",
    "citycode": "COO",
    "city": "Cotonou",
    "country": "Benin",
    "countrycode": "BJ"
  },
  {
    "code": "NWU",
    "name": "Bermuda Naval Air Station",
    "citycode": "BDA",
    "city": "Bermuda",
    "country": "Bermuda",
    "countrycode": "BM"
  },
  {
    "code": "BDA",
    "name": "Bermuda International",
    "citycode": "BDA",
    "city": "Bermuda",
    "country": "Bermuda",
    "countrycode": "BM"
  },
  {
    "code": "PBH",
    "name": "Paro Arpt",
    "citycode": "PBH",
    "city": "Paro",
    "country": "Bhutan",
    "countrycode": "BT"
  },
  {
    "code": "SRE",
    "name": "Sucre Arpt",
    "citycode": "SRE",
    "city": "Sucre",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "POI",
    "name": "Potosi Airport",
    "citycode": "POI",
    "city": "Potosi",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "MQK",
    "name": "San Matias Arpt",
    "citycode": "MQK",
    "city": "San Matias",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "CAM",
    "name": "Choreti Arpt",
    "citycode": "CAM",
    "city": "Camiri",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "TDD",
    "name": "Trinidad Arpt",
    "citycode": "TDD",
    "city": "Trinidad",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "TJA",
    "name": "Tarija Arpt",
    "citycode": "TJA",
    "city": "Tarija",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "LPB",
    "name": "El Alto Arpt",
    "citycode": "LPB",
    "city": "La Paz",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "VVI",
    "name": "Viru Viru Intl Arpt",
    "citycode": "SRZ",
    "city": "Santa Cruz",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "SRZ",
    "name": "El Trompillo Arpt",
    "citycode": "SRZ",
    "city": "Santa Cruz",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "CBB",
    "name": "J Wilsterman Arpt",
    "citycode": "CBB",
    "city": "Cochabamba",
    "country": "Bolivia",
    "countrycode": "BO"
  },
  {
    "code": "BON",
    "name": "Flamingo Field",
    "citycode": "BON",
    "city": "Bonaire",
    "country": "Bonaire",
    "countrycode": "BQ"
  },
  {
    "code": "EUX",
    "name": "Roosevelt Field",
    "citycode": "EUX",
    "city": "St Eustatius",
    "country": "Bonaire",
    "countrycode": "BQ"
  },
  {
    "code": "SAB",
    "name": "Juancho Yraus Quinl",
    "citycode": "SAB",
    "city": "Saba Island",
    "country": "Bonaire",
    "countrycode": "BQ"
  },
  {
    "code": "OMO",
    "name": "Mostar Arpt",
    "citycode": "OMO",
    "city": "Mostar",
    "country": "Bosnia and Herzegovina",
    "countrycode": "BA"
  },
  {
    "code": "TZL",
    "name": "Tuzla Intl Arpt",
    "citycode": "TZL",
    "city": "Tuzla",
    "country": "Bosnia and Herzegovina",
    "countrycode": "BA"
  },
  {
    "code": "SJJ",
    "name": "Butmir Arpt",
    "citycode": "SJJ",
    "city": "Sarajevo",
    "country": "Bosnia and Herzegovina",
    "countrycode": "BA"
  },
  {
    "code": "BNX",
    "name": "Banja Luka Arpt",
    "citycode": "BNX",
    "city": "Banja Luka",
    "country": "Bosnia and Herzegovina",
    "countrycode": "BA"
  },
  {
    "code": "MUB",
    "name": "Maun Arpt",
    "citycode": "MUB",
    "city": "Maun",
    "country": "Botswana",
    "countrycode": "BW"
  },
  {
    "code": "SVT",
    "name": "Savuti Airport",
    "citycode": "SVT",
    "city": "Savuti, Botswana",
    "country": "Botswana",
    "countrycode": "BW"
  },
  {
    "code": "FRW",
    "name": "Francistown Arpt",
    "citycode": "FRW",
    "city": "Francistown",
    "country": "Botswana",
    "countrycode": "BW"
  },
  {
    "code": "TLD",
    "name": "Limpopo Valley Arpt",
    "citycode": "TLD",
    "city": "Tuli Block",
    "country": "Botswana",
    "countrycode": "BW"
  },
  {
    "code": "BBK",
    "name": "Kasane Arpt",
    "citycode": "BBK",
    "city": "Kasane",
    "country": "Botswana",
    "countrycode": "BW"
  },
  {
    "code": "PKW",
    "name": "Selebi Phikwe Arpt",
    "citycode": "PKW",
    "city": "Selebi Phikwe",
    "country": "Botswana",
    "countrycode": "BW"
  },
  {
    "code": "GBE",
    "name": "Gaborone Arpt",
    "citycode": "GBE",
    "city": "Gaborone",
    "country": "Botswana",
    "countrycode": "BW"
  },
  {
    "code": "DOU",
    "name": "Dourados Airport",
    "citycode": "DOU",
    "city": "Dourados",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "ERM",
    "name": "Comandante Kraemer Airport",
    "citycode": "ERM",
    "city": "Erechim",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "FEN",
    "name": "Fernando De Noronha Arpt",
    "citycode": "FEN",
    "city": "Fernando De Noronha",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "FLB",
    "name": "Cangapara Arpt",
    "citycode": "FLB",
    "city": "Floriano",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "FLN",
    "name": "Hercilio Luz Arpt",
    "citycode": "FLN",
    "city": "Florianopolis",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "FRC",
    "name": "Franca Airport",
    "citycode": "FRC",
    "city": "Franca",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "GYN",
    "name": "Santa Genoveva",
    "citycode": "GYN",
    "city": "Goiania",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "GVR",
    "name": "Governador Valadares Arpt",
    "citycode": "GVR",
    "city": "Governador Valadares",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "GCV",
    "name": "Gravatai Arpt",
    "citycode": "GCV",
    "city": "Gravatai",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "HRZ",
    "name": "Horizontina Arpt",
    "citycode": "HRZ",
    "city": "Horizontina",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "IGU",
    "name": "Cataratas Arpt",
    "citycode": "IGU",
    "city": "Iguassu Falls",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "QIG",
    "name": "Iguatu Arpt",
    "citycode": "QIG",
    "city": "Iguatu",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "IOS",
    "name": "Eduardo Gomes Airport",
    "citycode": "IOS",
    "city": "Ilheus",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "IMP",
    "name": "Imperatriz Arpt",
    "citycode": "IMP",
    "city": "Imperatriz",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "IPN",
    "name": "Usiminas Arpt",
    "citycode": "IPN",
    "city": "Ipatinga",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "ITP",
    "name": "Itaperuna Arpt",
    "citycode": "ITP",
    "city": "Itaperuna",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "JPR",
    "name": "Ji Parana Arpt",
    "citycode": "JPR",
    "city": "Ji Parana",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "JCB",
    "name": "Joacaba Arpt",
    "citycode": "JCB",
    "city": "Joacaba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "JPA",
    "name": "Castro Pinto Arpt",
    "citycode": "JPA",
    "city": "Joao Pessoa",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "JOI",
    "name": "Cubatao Arpt",
    "citycode": "JOI",
    "city": "Joinville",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "JDO",
    "name": "Regional Do Cariri Arpt",
    "citycode": "JDO",
    "city": "Juazeiro Do Norte",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "JDF",
    "name": "Francisco De Assis Arpt",
    "citycode": "JDF",
    "city": "Juiz De Fora",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "LAJ",
    "name": "Lages Arpt",
    "citycode": "LAJ",
    "city": "Lajes",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "LEC",
    "name": "Chapada Diamantina Arpt",
    "citycode": "LEC",
    "city": "Lencois",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "LDB",
    "name": "Londrina Arpt",
    "citycode": "LDB",
    "city": "Londrina",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MEA",
    "name": "Macae Arpt",
    "citycode": "MEA",
    "city": "Macae",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MCP",
    "name": "Macapa Intl Arpt",
    "citycode": "MCP",
    "city": "Macapa",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MCZ",
    "name": "Palmeres Airport",
    "citycode": "MCZ",
    "city": "Maceio",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MAO",
    "name": "Intl Arpt Eduardo Gomes",
    "citycode": "MAO",
    "city": "Manaus",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MAB",
    "name": "Maraba Arpt",
    "citycode": "MAB",
    "city": "Maraba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MII",
    "name": "Dr Gastao Vidigal",
    "citycode": "MII",
    "city": "Marilia",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MGF",
    "name": "Regional De Maringa Arpt",
    "citycode": "MGF",
    "city": "Maringa",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MEU",
    "name": "Monte Dourado Arpt",
    "citycode": "MEU",
    "city": "Monte Dourado",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MOC",
    "name": "Montes Claros Arpt",
    "citycode": "MOC",
    "city": "Montes Claros",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "MVF",
    "name": "Dixsept Rosado Arpt",
    "citycode": "MVF",
    "city": "Mossoro",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "NAT",
    "name": "Augusto Severo Intl Arpt",
    "citycode": "NAT",
    "city": "Natal",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "NVT",
    "name": "Navegantes Arpt",
    "citycode": "NVT",
    "city": "Navegantes",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "QNT",
    "name": "Niteroi Arpt",
    "citycode": "QNT",
    "city": "Niteroi",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "QHV",
    "name": "Novo Hamburgo Arpt",
    "citycode": "QHV",
    "city": "Novo Hamburgo",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "OIA",
    "name": "Ourilandia Arpt",
    "citycode": "OIA",
    "city": "Ourilandia",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PMW",
    "name": "Palmas Arpt",
    "citycode": "PMW",
    "city": "Palmas",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PNG",
    "name": "Paranagua Municipal",
    "citycode": "PNG",
    "city": "Paranagua",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PHB",
    "name": "Santos Dumont Airport",
    "citycode": "PHB",
    "city": "Parnaiba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PFB",
    "name": "Passo Fundo Arpt",
    "citycode": "PFB",
    "city": "Passo Fundo",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PTO",
    "name": "Pato Branco Municipal",
    "citycode": "PTO",
    "city": "Pato Branco",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PET",
    "name": "Pelotas Federal Arpt",
    "citycode": "PET",
    "city": "Pelotas",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PNZ",
    "name": "Petrolina Internacional Arpt",
    "citycode": "PNZ",
    "city": "Petrolina",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PMG",
    "name": "International",
    "citycode": "PMG",
    "city": "Ponta Pora",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "POA",
    "name": "Porto Alegre Airport",
    "citycode": "POA",
    "city": "Porto Alegre",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BPS",
    "name": "Porto Seguro Arpt",
    "citycode": "BPS",
    "city": "Porto Seguro",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PVH",
    "name": "Belmonte Arpt",
    "citycode": "PVH",
    "city": "Porto Velho",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PPB",
    "name": "A De Barros",
    "citycode": "PPB",
    "city": "Presidente Prudente",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "REZ",
    "name": "Resende Airport",
    "citycode": "REZ",
    "city": "Resende",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "RAO",
    "name": "Leite Lopes",
    "citycode": "RAO",
    "city": "Ribeirao Preto",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "RBR",
    "name": "Pres Medici Arpt",
    "citycode": "RBR",
    "city": "Rio Branco",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "SDU",
    "name": "Santos Dumont Arpt",
    "citycode": "RIO",
    "city": "Rio De Janeiro",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "RIG",
    "name": "Rio Grande Airport",
    "citycode": "RIG",
    "city": "Rio Grande",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "RVD",
    "name": "Rio Verde Airport",
    "citycode": "RVD",
    "city": "Rio Verde",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "ROO",
    "name": "Rondonopolis Arpt",
    "citycode": "ROO",
    "city": "Rondonopolis",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "SSA",
    "name": "Luis E Magalhaes Arpt",
    "citycode": "SSA",
    "city": "Salvador",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CSU",
    "name": "Santa Cruz Do Sul Arpt",
    "citycode": "CSU",
    "city": "Santa Cruz Do Sul",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "RIA",
    "name": "Base Aerea Arpt",
    "citycode": "RIA",
    "city": "Santa Maria",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "STM",
    "name": "Eduardo Gomes Arpt",
    "citycode": "STM",
    "city": "Santarem",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "SSZ",
    "name": "Santos Arpt",
    "citycode": "SSZ",
    "city": "Santos",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "SJP",
    "name": "Sao Jose Do Rio Preto",
    "citycode": "SJP",
    "city": "Sao Jose Do Rio Preto",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "SJK",
    "name": "Sao Jose Dos Campos Arpt",
    "citycode": "SJK",
    "city": "Sao Jose Dos Campos",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "SLZ",
    "name": "Mal Cunha Machado",
    "citycode": "SLZ",
    "city": "Sao Luiz",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "VCP",
    "name": "Viracopos Arpt",
    "citycode": "SAO",
    "city": "Sao Paulo",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "GRU",
    "name": "Guarulhos Arpt",
    "citycode": "SAO",
    "city": "Sao Paulo",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "OPS",
    "name": "Sinop Airport",
    "citycode": "OPS",
    "city": "Sinop",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "SOD",
    "name": "Sorocaba Arpt",
    "citycode": "SOD",
    "city": "Sorocaba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "RWS",
    "name": "Sumare Arpt",
    "citycode": "RWS",
    "city": "Sumare",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "TBT",
    "name": "Tabatinga Intl Arpt",
    "citycode": "TBT",
    "city": "Tabatinga",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "TFF",
    "name": "Tefe Arpt",
    "citycode": "TFF",
    "city": "Tefe",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "TEC",
    "name": "Telemaco Borba Arpt",
    "citycode": "TEC",
    "city": "Telemaco Borba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "THE",
    "name": "Teresina Arpt",
    "citycode": "THE",
    "city": "Teresina",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "TOW",
    "name": "Toledo Arpt",
    "citycode": "TOW",
    "city": "Toledo",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "TUR",
    "name": "Tucurui Arpt",
    "citycode": "TUR",
    "city": "Tucurui",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "UBA",
    "name": "Uberaba Airport",
    "citycode": "UBA",
    "city": "Uberaba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "UDI",
    "name": "Eduardo Gomes Airprt",
    "citycode": "UDI",
    "city": "Uberlandia",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "UMU",
    "name": "Ernesto Geisel Arpt",
    "citycode": "UMU",
    "city": "Umuarama",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "UNA",
    "name": "Una Airport",
    "citycode": "UNA",
    "city": "Una BR",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "URG",
    "name": "Ruben Berta Arpt",
    "citycode": "URG",
    "city": "Uruguaina",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "VAG",
    "name": "Maj Brig Trompowsky Arpt",
    "citycode": "VAG",
    "city": "Varginha",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BVH",
    "name": "Vilhena Arpt",
    "citycode": "BVH",
    "city": "Vilhena",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "VIX",
    "name": "Eurico Sales Arpt",
    "citycode": "VIX",
    "city": "Vitoria",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "VDC",
    "name": "Vitoria Da Conquista Arpt",
    "citycode": "VDC",
    "city": "Vitoria Da Conquista",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CCI",
    "name": "Concórdia Airport",
    "citycode": "CCI",
    "city": "Concórdia, Santa Catarina, Brazil",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "SAO",
    "name": "Metropolitan area1",
    "citycode": "SAO",
    "city": "São Paulo",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "TXF",
    "name": "Teixeira de Freitas Airport (9 de maio Airport)",
    "citycode": "TXF",
    "city": "Teixeira de Freitas, Bahia, Brazil",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "QRZ",
    "name": "Resende",
    "citycode": "QRZ",
    "city": "Resende",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "TMT",
    "name": "Trombetas Arpt",
    "citycode": "TMT",
    "city": "Trombetas",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "AFL",
    "name": "Alta Floresta Arpt",
    "citycode": "AFL",
    "city": "Alta Floresta",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "ATM",
    "name": "Altamira Arpt",
    "citycode": "ATM",
    "city": "Altamira",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "APS",
    "name": "Anapolis Arpt",
    "citycode": "APS",
    "city": "Anapolis",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "AJU",
    "name": "Santa Maria Arpt",
    "citycode": "AJU",
    "city": "Aracaju",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "ARU",
    "name": "Aracatuba Arpt",
    "citycode": "ARU",
    "city": "Aracatuba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "AUX",
    "name": "Araguaina Arpt",
    "citycode": "AUX",
    "city": "Araguaina",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "AAG",
    "name": "Arapoti Arpt",
    "citycode": "AAG",
    "city": "Arapoti",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "AQA",
    "name": "Araraquara Arpt",
    "citycode": "AQA",
    "city": "Araraquara",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "AAX",
    "name": "Araxa Airport",
    "citycode": "AAX",
    "city": "Araxa",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "ZBW",
    "name": "Atibaia Arpt",
    "citycode": "ZBW",
    "city": "Atibaia",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BAZ",
    "name": "BARBELOS AIRPORT",
    "citycode": "BAZ",
    "city": "Barbelos",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BYO",
    "name": "Bonito Airport",
    "citycode": "BRA",
    "city": "Barreiras",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BRA",
    "name": "Barreiras Arpt",
    "citycode": "BRA",
    "city": "Barreiras",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BAT",
    "name": "Barretos Arpt",
    "citycode": "BAT",
    "city": "Barretos",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BAU",
    "name": "Bauru Airport",
    "citycode": "BAU",
    "city": "Bauru Old Code",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "JTC",
    "name": "Arealva Airport",
    "citycode": "BAU",
    "city": "Bauru Old Code",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BEL",
    "name": "Val De Cans Arpt",
    "citycode": "BEL",
    "city": "Belem",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CNF",
    "name": "Tancredo Neves Intl Arpt",
    "citycode": "BHZ",
    "city": "Belo Horizonte",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "PLU",
    "name": "Pampulha Arpt",
    "citycode": "BHZ",
    "city": "Belo Horizonte",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BGV",
    "name": "Bento Goncalves Arpt",
    "citycode": "BGV",
    "city": "Bento Goncalves",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BNU",
    "name": "Blumenau Arpt",
    "citycode": "BNU",
    "city": "Blumenau",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BVB",
    "name": "Boa Vista Arpt",
    "citycode": "BVB",
    "city": "Boa Vista",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BSB",
    "name": "Brasilia Intl Arpt",
    "citycode": "BSB",
    "city": "Brasilia",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BZC",
    "name": "Buzios Arpt",
    "citycode": "BZC",
    "city": "Buzios",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CFB",
    "name": "Cabo Frio Arpt",
    "citycode": "CFB",
    "city": "Cabo Frio",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CFC",
    "name": "Cacador Airport",
    "citycode": "CFC",
    "city": "Cacador",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CDI",
    "name": "Cachoeiro De Itapemirim Arpt",
    "citycode": "CDI",
    "city": "Cachoeiro De Itapemirim",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "OAL",
    "name": "Cacoal Arpt",
    "citycode": "OAL",
    "city": "Cacoal",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CPV",
    "name": "Joao Suassuana Arpt",
    "citycode": "CPV",
    "city": "Campina Grande",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CPQ",
    "name": "International Campinas",
    "citycode": "CPQ",
    "city": "Campinas",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CGR",
    "name": "Internacional",
    "citycode": "CGR",
    "city": "Campogrande",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CAW",
    "name": "Bartolomeu Lisandro Arpt",
    "citycode": "CAW",
    "city": "Campos",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CKS",
    "name": "Carajas Arpt",
    "citycode": "CKS",
    "city": "Carajas",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CAU",
    "name": "Caruaru Arpt",
    "citycode": "CAU",
    "city": "Caruaru",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CAC",
    "name": "Cascavel Arpt",
    "citycode": "CAC",
    "city": "Cascavel",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CXJ",
    "name": "Campo Dos Bugres Arpt",
    "citycode": "CXJ",
    "city": "Caxias Do Sul",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "XAP",
    "name": "Chapeco Arpt",
    "citycode": "XAP",
    "city": "Chapeco",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CMG",
    "name": "Internacional Corumba",
    "citycode": "CMG",
    "city": "Corumba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CCM",
    "name": "Criciuma Arpt",
    "citycode": "CCM",
    "city": "Criciuma",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CZS",
    "name": "Campo Intl Arpt",
    "citycode": "CZS",
    "city": "Cruzeiro Do Sul",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CWB",
    "name": "Afonso Pena Arpt",
    "citycode": "CWB",
    "city": "Curitiba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "BFH",
    "name": "Bacacheri Arpt",
    "citycode": "CWB",
    "city": "Curitiba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CGB",
    "name": "Marechal Rondon Arpt",
    "citycode": "CGB",
    "city": "Cuiaba",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "CGH",
    "name": "Congonhas Arpt",
    "citycode": "SAO",
    "city": "Sao Paulo",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "FOR",
    "name": "Pinto Martines Arpt",
    "citycode": "FOR",
    "city": "Fortaleza",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "GIG",
    "name": "Rio Internacional",
    "citycode": "RIO",
    "city": "Rio De Janeiro",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "REC",
    "name": "Recife Airport",
    "citycode": "REC",
    "city": "Recife",
    "country": "Brazil",
    "countrycode": "BR"
  },
  {
    "code": "KUB",
    "name": "Kuala Belait Arpt",
    "citycode": "KUB",
    "city": "Kuala Belait",
    "country": "Brunei Darussalam",
    "countrycode": "BN"
  },
  {
    "code": "BWN",
    "name": "Brunei Intl Arpt",
    "citycode": "BWN",
    "city": "Bandar Seri Begawan",
    "country": "Brunei Darussalam",
    "countrycode": "BN"
  },
  {
    "code": "SOF",
    "name": "Sofia Vrazhdebna Arpt",
    "citycode": "SOF",
    "city": "Sofia",
    "country": "Bulgaria",
    "countrycode": "BG"
  },
  {
    "code": "VAR",
    "name": "Varna",
    "citycode": "VAR",
    "city": "Varna",
    "country": "Bulgaria",
    "countrycode": "BG"
  },
  {
    "code": "PDV",
    "name": "Plovdiv Arpt",
    "citycode": "PDV",
    "city": "Plovdiv",
    "country": "Bulgaria",
    "countrycode": "BG"
  },
  {
    "code": "ROU",
    "name": "Ruse Shtrukevo Airport",
    "citycode": "ROU",
    "city": "Ruse",
    "country": "Bulgaria",
    "countrycode": "BG"
  },
  {
    "code": "BOJ",
    "name": "Bourgas Arpt",
    "citycode": "BOJ",
    "city": "Bourgas",
    "country": "Bulgaria",
    "countrycode": "BG"
  },
  {
    "code": "GOZ",
    "name": "Gorna Orechovitsa Airport",
    "citycode": "GOZ",
    "city": "Gorna Orjahovica",
    "country": "Bulgaria",
    "countrycode": "BG"
  },
  {
    "code": "SZR",
    "name": "Stara Zagora Arpt",
    "citycode": "SZR",
    "city": "Stara Zagora",
    "country": "Bulgaria",
    "countrycode": "BG"
  },
  {
    "code": "OUA",
    "name": "Ouagadougou Arpt",
    "citycode": "OUA",
    "city": "Ouagadougou",
    "country": "Burkina Faso",
    "countrycode": "BF"
  },
  {
    "code": "BNR",
    "name": "Banfora",
    "citycode": "BNR",
    "city": "Banfora",
    "country": "Burkina Faso",
    "countrycode": "BF"
  },
  {
    "code": "BOY",
    "name": "Borgo Arpt",
    "citycode": "BOY",
    "city": "Bobo Dioulasso",
    "country": "Burkina Faso",
    "countrycode": "BF"
  },
  {
    "code": "BJM",
    "name": "Bujumbura Intl Arpt",
    "citycode": "BJM",
    "city": "Bujumbura",
    "country": "Burundi",
    "countrycode": "BI"
  },
  {
    "code": "REP",
    "name": "Siem Reap Arpt",
    "citycode": "REP",
    "city": "Siem Reap",
    "country": "Cambodia",
    "countrycode": "KH"
  },
  {
    "code": "KOS",
    "name": "Sihanoukville International",
    "citycode": "KOS",
    "city": "Sihanoukville",
    "country": "Cambodia",
    "countrycode": "KH"
  },
  {
    "code": "PNH",
    "name": "Phnom Penh Intl Arpt",
    "citycode": "PNH",
    "city": "Phnom Penh",
    "country": "Cambodia",
    "countrycode": "KH"
  },
  {
    "code": "NSI",
    "name": "Nsimalen Arpt",
    "citycode": "YAO",
    "city": "Yaounde",
    "country": "Cameroon",
    "countrycode": "CM"
  },
  {
    "code": "MVR",
    "name": "Salam Arpt",
    "citycode": "MVR",
    "city": "Maroua",
    "country": "Cameroon",
    "countrycode": "CM"
  },
  {
    "code": "KOB",
    "name": "Koutaba Arpt",
    "citycode": "KOB",
    "city": "Koutaba",
    "country": "Cameroon",
    "countrycode": "CM"
  },
  {
    "code": "GOU",
    "name": "Garoua Arpt",
    "citycode": "GOU",
    "city": "Garoua",
    "country": "Cameroon",
    "countrycode": "CM"
  },
  {
    "code": "DLA",
    "name": "Douala Arpt",
    "citycode": "DLA",
    "city": "Douala",
    "country": "Cameroon",
    "countrycode": "CM"
  },
  {
    "code": "BLC",
    "name": "Bali Airport",
    "citycode": "BLC",
    "city": "Bali",
    "country": "Cameroon",
    "countrycode": "CM"
  },
  {
    "code": "YAO",
    "name": "Yaounde Airport",
    "citycode": "YAO",
    "city": "Yaounde",
    "country": "Cameroon",
    "countrycode": "CM"
  },
  {
    "code": "NGE",
    "name": "N Gaoundere Arpt",
    "citycode": "NGE",
    "city": "N Gaoundere",
    "country": "Cameroon",
    "countrycode": "CM"
  },
  {
    "code": "YHM",
    "name": "Civic Airport",
    "citycode": "YHM",
    "city": "Hamilton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXX",
    "name": "Abbotsford Arpt",
    "citycode": "YXX",
    "city": "Abbotsford",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "AKV",
    "name": "Akulivik Arpt",
    "citycode": "AKV",
    "city": "Akulivik",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XLY",
    "name": "Aldershot Rail Station",
    "citycode": "XLY",
    "city": "Aldershot",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFS",
    "name": "Alexandria Rail Station",
    "citycode": "XFS",
    "city": "Alexandria",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTF",
    "name": "Alma Municipal Arpt",
    "citycode": "YTF",
    "city": "Alma",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XZK",
    "name": "Amherst Rail Station",
    "citycode": "XZK",
    "city": "Amherst",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YEY",
    "name": "Amos Rail Station",
    "citycode": "YEY",
    "city": "Amos",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYW",
    "name": "Armstrong Rail Station",
    "citycode": "YYW",
    "city": "Armstromg",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YEK",
    "name": "Arviat Arpt",
    "citycode": "YEK",
    "city": "Arviat",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZA",
    "name": "Ashcroft Rail Station",
    "citycode": "YZA",
    "city": "Ashcroft",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YIB",
    "name": "Atikokan Municipal Arpt",
    "citycode": "YIB",
    "city": "Atikokan",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YAT",
    "name": "Attawapiskat Arpt",
    "citycode": "YAT",
    "city": "Attawapiskat",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPJ",
    "name": "Aupaluk Arpt",
    "citycode": "YPJ",
    "city": "Aupaluk",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBG",
    "name": "Bagotville Arpt",
    "citycode": "YBG",
    "city": "Bagotville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBC",
    "name": "Baie Comeau Arpt",
    "citycode": "YBC",
    "city": "Baie Comeau",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBK",
    "name": "Baker Lake Arpt",
    "citycode": "YBK",
    "city": "Baker Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBA",
    "name": "Banff Arpt",
    "citycode": "YBA",
    "city": "Banff",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YEB",
    "name": "Bar River Arpt",
    "citycode": "YEB",
    "city": "Bar River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZBF",
    "name": "Bathurst Arpt",
    "citycode": "ZBF",
    "city": "Bathurst",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBW",
    "name": "Bedwell Harbor Arpt",
    "citycode": "YBW",
    "city": "Bedwell Harbor",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "QBC",
    "name": "Bella Colla Municipal",
    "citycode": "QBC",
    "city": "Bella Coola",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XVV",
    "name": "Belleville Rail Station",
    "citycode": "XVV",
    "city": "Belleville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTL",
    "name": "Big Trout Arpt",
    "citycode": "YTL",
    "city": "Big Trout",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBX",
    "name": "Blanc Sablon Arpt",
    "citycode": "YBX",
    "city": "Blanc Sablon",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVB",
    "name": "Municipal Bonaventure",
    "citycode": "YVB",
    "city": "Bonaventure",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XPN",
    "name": "Brampton Rail Station",
    "citycode": "XPN",
    "city": "Brampton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBR",
    "name": "Brandon Municipal Arpt",
    "citycode": "YBR",
    "city": "Brandon",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFV",
    "name": "Brantford Rail Station",
    "citycode": "XFV",
    "city": "Brantford",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XBR",
    "name": "Brockville Arpt",
    "citycode": "XBR",
    "city": "Brockville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZBM",
    "name": "Bromont Regional Arpt",
    "citycode": "ZBM",
    "city": "Bromont",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPZ",
    "name": "Burns Lake Rail Station",
    "citycode": "YPZ",
    "city": "Burns Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQF",
    "name": "Red Deer Arpt",
    "citycode": "YYC",
    "city": "Calgary",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCB",
    "name": "Cambridge Bay Arpt",
    "citycode": "YCB",
    "city": "Cambridge Bay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHH",
    "name": "Harbor Airport",
    "citycode": "YBL",
    "city": "Campbell River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBL",
    "name": "Campbell River Municipal",
    "citycode": "YBL",
    "city": "Campbell River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XAZ",
    "name": "Campbellton Rail Station",
    "citycode": "XAZ",
    "city": "Campbellton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTE",
    "name": "Cape Dorset Arpt",
    "citycode": "YTE",
    "city": "Cape Dorset",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XAW",
    "name": "Capreol Rail Station",
    "citycode": "XAW",
    "city": "Capreol",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XON",
    "name": "Carleton Rail Station",
    "citycode": "XON",
    "city": "Carleton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRF",
    "name": "Cartwright Arpt",
    "citycode": "YRF",
    "city": "Cartwright",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XZB",
    "name": "Casselman Rail Station",
    "citycode": "XZB",
    "city": "Casselman",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCG",
    "name": "Ralph West Arpt",
    "citycode": "YCG",
    "city": "Castlegar",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XCI",
    "name": "Chambord Rail Station",
    "citycode": "XCI",
    "city": "Chambord",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDL",
    "name": "Chandler Rail Station",
    "citycode": "XDL",
    "city": "Chandler",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YLD",
    "name": "Chapleau Rail Station",
    "citycode": "YLD",
    "city": "Chapleau",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCL",
    "name": "Charlo Municipal Arpt",
    "citycode": "YCL",
    "city": "Charlo",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHG",
    "name": "Charlottetown Municipal Arpt",
    "citycode": "YHG",
    "city": "Charlottetown",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYG",
    "name": "Charlottetown Municipal",
    "citycode": "YYG",
    "city": "Charlottetown",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XCM",
    "name": "Chatham Airport",
    "citycode": "XCM",
    "city": "Chatham",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XHS",
    "name": "Chemainus Rail Station",
    "citycode": "XHS",
    "city": "Chemainus",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCS",
    "name": "Chesterfield Inlet Arpt",
    "citycode": "YCS",
    "city": "Chesterfield Inlet",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHR",
    "name": "Chevery Arpt",
    "citycode": "YHR",
    "city": "Chevery",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMT",
    "name": "Chibougamau Arpt",
    "citycode": "YMT",
    "city": "Chibougamau",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCW",
    "name": "Chilliwack Arpt",
    "citycode": "YCW",
    "city": "Chilliwack",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKU",
    "name": "Chisasibi Arpt",
    "citycode": "YKU",
    "city": "Chisasibi",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZUM",
    "name": "Churchhill Falls Arpt",
    "citycode": "ZUM",
    "city": "Churchhill Falls",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYQ",
    "name": "Churchill Arpt",
    "citycode": "YYQ",
    "city": "Churchill",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XAD",
    "name": "Churchill Rail Station",
    "citycode": "YYQ",
    "city": "Churchill",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCY",
    "name": "Clyde River",
    "citycode": "YCY",
    "city": "Clyde River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XGJ",
    "name": "Cobourg Rail Station",
    "citycode": "XGJ",
    "city": "Cobourg",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCN",
    "name": "Cochrane Rail Station",
    "citycode": "YCN",
    "city": "Cochrane",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YOD",
    "name": "Cold Lake Arpt",
    "citycode": "YOD",
    "city": "Cold Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCK",
    "name": "Colville Municipal",
    "citycode": "YCK",
    "city": "Colville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQQ",
    "name": "Royal Canadian Air Force Station",
    "citycode": "YQQ",
    "city": "Comox",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZS",
    "name": "Coral Harbour Arpt",
    "citycode": "YZS",
    "city": "Coral Harbour",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCC",
    "name": "Cornwall Regional Arpt",
    "citycode": "YCC",
    "city": "Cornwall",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XGK",
    "name": "Coteau Rail Station",
    "citycode": "XGK",
    "city": "Coteau",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCA",
    "name": "Courtenay Rail Station",
    "citycode": "YCA",
    "city": "Courtenay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "CFQ",
    "name": "Creston Arpt",
    "citycode": "CFQ",
    "city": "Creston",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YDN",
    "name": "Dauphin Airport",
    "citycode": "YDN",
    "city": "Dauphin",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YDA",
    "name": "Dawson City Arpt",
    "citycode": "YDA",
    "city": "Dawson City",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YDQ",
    "name": "Dawson Creek Arpt",
    "citycode": "YDQ",
    "city": "Dawson Creek",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YDL",
    "name": "Dease Lake Arpt",
    "citycode": "YDL",
    "city": "Dease Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YDF",
    "name": "Deer Lake Municipal",
    "citycode": "YDF",
    "city": "Deer Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVZ",
    "name": "Deer Lake Arpt",
    "citycode": "YVZ",
    "city": "Deer Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDM",
    "name": "Drummondville Rail Station",
    "citycode": "XDM",
    "city": "Drummondville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHD",
    "name": "Dryden Municipal",
    "citycode": "YHD",
    "city": "Dryden",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "DUQ",
    "name": "Duncan\/Quam Rail Station",
    "citycode": "DUQ",
    "city": "Duncan",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXD",
    "name": "Edmonton Municipal Arpt",
    "citycode": "YEA",
    "city": "Edmonton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YED",
    "name": "Namao Field",
    "citycode": "YEA",
    "city": "Edmonton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XZL",
    "name": "Edmonton Rail Station",
    "citycode": "YEA",
    "city": "Edmonton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YET",
    "name": "Edson Arpt",
    "citycode": "YET",
    "city": "Edson",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YEL",
    "name": "Elliot Lake Arpt",
    "citycode": "YEL",
    "city": "Elliot Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPF",
    "name": "Esquimalt Rail Station",
    "citycode": "YPF",
    "city": "Esquimalt",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YEN",
    "name": "Estevan Arpt",
    "citycode": "YEN",
    "city": "Estevan",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCZ",
    "name": "Fairmont Springs Arpt",
    "citycode": "YCZ",
    "city": "Fairmont Springs",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YFO",
    "name": "Flin Flon Municipal Arpt",
    "citycode": "YFO",
    "city": "Flin Flon",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YAG",
    "name": "Fort Frances Municipal",
    "citycode": "YAG",
    "city": "Fort Frances",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYE",
    "name": "Ft Nelson Municipal Arpt",
    "citycode": "YYE",
    "city": "Fort Nelson",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YER",
    "name": "Fort Severn Arpt",
    "citycode": "YER",
    "city": "Fort Severn",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YFX",
    "name": "Fox Harbour Arpt",
    "citycode": "YFX",
    "city": "Fox Harbour",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YFC",
    "name": "Fredericton Municipal",
    "citycode": "YFC",
    "city": "Fredericton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMM",
    "name": "Ft McMurray Municipal Arpt",
    "citycode": "YMM",
    "city": "Ft McMurray",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSM",
    "name": "Ft Smith Municipal Arpt",
    "citycode": "YSM",
    "city": "Ft Smith",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XGW",
    "name": "Gananoque Rail Station",
    "citycode": "XGW",
    "city": "Gananoque",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQX",
    "name": "Gander International",
    "citycode": "YQX",
    "city": "Gander",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDD",
    "name": "Gaspe Rail Station",
    "citycode": "YGP",
    "city": "Gaspe",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGP",
    "name": "Gaspe Municipal Arpt",
    "citycode": "YGP",
    "city": "Gaspe",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YND",
    "name": "Gatineau Hull Municipal Arpt",
    "citycode": "YND",
    "city": "Gatineau Hull",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XHM",
    "name": "Georgetown Rail Station",
    "citycode": "XHM",
    "city": "Georgetown",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGQ",
    "name": "Geraldton Airport",
    "citycode": "YGQ",
    "city": "Geraldton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZGS",
    "name": "Gethsemanie Arpt",
    "citycode": "ZGS",
    "city": "Gethsemanie",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGX",
    "name": "Gillam Rail Station",
    "citycode": "YGX",
    "city": "Gillam",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHK",
    "name": "Gjoa Haven Arpt",
    "citycode": "YHK",
    "city": "Gjoa Haven",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XZC",
    "name": "Glencoe Rail Station",
    "citycode": "XZC",
    "city": "Glencoe",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYR",
    "name": "Municipal Goose Bay",
    "citycode": "YYR",
    "city": "Goose Bay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQU",
    "name": "Grande Prairie Arpt",
    "citycode": "YQU",
    "city": "Grande Prairie",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDO",
    "name": "Grande-Riviere Rail Station",
    "citycode": "XDO",
    "city": "Grande Riviere",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZX",
    "name": "Greenwood Arpt",
    "citycode": "YZX",
    "city": "Greenwood",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XGY",
    "name": "Grimsby Rail Station",
    "citycode": "XGY",
    "city": "Grimsby",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XIA",
    "name": "Guelph Rail Station",
    "citycode": "XIA",
    "city": "Guelph",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YAW",
    "name": "Canadian Force Base Shearwater",
    "citycode": "YHZ",
    "city": "Halifax",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YWF",
    "name": "Dwtown Waterfront Heliport",
    "citycode": "YHZ",
    "city": "Halifax",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDG",
    "name": "Halifax Rail Station",
    "citycode": "YHZ",
    "city": "Halifax",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YUX",
    "name": "Hall Beach Arpt",
    "citycode": "YUX",
    "city": "Hall Beach",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGV",
    "name": "Havre St Pierre Municipal Arpt",
    "citycode": "YGV",
    "city": "Havre St Pierre",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHY",
    "name": "Hay River Municipal Arpt",
    "citycode": "YHY",
    "city": "Hay River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHF",
    "name": "Hearst Municipal Arpt",
    "citycode": "YHF",
    "city": "Hearst",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDU",
    "name": "Hervey Rail Station",
    "citycode": "XDU",
    "city": "Hervey",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YOJ",
    "name": "Footner Lake Arpt",
    "citycode": "YOJ",
    "city": "High Level",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHE",
    "name": "Hope Arpt",
    "citycode": "YHE",
    "city": "Hope",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHO",
    "name": "Hopedale Arpt",
    "citycode": "YHO",
    "city": "Hopedale",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHN",
    "name": "Hornepayne Rail Station",
    "citycode": "YHN",
    "city": "Hornepayne",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZHO",
    "name": "Houston Bus Station",
    "citycode": "ZHO",
    "city": "Houston",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHB",
    "name": "Hudson Bay Rail Station",
    "citycode": "YHB",
    "city": "Hudson Bay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGT",
    "name": "Igloolik Arpt",
    "citycode": "YGT",
    "city": "Igloolik",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGR",
    "name": "House Harbour Arpt",
    "citycode": "YGR",
    "city": "Iles De Madeleine",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ILF",
    "name": "Ilford Rail Station",
    "citycode": "ILF",
    "city": "Ilford",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XIB",
    "name": "Ingersoll Rail Station",
    "citycode": "XIB",
    "city": "Ingersoll",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPH",
    "name": "Inukjuak Arpt",
    "citycode": "YPH",
    "city": "Inukjuak",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YEV",
    "name": "Inuvik Mike Zubko Arpt",
    "citycode": "YEV",
    "city": "Inuvik",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YFB",
    "name": "Iqaluit Arpt",
    "citycode": "YFB",
    "city": "Iqaluit",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YIK",
    "name": "Ivujivik Arpt",
    "citycode": "YIK",
    "city": "Ivujivik",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDH",
    "name": "Jasper Rail Station",
    "citycode": "YJA",
    "city": "Jasper",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YJA",
    "name": "Jasper Airport",
    "citycode": "YJA",
    "city": "Jasper",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XJL",
    "name": "Joliette Rail Station",
    "citycode": "XJL",
    "city": "Joliette",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XJQ",
    "name": "Jonquiere Rail Station",
    "citycode": "XJQ",
    "city": "Jonquiere",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKA",
    "name": "Davie Fulton Arpt",
    "citycode": "YKA",
    "city": "Kamloops",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XGR",
    "name": "Kangiqsualujjuaq Arpt",
    "citycode": "XGR",
    "city": "Kangiqsualujjuaq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YWB",
    "name": "Kangiqsujuaq Arpt",
    "citycode": "YWB",
    "city": "Kangiqsujuaq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKG",
    "name": "Kangirsuk Arpt",
    "citycode": "YKG",
    "city": "Kangirsuk",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYU",
    "name": "Kapuskasing Municipal Arpt",
    "citycode": "YYU",
    "city": "Kapuskasing",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZKG",
    "name": "Kegaska Arpt",
    "citycode": "ZKG",
    "city": "Kegaska",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YLW",
    "name": "Kelowna International Airport",
    "citycode": "YLW",
    "city": "Kelowna",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQK",
    "name": "Kenora Arpt",
    "citycode": "YQK",
    "city": "Kenora",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XBW",
    "name": "Killineq Arpt",
    "citycode": "XBW",
    "city": "Killineq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YLC",
    "name": "Kimmirut Lake Harbour Arpt",
    "citycode": "YLC",
    "city": "Kimmirut Lake Harbour",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEG",
    "name": "Kingston Rail Station",
    "citycode": "YGK",
    "city": "Kingston",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGK",
    "name": "Norman Rodgers Arpt",
    "citycode": "YGK",
    "city": "Kingston",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKX",
    "name": "Kirkland Lake Municipal Arpt",
    "citycode": "YKX",
    "city": "Kirkland",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCO",
    "name": "Kugluktuk Arpt",
    "citycode": "YCO",
    "city": "Kugluktuk Coppermine",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVP",
    "name": "Kuujjuaq Arpt",
    "citycode": "YVP",
    "city": "Kuujjuaq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGL",
    "name": "La Grande Municipal Arpt",
    "citycode": "YGL",
    "city": "La Grande",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "SSQ",
    "name": "La Sarre Rail Station",
    "citycode": "SSQ",
    "city": "La Sarre",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZLT",
    "name": "La Tabatiere Arpt",
    "citycode": "ZLT",
    "city": "La Tabatiere",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YLQ",
    "name": "La Tuque Rail Station",
    "citycode": "YLQ",
    "city": "La Tuque",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEE",
    "name": "Lac Edouard Rail Station",
    "citycode": "XEE",
    "city": "Lac Edouard",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEH",
    "name": "Ladysmith Rail Station",
    "citycode": "XEH",
    "city": "Ladysmith",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEJ",
    "name": "Langford Rail Station",
    "citycode": "XEJ",
    "city": "Langford",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YLY",
    "name": "Langley Regional Arpt",
    "citycode": "YLY",
    "city": "Langley",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQL",
    "name": "Lethbridge Arpt",
    "citycode": "YQL",
    "city": "Lethbridge",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YLL",
    "name": "Lloydminster Arpt",
    "citycode": "YLL",
    "city": "Lloydminster",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXU",
    "name": "London Municipal",
    "citycode": "YXU",
    "city": "London",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDQ",
    "name": "London Rail Station",
    "citycode": "YXU",
    "city": "London",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYL",
    "name": "Lynn Lake Rail Station",
    "citycode": "YYL",
    "city": "Lynn Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMN",
    "name": "Makkovik Arpt",
    "citycode": "YMN",
    "city": "Makkovik",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMG",
    "name": "Manitouwadge Municipal Arpt",
    "citycode": "YMG",
    "city": "Manitouwadge",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSP",
    "name": "Marathon Municipal Arpt",
    "citycode": "YSP",
    "city": "Marathon",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMH",
    "name": "Marys Harbour Arpt",
    "citycode": "YMH",
    "city": "Marys Harbour",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YME",
    "name": "Matane Airport",
    "citycode": "YME",
    "city": "Matane",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XLP",
    "name": "Matapedia Rail Station",
    "citycode": "XLP",
    "city": "Matapedia",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XID",
    "name": "Maxville Rail Station",
    "citycode": "XID",
    "city": "Maxville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YLJ",
    "name": "Meadow Lake Arpt",
    "citycode": "YLJ",
    "city": "Meadow Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXH",
    "name": "Medicine Hat Airport",
    "citycode": "YXH",
    "city": "Medicine Hat",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEK",
    "name": "Melville Rail Station",
    "citycode": "XEK",
    "city": "Melville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMB",
    "name": "Merritt Arpt",
    "citycode": "YMB",
    "city": "Merritt",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMI",
    "name": "Minaki Rail Station",
    "citycode": "YMI",
    "city": "Minaki",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YAV",
    "name": "Miners Bay Airport",
    "citycode": "YAV",
    "city": "Miners Bay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCH",
    "name": "Miramichi Arpt",
    "citycode": "YCH",
    "city": "Miramichi",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEY",
    "name": "Newcastle Rail Station",
    "citycode": "YCH",
    "city": "Miramichi",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQM",
    "name": "Moncton Municipal",
    "citycode": "YQM",
    "city": "Moncton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDP",
    "name": "Moncton Rail Station",
    "citycode": "YQM",
    "city": "Moncton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYY",
    "name": "Mont Joli Arpt",
    "citycode": "YYY",
    "city": "Mont Joli",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTM",
    "name": "International Airport",
    "citycode": "YTM",
    "city": "Mont Tremblant",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMY",
    "name": "Montreal Downtown Rail Station",
    "citycode": "YMQ",
    "city": "Montreal",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMX",
    "name": "Mirabel Intl Arpt",
    "citycode": "YMQ",
    "city": "Montreal",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XAX",
    "name": "Dorval Rail Station",
    "citycode": "YMQ",
    "city": "Montreal",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XLM",
    "name": "Saint Lambert Rail Station",
    "citycode": "YMQ",
    "city": "Montreal",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHU",
    "name": "St Hubert Arpt",
    "citycode": "YMQ",
    "city": "Montreal",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMO",
    "name": "Moosonee Arpt",
    "citycode": "YMO",
    "city": "Moosonee",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQA",
    "name": "Muskoka Arpt",
    "citycode": "YQA",
    "city": "Muskoka",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YDP",
    "name": "Nain Arpt",
    "citycode": "YDP",
    "city": "Nain",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQN",
    "name": "Nakina Rail Station",
    "citycode": "YQN",
    "city": "Nakina",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YCD",
    "name": "Nanaimo Arpt",
    "citycode": "YCD",
    "city": "Nanaimo",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZNA",
    "name": "Harbour Seaplane Base",
    "citycode": "YCD",
    "city": "Nanaimo",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XIF",
    "name": "Napanee Rail Station",
    "citycode": "XIF",
    "city": "Napanee",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YNA",
    "name": "Natashquan Arpt",
    "citycode": "YNA",
    "city": "Natashquan",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YNP",
    "name": "Natuashish Arpt",
    "citycode": "YNP",
    "city": "Natuashish",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEL",
    "name": "New Carlisle Rail Station",
    "citycode": "XEL",
    "city": "New Carlisle",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEM",
    "name": "New Richmond Rail Station",
    "citycode": "XEM",
    "city": "New Richmond",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBD",
    "name": "New Westminster Rail Station",
    "citycode": "YBD",
    "city": "New Westminster",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XLV",
    "name": "Niagara Falls Rail Station",
    "citycode": "XLV",
    "city": "Niagara Falls",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVQ",
    "name": "Norman Wells Municipal Arpt",
    "citycode": "YVQ",
    "city": "Norman Wells",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQW",
    "name": "North Battleford Arpt",
    "citycode": "YQW",
    "city": "North Battleford",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYB",
    "name": "North Bay Municipal",
    "citycode": "YYB",
    "city": "North Bay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XOK",
    "name": "Oakville Rail Station",
    "citycode": "XOK",
    "city": "Oakville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YOO",
    "name": "Oshawa Municipal Arpt",
    "citycode": "YOO",
    "city": "Oshawa",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRO",
    "name": "Rockcliffe St Arpt",
    "citycode": "YOW",
    "city": "Ottawa",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDS",
    "name": "Ottawa Rail Station",
    "citycode": "YOW",
    "city": "Ottawa",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZIF",
    "name": "Fallowfield Railway Station",
    "citycode": "YOW",
    "city": "Ottawa",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YOS",
    "name": "Billy Bishop Regional Arpt",
    "citycode": "YOS",
    "city": "Owen Sound",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YIF",
    "name": "Pakuashipi Arpt",
    "citycode": "YIF",
    "city": "Pakuashipi",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXP",
    "name": "Pangnirtung Arpt",
    "citycode": "YXP",
    "city": "Pangnirtung",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFE",
    "name": "Parent Rail Station",
    "citycode": "XFE",
    "city": "Parent",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XPB",
    "name": "Parksville Rail Station",
    "citycode": "XPB",
    "city": "Parksville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPD",
    "name": "Parry Sound Municipal Arpt",
    "citycode": "YPD",
    "city": "Parry Sound",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPE",
    "name": "Municipal Peace River",
    "citycode": "YPE",
    "city": "Peace River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBB",
    "name": "Kugaaruk Arpt",
    "citycode": "YBB",
    "city": "Pelly Bay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTA",
    "name": "Pembroke And Area",
    "citycode": "YTA",
    "city": "Pembroke",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYF",
    "name": "Penticton Municipal Arpt",
    "citycode": "YYF",
    "city": "Penticton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFG",
    "name": "Perce Rail Station",
    "citycode": "XFG",
    "city": "Perce",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPQ",
    "name": "Peterborough Arpt",
    "citycode": "YPQ",
    "city": "Peterborough",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPL",
    "name": "Pickle Lake Arpt",
    "citycode": "YPL",
    "city": "Pickle Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YOW",
    "name": "Ottawa Intl Arpt",
    "citycode": "YOW",
    "city": "Ottawa",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "PIW",
    "name": "Pikwitonei Rail Station",
    "citycode": "PIW",
    "city": "Pikwitonei",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XPX",
    "name": "Pointe-aux-Trembles Rail Station",
    "citycode": "XPX",
    "city": "Pointe Aux Trembles",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YIO",
    "name": "Pond Inlet Arpt",
    "citycode": "YIO",
    "city": "Pond Inlet",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPB",
    "name": "Port Alberni Arpt",
    "citycode": "YPB",
    "city": "Port Alberni",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFI",
    "name": "Port-Daniel Rail Station",
    "citycode": "XFI",
    "city": "Port Daniel",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZT",
    "name": "Port Hardy Municipal",
    "citycode": "YZT",
    "city": "Port Hardy",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPS",
    "name": "Port Hawkesbury Arpt",
    "citycode": "YPS",
    "city": "Port Hawkesbury",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XPH",
    "name": "Port Hope Rail Station",
    "citycode": "XPH",
    "city": "Port Hope",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHA",
    "name": "Port Hope Simpson Arpt",
    "citycode": "YHA",
    "city": "Port Hope Simpson",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPN",
    "name": "Port Menier Arpt",
    "citycode": "YPN",
    "city": "Port Menier",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPG",
    "name": "Portage La Prairie Rail Station",
    "citycode": "YPG",
    "city": "Portage La Prairie",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YGW",
    "name": "Kuujjuaraapik Arpt",
    "citycode": "YGW",
    "city": "Poste De La Baleine",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSO",
    "name": "Postville Arpt",
    "citycode": "YSO",
    "city": "Postville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPW",
    "name": "Westview Arpt",
    "citycode": "YPW",
    "city": "Powell River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XII",
    "name": "Prescott Rail Station",
    "citycode": "XII",
    "city": "Prescott",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPA",
    "name": "Prince Albert Municipal Arpt",
    "citycode": "YPA",
    "city": "Prince Albert",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDV",
    "name": "Prince George Rail Station",
    "citycode": "YXS",
    "city": "Prince George",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZSW",
    "name": "Seal Cove Arpt",
    "citycode": "YPR",
    "city": "Prince Rupert",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDW",
    "name": "Prince Rupert Rail Station",
    "citycode": "YPR",
    "city": "Prince Rupert",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPR",
    "name": "Digby Island Arpt",
    "citycode": "YPR",
    "city": "Prince Rupert",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XPK",
    "name": "Pukatawagan Rail Station",
    "citycode": "XPK",
    "city": "Pukatawagan",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPX",
    "name": "Povungnituk Arpt",
    "citycode": "YPX",
    "city": "Puvirnituq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVM",
    "name": "Qikiqtarjuaq Arpt",
    "citycode": "YVM",
    "city": "Qikiqtarjuaq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XQU",
    "name": "Qualicum Arpt",
    "citycode": "XQU",
    "city": "Qualicum",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQC",
    "name": "Quaqtaq Arpt",
    "citycode": "YQC",
    "city": "Quaqtaq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XLJ",
    "name": "Quebec City Rail Station",
    "citycode": "YQB",
    "city": "Quebec",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XLK",
    "name": "Levis Rail Station",
    "citycode": "YQB",
    "city": "Quebec",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFY",
    "name": "Sainte-Foy Rail Station",
    "citycode": "YQB",
    "city": "Quebec",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFZ",
    "name": "Charny Rail Station",
    "citycode": "YQB",
    "city": "Quebec",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQB",
    "name": "Quebec Intl",
    "citycode": "YQB",
    "city": "Quebec",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZQS",
    "name": "Queen Charlotte Island Arpt",
    "citycode": "ZQS",
    "city": "Queen Charlotte Island",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQZ",
    "name": "Quesnel Arpt",
    "citycode": "YQZ",
    "city": "Quesnel",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YOP",
    "name": "Rainbow Lake Arpt",
    "citycode": "YOP",
    "city": "Rainbow Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRT",
    "name": "Rankin Inlet Arpt",
    "citycode": "YRT",
    "city": "Rankin Inlet",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRL",
    "name": "Federal Red Lake",
    "citycode": "YRL",
    "city": "Red Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YMJ",
    "name": "Moose Jaw Arpt",
    "citycode": "YQR",
    "city": "Regina",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRB",
    "name": "Resolute Arpt",
    "citycode": "YRB",
    "city": "Resolute",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRG",
    "name": "Rigolet Arpt",
    "citycode": "YRG",
    "city": "Rigolet",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXK",
    "name": "Rimouski Municipal Arpt",
    "citycode": "YXK",
    "city": "Rimouski",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYI",
    "name": "Rivers Rail Station",
    "citycode": "YYI",
    "city": "Rivers",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XRP",
    "name": "Pine Ridge Rail Station",
    "citycode": "XRP",
    "city": "Riviere A Pierre",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRI",
    "name": "Riviere Du Loup Arpt",
    "citycode": "YRI",
    "city": "Riviere Du Loup",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRJ",
    "name": "Roberval Airport",
    "citycode": "YRJ",
    "city": "Roberval",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YUY",
    "name": "Rouyn Noranda Arpt",
    "citycode": "YUY",
    "city": "Rouyn Noranda",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XKV",
    "name": "Sackville Rail Station",
    "citycode": "XKV",
    "city": "Sackville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XIM",
    "name": "Saint Hyacinthe Rail Station",
    "citycode": "XIM",
    "city": "Saint Hyacinthe",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZG",
    "name": "Salluit Arpt",
    "citycode": "YZG",
    "city": "Salluit",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSN",
    "name": "Salmon Arm Municipal",
    "citycode": "YSN",
    "city": "Salmon Arm",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZP",
    "name": "Federal Airport",
    "citycode": "YZP",
    "city": "Sandspit",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZSJ",
    "name": "Sandy Lake Arpt",
    "citycode": "ZSJ",
    "city": "Sandy Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSK",
    "name": "Sanikiluaq Arpt",
    "citycode": "YSK",
    "city": "Sanikiluaq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZR",
    "name": "Sarnia Airport",
    "citycode": "YZR",
    "city": "Sarnia",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDX",
    "name": "Sarina Rail Station",
    "citycode": "YZR",
    "city": "Sarnia",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKY",
    "name": "Kindersley Arpt",
    "citycode": "YXE",
    "city": "Saskatoon",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YAM",
    "name": "Sault Ste Marie Arpt",
    "citycode": "YAM",
    "city": "Sault Ste Marie",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKL",
    "name": "Schefferville Arpt",
    "citycode": "YKL",
    "city": "Schefferville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHS",
    "name": "Sechelt Arpt",
    "citycode": "YHS",
    "city": "Sechelt",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFK",
    "name": "Senneterre Rail Station",
    "citycode": "XFK",
    "city": "Senneterre",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZV",
    "name": "Sept Iles Municipal Arpt",
    "citycode": "YZV",
    "city": "Sept Iles",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFL",
    "name": "Shawinigan Rail Station",
    "citycode": "XFL",
    "city": "Shawinigan",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFM",
    "name": "Shawnigan Rail Station",
    "citycode": "XFM",
    "city": "Shawnigan",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSC",
    "name": "Sherbrooke Airport",
    "citycode": "YSC",
    "city": "Sherbrooke",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXL",
    "name": "Sioux Lookout Arpt",
    "citycode": "YXL",
    "city": "Sioux Lookout",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSH",
    "name": "Smith Falls Rail Station",
    "citycode": "YSH",
    "city": "Smith Falls",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYD",
    "name": "Smithers Municipal",
    "citycode": "YYD",
    "city": "Smithers",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YAY",
    "name": "St Anthony Arpt",
    "citycode": "YAY",
    "city": "St Anthony",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSJ",
    "name": "St John Municipal",
    "citycode": "YSJ",
    "city": "St John",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYT",
    "name": "St Johns Arpt",
    "citycode": "YYT",
    "city": "St Johns",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSL",
    "name": "Edmunston Arpt",
    "citycode": "YSL",
    "city": "St Leonard",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XIO",
    "name": "St Marys Rail Station",
    "citycode": "XIO",
    "city": "St Marys",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YPM",
    "name": "Pikangikum Arpt",
    "citycode": "YPM",
    "city": "St Pierre",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "FSP",
    "name": "St Pierre Arpt",
    "citycode": "FSP",
    "city": "St Pierre",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YST",
    "name": "St Therese Pt Municipal",
    "citycode": "YST",
    "city": "St Theris Point",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQS",
    "name": "Pembroke Area Municipal Arpt",
    "citycode": "YQS",
    "city": "St Thomas",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YJT",
    "name": "Stephenville Municipal",
    "citycode": "YJT",
    "city": "Stephenville",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFD",
    "name": "Stratford Rail Station",
    "citycode": "XFD",
    "city": "Stratford",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XTY",
    "name": "Strathroy Rail Station",
    "citycode": "XTY",
    "city": "Strathroy",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDY",
    "name": "Sudbury Junction Rail Station",
    "citycode": "YSB",
    "city": "Sudbury",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YSB",
    "name": "Sudbury Municipal Arpt",
    "citycode": "YSB",
    "city": "Sudbury",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZJN",
    "name": "Swan River Municipal Arpt",
    "citycode": "ZJN",
    "city": "Swan River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYN",
    "name": "Swift Current Arpt",
    "citycode": "YYN",
    "city": "Swift Current",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYH",
    "name": "Taloyoak Arpt",
    "citycode": "YYH",
    "city": "Taloyoak",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFO",
    "name": "Taschereau Rail Station",
    "citycode": "XFO",
    "city": "Taschereau",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTQ",
    "name": "Tasiujaq Arpt",
    "citycode": "YTQ",
    "city": "Tasiujaq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXT",
    "name": "Terrace Municipal Arpt",
    "citycode": "YXT",
    "city": "Terrace",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTJ",
    "name": "Terrace Bay Municipal Arpt",
    "citycode": "YTJ",
    "city": "Terrace Bay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "ZTB",
    "name": "Tete A La Baleine Arpt",
    "citycode": "ZTB",
    "city": "Tete A La Baleine",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XDZ",
    "name": "The Pas Rail Station",
    "citycode": "YQD",
    "city": "The Pas",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQD",
    "name": "The Pas Municipal Arpt",
    "citycode": "YQD",
    "city": "The Pas",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTD",
    "name": "Thicket Portage Rail Station",
    "citycode": "YTD",
    "city": "Thicket Portage",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTH",
    "name": "Thompson Arpt",
    "citycode": "YTH",
    "city": "Thompson",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQT",
    "name": "Thunder Bay Arpt",
    "citycode": "YQT",
    "city": "Thunder Bay",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTS",
    "name": "Timmins Municipal Arpt",
    "citycode": "YTS",
    "city": "Timmins",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTP",
    "name": "Tofino Sea Plane Base",
    "citycode": "YAZ",
    "city": "Tofino",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YAZ",
    "name": "Tofino Arpt",
    "citycode": "YAZ",
    "city": "Tofino",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XLQ",
    "name": "Guildwood Rail Station",
    "citycode": "YTO",
    "city": "Toronto",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKZ",
    "name": "Buttonville Arpt",
    "citycode": "YTO",
    "city": "Toronto",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YBZ",
    "name": "Toronto Downtown Rail Station",
    "citycode": "YTO",
    "city": "Toronto",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTR",
    "name": "Trenton Municipal Arpt",
    "citycode": "YTR",
    "city": "Trenton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YRQ",
    "name": "Three Rivers Arpt",
    "citycode": "YRQ",
    "city": "Trois Rivieres",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XLZ",
    "name": "Truro Rail Station",
    "citycode": "XLZ",
    "city": "Truro",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YUB",
    "name": "Tuktoyaktuk Airport",
    "citycode": "YUB",
    "city": "Tuktoyaktuk",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YUD",
    "name": "Umiujaq Arpt",
    "citycode": "YUD",
    "city": "Umiujaq",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVO",
    "name": "Val d Or Municipal Arpt",
    "citycode": "YVO",
    "city": "Val D Or",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "CXH",
    "name": "Coal Harbor Sea Plane Arpt",
    "citycode": "YVR",
    "city": "Vancouver",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YDT",
    "name": "Boundary Bay Arpt",
    "citycode": "YVR",
    "city": "Vancouver",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEA",
    "name": "Vancouver Rail Station",
    "citycode": "YVR",
    "city": "Vancouver",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVG",
    "name": "Vermilion Arpt",
    "citycode": "YVG",
    "city": "Vermilion",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVE",
    "name": "Vernon Municipal Arpt",
    "citycode": "YVE",
    "city": "Vernon",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YWH",
    "name": "Inner Harbor Sea Plane Arpt",
    "citycode": "YYJ",
    "city": "Victoria",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYJ",
    "name": "Victoria Intl Arpt",
    "citycode": "YYJ",
    "city": "Victoria",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YWK",
    "name": "Wabush Arpt",
    "citycode": "YWK",
    "city": "Wabush",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKQ",
    "name": "Waskaganish Arpt",
    "citycode": "YKQ",
    "city": "Waskaganish",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XWA",
    "name": "Watford Rail Station",
    "citycode": "XWA",
    "city": "Watford",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQH",
    "name": "Watson Lake Arpt",
    "citycode": "YQH",
    "city": "Watson Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXZ",
    "name": "Municipal Wawa",
    "citycode": "YXZ",
    "city": "Wawa",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XFQ",
    "name": "Weymont Rail Station",
    "citycode": "XFQ",
    "city": "Weymont",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXN",
    "name": "Whale Cove Arpt",
    "citycode": "YXN",
    "city": "Whale Cove",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YWS",
    "name": "Whistler Arpt",
    "citycode": "YWS",
    "city": "Whistler",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YWR",
    "name": "White River Rail Station",
    "citycode": "YWR",
    "city": "White River",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXY",
    "name": "Whitehorse Arpt",
    "citycode": "YXY",
    "city": "Whitehorse",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YWL",
    "name": "Williams Lake Municipal",
    "citycode": "YWL",
    "city": "Williams Lake",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEC",
    "name": "Windsor Rail Station",
    "citycode": "YQG",
    "city": "Windsor",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YWG",
    "name": "Winnipeg Intl Arpt",
    "citycode": "YWG",
    "city": "Winnipeg",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XEF",
    "name": "Winnipeg Rail Station",
    "citycode": "YWG",
    "city": "Winnipeg",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XIP",
    "name": "Woodstock Rail Station",
    "citycode": "XIP",
    "city": "Woodstock",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "XWY",
    "name": "Wyoming Rail Station",
    "citycode": "XWY",
    "city": "Wyoming",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQI",
    "name": "Municipal Yarmouth",
    "citycode": "YQI",
    "city": "Yarmouth",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YZF",
    "name": "Yellowknife Arpt",
    "citycode": "YZF",
    "city": "Yellowknife",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQV",
    "name": "Yorkton Airport",
    "citycode": "YQV",
    "city": "Yorkton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YEG",
    "name": "Edmonton Intl Arpt",
    "citycode": "YEA",
    "city": "Edmonton",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YHZ",
    "name": "Halifax Intl",
    "citycode": "YHZ",
    "city": "Halifax",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YKF",
    "name": "Kitchener Waterloo Regional",
    "citycode": "YKF",
    "city": "Kitchener",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQG",
    "name": "Windsor Intl Arpt",
    "citycode": "YQG",
    "city": "Windsor",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQR",
    "name": "Regina Municipal",
    "citycode": "YQR",
    "city": "Regina",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YQY",
    "name": "Sydney Airport",
    "citycode": "YQY",
    "city": "Sydney",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YTZ",
    "name": "Toronto City Centre Airport",
    "citycode": "YTO",
    "city": "Toronto",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YUL",
    "name": "Pierre Elliott Trudeau Intl Arpt",
    "citycode": "YMQ",
    "city": "Montreal",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YVR",
    "name": "Vancouver Intl Arpt",
    "citycode": "YVR",
    "city": "Vancouver",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXC",
    "name": "Cranbrook Municipal",
    "citycode": "YXC",
    "city": "Cranbrook",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXE",
    "name": "Saskatoon Municipal",
    "citycode": "YXE",
    "city": "Saskatoon",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXJ",
    "name": "Ft St John Municipal Arpt",
    "citycode": "YXJ",
    "city": "Ft St John",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YXS",
    "name": "Prince George Municipal",
    "citycode": "YXS",
    "city": "Prince George",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYC",
    "name": "Calgary Intl Arpt",
    "citycode": "YYC",
    "city": "Calgary",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "YYZ",
    "name": "Lester B Pearson Intl",
    "citycode": "YTO",
    "city": "Toronto",
    "country": "Canada",
    "countrycode": "CA"
  },
  {
    "code": "VXE",
    "name": "San Pedro Airport",
    "citycode": "VXE",
    "city": "Sao Vicente",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "SFL",
    "name": "Sao Filipe Arpt",
    "citycode": "SFL",
    "city": "Sao Filipe",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "SID",
    "name": "Amilcar Cabral Intl Arpt",
    "citycode": "SID",
    "city": "Sal Island",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "RAI",
    "name": "Francisco Mendes",
    "citycode": "RAI",
    "city": "Praia",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "MMO",
    "name": "Vila Do Maio Arpt",
    "citycode": "MMO",
    "city": "Maio",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "BVR",
    "name": "Esperadinha",
    "citycode": "BVR",
    "city": "Brava",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "BVC",
    "name": "Rabil Arpt",
    "citycode": "BVC",
    "city": "Boa Vista",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "NTO",
    "name": "Santo Antao Arpt",
    "citycode": "NTO",
    "city": "Santo Antao",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "SNE",
    "name": "Preguica Arpt",
    "citycode": "SNE",
    "city": "Sao Nicolau",
    "country": "Cape Verde",
    "countrycode": "CV"
  },
  {
    "code": "GCM",
    "name": "Owen Roberts Arpt",
    "citycode": "GCM",
    "city": "Grand Cayman Island",
    "country": "Cayman Islands",
    "countrycode": "KY"
  },
  {
    "code": "CYB",
    "name": "Gerrard Smith Arpt",
    "citycode": "CYB",
    "city": "Cayman Brac",
    "country": "Cayman Islands",
    "countrycode": "KY"
  },
  {
    "code": "LYB",
    "name": "Little Cayman Arpt",
    "citycode": "LYB",
    "city": "Little Cayman",
    "country": "Cayman Islands",
    "countrycode": "KY"
  },
  {
    "code": "BGF",
    "name": "Bangui Airport",
    "citycode": "BGF",
    "city": "Bangui",
    "country": "Central African Republic",
    "countrycode": "CF"
  },
  {
    "code": "NDL",
    "name": "NDele Airport",
    "citycode": "NDL",
    "city": "NDele, Central African Republic",
    "country": "Central African Republic",
    "countrycode": "CF"
  },
  {
    "code": "NDJ",
    "name": "N Djamena Arpt",
    "citycode": "NDJ",
    "city": "N Djamena",
    "country": "Chad",
    "countrycode": "TD"
  },
  {
    "code": "WPA",
    "name": "Puerto Aisen Arpt",
    "citycode": "WPA",
    "city": "Puerto Aisen",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "ANF",
    "name": "Cerro Moreno Arpt",
    "citycode": "ANF",
    "city": "Antofagasta",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "ARI",
    "name": "Chacalluta Arpt",
    "citycode": "ARI",
    "city": "Arica",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "BBA",
    "name": "Teniente Vidal Airport",
    "citycode": "BBA",
    "city": "Balmaceda",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "KNA",
    "name": "Vina Del Mar Arpt",
    "citycode": "KNA",
    "city": "Vina Del Mar",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "ZAL",
    "name": "Pichoy",
    "citycode": "ZAL",
    "city": "Valdivia",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "VLR",
    "name": "Vallenar Arpt",
    "citycode": "VLR",
    "city": "VALLENAR",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "CJC",
    "name": "El Loa Arpt",
    "citycode": "CJC",
    "city": "Calama",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "MHC",
    "name": "Mocopulli",
    "citycode": "WCA",
    "city": "Castro",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "ZCO",
    "name": "Manquehue Arpt",
    "citycode": "ZCO",
    "city": "Temuco",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "CCP",
    "name": "Carriel Sur Arpt",
    "citycode": "CCP",
    "city": "Concepcion",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "SCL",
    "name": "Arturo Merino Benitez",
    "citycode": "SCL",
    "city": "Santiago",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "CPO",
    "name": "Chamonate Arpt",
    "citycode": "CPO",
    "city": "Copiapo",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "GXQ",
    "name": "Teniente Vidal Arpt",
    "citycode": "GXQ",
    "city": "Coyhaique",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "ULC",
    "name": "Los Cerrillos",
    "citycode": "SCL",
    "city": "Santiago",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "IPC",
    "name": "Mataveri Intl Arpt",
    "citycode": "IPC",
    "city": "Easter Island",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "ESR",
    "name": "El Salvador Arpt",
    "citycode": "ESR",
    "city": "El Salvador",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "IQQ",
    "name": "Cavancha Chucumata Arpt",
    "citycode": "IQQ",
    "city": "Iquique",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "LSC",
    "name": "La Florida",
    "citycode": "LSC",
    "city": "La Serena",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "LSQ",
    "name": "Maria Dolores Arpt",
    "citycode": "LSQ",
    "city": "Los Angeles",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "PUQ",
    "name": "Presidente Ibanez Arpt",
    "citycode": "PUQ",
    "city": "Punta Arenas",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "ZOS",
    "name": "Canal Balo Arpt",
    "citycode": "ZOS",
    "city": "Osorno",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "PUX",
    "citycode": "PUX",
    "city": "Puerto Varas",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "PNT",
    "name": "Teniente Julio Gallardo Arpt",
    "citycode": "PNT",
    "city": "Puerto Natales",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "ZPC",
    "name": "Pucon Arpt",
    "citycode": "ZPC",
    "city": "Pucon",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "PMC",
    "name": "Tepual Arpt",
    "citycode": "PMC",
    "city": "Puerto Montt",
    "country": "Chile",
    "countrycode": "CL"
  },
  {
    "code": "HSN",
    "name": "Zhoushan Arpt",
    "citycode": "HSN",
    "city": "Zhoushan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ZUH",
    "name": "Zhuhai Arpt",
    "citycode": "ZUH",
    "city": "Zhuhai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HET",
    "name": "Hohhot Arpt",
    "citycode": "HET",
    "city": "Hohhot",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HIA",
    "name": "LIANSHUI",
    "citycode": "HIA",
    "city": "Huai An",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HHA",
    "name": "Changsha Huanghua Arpt",
    "citycode": "HHA",
    "city": "Huanghua",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HYN",
    "name": "Huangyan Arpt",
    "citycode": "HYN",
    "city": "Huangyan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HUZ",
    "name": "Huizhou Arpt",
    "citycode": "HUZ",
    "city": "Huizhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JNG",
    "name": "Jining Airport",
    "citycode": "JNG",
    "city": "JINING",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ZBD",
    "name": "Jiang Men Ferry",
    "citycode": "ZBD",
    "city": "Jiang Men",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JGN",
    "name": "Jiayuguan Arpt",
    "citycode": "JGN",
    "city": "Jiayuguan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JIL",
    "name": "Jilin Arpt",
    "citycode": "JIL",
    "city": "Jilin",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JDZ",
    "name": "Jingdezhen Arpt",
    "citycode": "JDZ",
    "city": "Jingdezhen",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JHG",
    "name": "Jinghong Arpt",
    "citycode": "JHG",
    "city": "Jinghong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JNZ",
    "name": "Jinzhou Arpt",
    "citycode": "JNZ",
    "city": "Jinzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JIU",
    "name": "Jiujiang Airport",
    "citycode": "JIU",
    "city": "Jiujiang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CHW",
    "name": "Jiuquan Arpt",
    "citycode": "CHW",
    "city": "Jiuquan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JUZ",
    "name": "Juzhou Arpt",
    "citycode": "JUZ",
    "city": "Juzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "KHG",
    "name": "Kashi Arpt",
    "citycode": "KHG",
    "city": "Kashi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HNY",
    "name": "Hengyang Arpt",
    "citycode": "HNY",
    "city": "Hengyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LNJ",
    "name": "Lincang Airport",
    "citycode": "LNJ",
    "city": "LINCANG",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LHW",
    "name": "Lanzhou Arpt",
    "citycode": "LHW",
    "city": "Lanzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LZD",
    "name": "Lanzhoudong Airport",
    "citycode": "LHW",
    "city": "Lanzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ZGC",
    "name": "Zhongchuan Airport",
    "citycode": "LHW",
    "city": "Lanzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LIA",
    "name": "Lianping Arpt",
    "citycode": "LIA",
    "city": "Lianping",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LYG",
    "name": "Lianyungang Arpt",
    "citycode": "LYG",
    "city": "Lianyungang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LJG",
    "name": "Lijiang Arpt",
    "citycode": "LJG",
    "city": "Lijiang City",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LLF",
    "name": "Ling Ling Arpt",
    "citycode": "LLF",
    "city": "Ling Ling",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LYI",
    "name": "Linyi Arpt",
    "citycode": "LYI",
    "city": "Linyi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LZH",
    "name": "Liuzhou Airport",
    "citycode": "LZH",
    "city": "Liuzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LYA",
    "name": "Luoyang Arpt",
    "citycode": "LYA",
    "city": "Luoyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NZH",
    "name": "Manzhouliarpt",
    "citycode": "NZH",
    "city": "Manzhouli",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "MXZ",
    "name": "Meixian Arpt",
    "citycode": "MXZ",
    "city": "Meixian",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "MIG",
    "name": "Mian Yang Arpt",
    "citycode": "MIG",
    "city": "Mian Yang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "MDG",
    "name": "Mudanjiang Arpt",
    "citycode": "MDG",
    "city": "Mudanjiang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NNY",
    "name": "Nanyang Airport",
    "citycode": "NNY",
    "city": "Nanyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DSN",
    "name": "Ordos Ejin Horo Airport",
    "citycode": "DSN",
    "city": "Ordos",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "PZI",
    "name": "Pan Zhi Hua Bao An Ying Arpt",
    "citycode": "PZI",
    "city": "Panzhihua",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "PNJ",
    "name": "Sha He Kou Arpt",
    "citycode": "PNJ",
    "city": "Penglai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JIQ",
    "name": "Qianjiang Wulingshan Arpt",
    "citycode": "JIQ",
    "city": "Qianjiang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SHP",
    "name": "Qinhuangdao Arpt",
    "citycode": "SHP",
    "city": "Qinhuangdao",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NDG",
    "name": "Qiqihar Arpt",
    "citycode": "NDG",
    "city": "Qiqihar",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SYX",
    "name": "Sanya Arpt",
    "citycode": "SYX",
    "city": "Sanya",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SWA",
    "name": "Shantou Airport",
    "citycode": "SWA",
    "city": "Shantou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SZO",
    "name": "Shanzhou Arpt",
    "citycode": "SZO",
    "city": "Shanzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SHS",
    "name": "Shashi Arpt",
    "citycode": "SHS",
    "city": "Shashi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SHE",
    "name": "Shenyang Arpt",
    "citycode": "SHE",
    "city": "Shenyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SJW",
    "name": "Daguocun Arpt",
    "citycode": "SJW",
    "city": "Shijiazhuang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SYM",
    "name": "Simao Airport",
    "citycode": "SYM",
    "city": "Simao",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JZH",
    "name": "Jiu Zhai Huang Long Arpt",
    "citycode": "JZH",
    "city": "Songpan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SZV",
    "name": "Suzhou Arpt",
    "citycode": "SZV",
    "city": "Suzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TYN",
    "name": "Taiyuan Arpt",
    "citycode": "TYN",
    "city": "Taiyuan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TVS",
    "name": "Sannuhe Arpt",
    "citycode": "TVS",
    "city": "Tangshan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TCZ",
    "name": "Hump Airport",
    "citycode": "TCZ",
    "city": "Tengchong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TSN",
    "name": "Tianjin Airport",
    "citycode": "TSN",
    "city": "Tianjin",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TGO",
    "name": "Tongliao Arpt",
    "citycode": "TGO",
    "city": "Tongliao",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TEN",
    "name": "Tongren Arpt",
    "citycode": "TEN",
    "city": "Tongren",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TXN",
    "name": "Tunxi Arpt",
    "citycode": "TXN",
    "city": "Tunxi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HLH",
    "name": "Ulanhot Airport",
    "citycode": "HLH",
    "city": "Ulanhot",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "URC",
    "name": "Diwopu Intl Arpt",
    "citycode": "URC",
    "city": "Urumqi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WXN",
    "name": "Wanxian Arpt",
    "citycode": "WXN",
    "city": "Wanxian",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WEH",
    "name": "Dashuibo Arpt",
    "citycode": "WEH",
    "city": "Weihai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WUH",
    "name": "Wuhan Arpt",
    "citycode": "WUH",
    "city": "Wuhan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WUS",
    "name": "Wuyishan Arpt",
    "citycode": "WUS",
    "city": "Wuyishan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SIA",
    "name": "Xiguan Airport",
    "citycode": "SIA",
    "city": "Xi An",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XFN",
    "name": "Xiangfan Arpt",
    "citycode": "XFN",
    "city": "Xiangfan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XIL",
    "name": "Xilinhot Airport",
    "citycode": "XIL",
    "city": "Xilinhot",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HFE",
    "name": "Hefei Arpt",
    "citycode": "HFE",
    "city": "Hefei",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HRB",
    "name": "Harbin Arpt",
    "citycode": "HRB",
    "city": "Harbin",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HMI",
    "name": "Hami Airport",
    "citycode": "HMI",
    "city": "Hami",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HLD",
    "name": "Hailer Arpt",
    "citycode": "HLD",
    "city": "Hailar",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "KWE",
    "name": "Guiyang Arpt",
    "citycode": "KWE",
    "city": "Guiyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "GYS",
    "name": "Guang Yuan Arpt",
    "citycode": "GYS",
    "city": "Guang Yuan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "KOW",
    "name": "Ganzhou Arpt",
    "citycode": "KOW",
    "city": "Ganzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "FUG",
    "name": "Fuyang Airport",
    "citycode": "FUG",
    "city": "Fuyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "FUO",
    "name": "Fuoshan Arpt",
    "citycode": "FUO",
    "city": "Fuoshan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DNH",
    "name": "Dunhuang Arpt",
    "citycode": "DNH",
    "city": "Dunhuang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DOY",
    "name": "Dongying Airport",
    "citycode": "DOY",
    "city": "Dongying",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DIG",
    "name": "Diging Arpt",
    "citycode": "DIG",
    "city": "Diqing",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DYG",
    "name": "Dayong Arpt",
    "citycode": "DYG",
    "city": "Dayong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DAT",
    "name": "Datong Arpt",
    "citycode": "DAT",
    "city": "Datong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DQA",
    "name": "Saertu Airport",
    "citycode": "DQA",
    "city": "Daqing",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "AHJ",
    "name": "Hongyuan Airport",
    "citycode": "AHJ",
    "city": "Hongyuan, Sichuan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WNH",
    "name": "Wenshan Puzhehei Airport",
    "citycode": "WNH",
    "city": "Wenshan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "KRY",
    "name": "Karamay Airport",
    "citycode": "KRY",
    "city": "Kelamayi Shi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XIC",
    "name": "Xichang Qingshan Airport",
    "citycode": "XIC",
    "city": "Liangshan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LNL",
    "name": "Cheng Xian",
    "citycode": "LNL",
    "city": "Longnan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JUH",
    "name": "Jiuhuashan",
    "citycode": "JUH",
    "city": "Chizhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ZYI",
    "name": "Xinzhou",
    "citycode": "ZYI",
    "city": "Zunyi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YYA",
    "name": "Sanhe",
    "citycode": "YYA",
    "city": "Yueyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YNZ",
    "name": "Nanyang",
    "citycode": "YNZ",
    "city": "Yancheng",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CIF",
    "name": "Yulong",
    "citycode": "CIF",
    "city": "Chifeng",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LLV",
    "name": "Luliang",
    "citycode": "LLV",
    "city": "Luliang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WEF",
    "name": "Weifang",
    "citycode": "WEF",
    "city": "Weifang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WUT",
    "name": "Xinzhou Wutaishan",
    "citycode": "WUT",
    "city": "Xinzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ENH",
    "name": "Xujiaping",
    "citycode": "ENH",
    "city": "Enshi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CNI",
    "name": "Changhai Airport",
    "citycode": "CNI",
    "city": "Dalian",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HZG",
    "name": "Chenggu",
    "citycode": "HZG",
    "city": "Hanzhong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "BPL",
    "name": "Alashankou",
    "citycode": "BPL",
    "city": "Bole",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SQJ",
    "name": "Shaxian",
    "citycode": "SQJ",
    "city": "Sanming",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WDS",
    "name": "Wudangshan",
    "citycode": "WDS",
    "city": "Shiyan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "AEB",
    "name": "Baise Bama Airport",
    "citycode": "AEB",
    "city": "Baise Shi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LFQ",
    "name": "Qiaoli",
    "citycode": "LFQ",
    "city": "Linfen",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SQD",
    "name": "Sanqingshan",
    "citycode": "SQD",
    "city": "Shangrao",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LUM",
    "name": "Dehong Mangshi",
    "citycode": "LUM",
    "city": "Mangshi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XAI",
    "name": "Minggang",
    "citycode": "XAI",
    "city": "Xinyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YKH",
    "name": "Yingkou Lanqi",
    "citycode": "YKH",
    "city": "Yingkou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DAX",
    "name": "Heshi",
    "citycode": "DAX",
    "city": "Dazhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YCU",
    "name": "Guangong",
    "citycode": "YCU",
    "city": "Yuncheng",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "BZX",
    "name": "Enyang",
    "citycode": "BZX",
    "city": "Bazhong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WUA",
    "name": "Wuhai Airport",
    "citycode": "WUA",
    "city": "Wuhai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LPF",
    "name": "Yue Zhao",
    "citycode": "LPF",
    "city": "Liupanshui",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "PKX",
    "name": "Daxing Intl",
    "citycode": "BJS",
    "city": "Beijing",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "RIZ",
    "name": "Shanzihe",
    "citycode": "RIZ",
    "city": "Rizhao",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JXA",
    "name": "Jixi Xingkaihu Airport",
    "citycode": "JXA",
    "city": "Jixi Shi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NTG",
    "name": "Xingdong",
    "citycode": "NTG",
    "city": "Nantong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ZAT",
    "name": "Zhaotong",
    "citycode": "ZAT",
    "city": "Zhaotong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "AQG",
    "name": "Tianzhushan",
    "citycode": "AQG",
    "city": "v",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JGS",
    "name": "Jinggangshan",
    "citycode": "JGS",
    "city": "Ji an",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YIC",
    "name": "Mingyueshan",
    "citycode": "YIC",
    "city": "Yichun (Jiangxi)",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ACX",
    "name": "Xingyi",
    "citycode": "ACX",
    "city": "Xingyi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NAO",
    "name": "Nanchong Gaoping Airport",
    "citycode": "NAO",
    "city": "Nanchong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ENY",
    "name": "Yanan Ershilipu Airport",
    "citycode": "ENY",
    "city": "Shaanxi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "KRL",
    "name": "Korla Airport",
    "citycode": "KRL",
    "city": "Bayingol",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HTN",
    "name": "Hotan Airport",
    "citycode": "HTN",
    "city": "Hotan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LCX",
    "name": "Longyan Guanzhishan Airport",
    "citycode": "LCX",
    "city": "Longyan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YUS",
    "name": "Yushu Batang Airport",
    "citycode": "YUS",
    "city": "Yushu",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HJJ",
    "name": "Huaihua Zhijiang Airport",
    "citycode": "HJJ",
    "city": "Huaihua",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JMU",
    "name": "Jiamusi Dongjiao Airport",
    "citycode": "JMU",
    "city": "Jiamusi Shi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "AKU",
    "name": "Aksu Airport",
    "citycode": "AKU",
    "city": "Aksu",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YNT",
    "name": "Laishan Arpt",
    "citycode": "YNT",
    "city": "Yantai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YIW",
    "name": "Yiwu Arpt",
    "citycode": "YIW",
    "city": "Yiwu",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CIH",
    "name": "Changzhi Wangcun Airport",
    "citycode": "CIH",
    "city": "Changzhi Shi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "IQN",
    "name": "Qingyang Airport",
    "citycode": "IQN",
    "city": "Qingyang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XMN",
    "name": "Xiamen Intl Airport",
    "citycode": "XMN",
    "city": "Xiamen",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XIY",
    "name": "Xianyang Arpt",
    "citycode": "SIA",
    "city": "Xi An",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WUX",
    "name": "Wuxi Arpt",
    "citycode": "WUX",
    "city": "Wuxi",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "WNZ",
    "name": "Wenzhou Arpt",
    "citycode": "WNZ",
    "city": "Wenzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CAN",
    "name": "Baiyun International Airport",
    "citycode": "CAN",
    "city": "Guangzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TNA",
    "name": "Jinan Arpt",
    "citycode": "TNA",
    "city": "Jinan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "TAO",
    "name": "Liuting Arpt",
    "citycode": "TAO",
    "city": "Qingdao",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SZX",
    "name": "Shenzhen Arpt",
    "citycode": "SZX",
    "city": "Shenzhen",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "AOG",
    "name": "Anshan Tengao Airport",
    "citycode": "AOG",
    "city": "Anshan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "SHA",
    "name": "Hongqiao International Arpt",
    "citycode": "SHA",
    "city": "Shanghai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "PVG",
    "name": "Pudong International Arpt",
    "citycode": "SHA",
    "city": "Shanghai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "PEK",
    "name": "Beijing Capital Arpt",
    "citycode": "BJS",
    "city": "Beijing",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NNG",
    "name": "Nanning Arpt",
    "citycode": "NNG",
    "city": "Nanning",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NKG",
    "name": "Nanjing Arpt",
    "citycode": "NKG",
    "city": "Nanjing",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NGB",
    "name": "Ningbo Arpt",
    "citycode": "NGB",
    "city": "Ningbo",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LZO",
    "name": "Luzhou Arpt",
    "citycode": "LZO",
    "city": "Luzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "LXA",
    "name": "Lhasa Arpt",
    "citycode": "LXA",
    "city": "Lhasa",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "KWL",
    "name": "Guilin Airport",
    "citycode": "KWL",
    "city": "Guilin",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "KMG",
    "name": "Kunming Airport",
    "citycode": "KMG",
    "city": "Kunming",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "KHN",
    "name": "Nanchang Arpt",
    "citycode": "KHN",
    "city": "Nanchang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "JJN",
    "name": "Jinjiang Arpt",
    "citycode": "JJN",
    "city": "Jinjiang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "INC",
    "name": "Yinchuan Arpt",
    "citycode": "INC",
    "city": "Yinchuan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HGH",
    "name": "Hangzhou Arpt",
    "citycode": "HGH",
    "city": "Hangzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HAK",
    "name": "Haikou Arpt",
    "citycode": "HAK",
    "city": "Haikou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "FOC",
    "name": "Fuzhou Arpt",
    "citycode": "FOC",
    "city": "Fuzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CZX",
    "name": "Changzhou Arpt",
    "citycode": "CZX",
    "city": "Changzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CTU",
    "name": "Chengdu Arpt",
    "citycode": "CTU",
    "city": "Chengdu",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CSX",
    "name": "Changsha Arpt",
    "citycode": "CSX",
    "city": "Changsha",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CKG",
    "name": "Chongqing Arpt",
    "citycode": "CKG",
    "city": "Chongqing",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CGO",
    "name": "Zhengzhou Arpt",
    "citycode": "CGO",
    "city": "Zhengzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NBS",
    "name": "Changbaishan Airport",
    "citycode": "NBS",
    "city": "Baishan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "BSD",
    "name": "Baoshan Arpt",
    "citycode": "BSD",
    "city": "Baoshan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "BAV",
    "name": "Baotou Arpt",
    "citycode": "BAV",
    "city": "Baotou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "BHY",
    "name": "Beihai Airport",
    "citycode": "BHY",
    "city": "Beihai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "NAY",
    "name": "Nanyuan Arpt",
    "citycode": "BJS",
    "city": "Beijing",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CGQ",
    "name": "Changchun Arpt",
    "citycode": "CGQ",
    "city": "Changchun",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "CGD",
    "name": "Changde Arpt",
    "citycode": "CGD",
    "city": "Changde",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "HDG",
    "name": "Hebei Handan",
    "citycode": "HDG",
    "city": "Handan",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DLU",
    "name": "Dali Arpt",
    "citycode": "DLU",
    "city": "Dali City",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DLC",
    "name": "Dalian Arpt",
    "citycode": "DLC",
    "city": "Dalian",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "DDG",
    "name": "Dandong Arpt",
    "citycode": "DDG",
    "city": "Dandong",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XNT",
    "name": "Xingtai Airport",
    "citycode": "XNT",
    "city": "Xingtai",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XNN",
    "name": "Xining Arpt",
    "citycode": "XNN",
    "city": "Xining",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XUZ",
    "name": "Xuzhou Arpt",
    "citycode": "XUZ",
    "city": "Xuzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YTY",
    "name": "Yangzhou Taizhou Arpt",
    "citycode": "YTY",
    "city": "Yangzhou",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YNJ",
    "name": "Yanji Arpt",
    "citycode": "YNJ",
    "city": "Yanji",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YBP",
    "name": "Yibin Airport",
    "citycode": "YBP",
    "city": "Yibin",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YIH",
    "name": "Yichang Arpt",
    "citycode": "YIH",
    "city": "Yichang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "YIN",
    "name": "Yining Arpt",
    "citycode": "YIN",
    "city": "Yining",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "UYN",
    "name": "Yulin Airport",
    "citycode": "UYN",
    "city": "Yulin",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ZHA",
    "name": "Zhanjiang Airport",
    "citycode": "ZHA",
    "city": "Zhangjiang",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "ZHY",
    "name": "Zhongwei Airport",
    "citycode": "ZHY",
    "city": "Zhongwei",
    "country": "China",
    "countrycode": "CN"
  },
  {
    "code": "XCH",
    "name": "Christmas Island Arpt",
    "citycode": "XCH",
    "city": "Christmas Island",
    "country": "Christmas Island",
    "countrycode": "CX"
  },
  {
    "code": "CCK",
    "name": "Cocos Islands Arpt",
    "citycode": "CCK",
    "city": "Cocos Islands",
    "country": "Cocos (Keeling) Islands",
    "countrycode": "CC"
  },
  {
    "code": "CZU",
    "name": "Corozal Arpt",
    "citycode": "CZU",
    "city": "Corozal",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "ACD",
    "name": "Aeropuerto Alcides Fernandez",
    "citycode": "ACD",
    "city": "Acandi",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "APO",
    "name": "Apartado Arpt",
    "citycode": "APO",
    "city": "Apartado",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "ACR",
    "name": "Araracuara Arpt",
    "citycode": "ACR",
    "city": "Araracuara",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "AUC",
    "name": "Arauca Arpt",
    "citycode": "AUC",
    "city": "Arauca",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "AXM",
    "name": "El Eden Arpt",
    "citycode": "AXM",
    "city": "Armenia",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "BSC",
    "name": "Aeropuerto Jose Celestino Mutis",
    "citycode": "BSC",
    "city": "Bahia Solano",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "EJA",
    "name": "Variguies Arpt",
    "citycode": "EJA",
    "city": "Barrancabermeja",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "BAQ",
    "name": "E Cortissoz Arpt",
    "citycode": "BAQ",
    "city": "Barranquilla",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "BGA",
    "name": "Palo Negro Arpt",
    "citycode": "BGA",
    "city": "Bucaramanga",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "BUN",
    "name": "Buenaventura Arpt",
    "citycode": "BUN",
    "city": "Buenaventura",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "CLO",
    "name": "Alfonso Bonilla Aragon Arpt",
    "citycode": "CLO",
    "city": "Cali",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "CPB",
    "name": "Capurgana Arpt",
    "citycode": "CPB",
    "city": "Capurgana",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "CTG",
    "name": "Rafael Nunez Arpt",
    "citycode": "CTG",
    "city": "Cartagena",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "CAQ",
    "name": "Caucasia Arpt",
    "citycode": "CAQ",
    "city": "Caucasia",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "IGO",
    "name": "Chigorodo Arpt",
    "citycode": "IGO",
    "city": "Chigoro",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "COG",
    "name": "Mandinga Arpt",
    "citycode": "COG",
    "city": "Condoto",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "CUC",
    "name": "Camilo Dazo Arpt",
    "citycode": "CUC",
    "city": "Cucuta",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "EBG",
    "name": "El Bagre Arpt",
    "citycode": "EBG",
    "city": "El Bagre",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "EYP",
    "name": "El Yopal Arpt",
    "citycode": "EYP",
    "city": "El Yopal",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "GIR",
    "name": "Girardot Arpt",
    "citycode": "GIR",
    "city": "Girardot",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "GPI",
    "name": "Guapi Arpt",
    "citycode": "GPI",
    "city": "Guapi",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "IBE",
    "name": "Ibague Arpt",
    "citycode": "IBE",
    "city": "Ibague",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "IPI",
    "name": "San Luis Arpt",
    "citycode": "IPI",
    "city": "Ipiales",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "JUO",
    "name": "Jurado Arpt",
    "citycode": "JUO",
    "city": "Jurado",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "LCR",
    "name": "La Chorrera Arpt",
    "citycode": "LCR",
    "city": "La Chorrera",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "LPD",
    "name": "La Pedrera Arpt",
    "citycode": "LPD",
    "city": "La Pedrera",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "LMC",
    "name": "Lamacarena Arpt",
    "citycode": "LMC",
    "city": "Lamacarena",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "LET",
    "name": "General A V Cobo Arpt",
    "citycode": "LET",
    "city": "Leticia",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "MZL",
    "name": "La Nubia Arpt",
    "citycode": "MZL",
    "city": "Manizales",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "EOH",
    "name": "Enrique Olaya Herrara",
    "citycode": "MDE",
    "city": "Medellin",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "MVP",
    "name": "Mitu Arpt",
    "citycode": "MVP",
    "city": "Mitu",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "MTR",
    "name": "Los Garzones Arpt",
    "citycode": "MTR",
    "city": "Monteria",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "NAR",
    "name": "Nare Arpt",
    "citycode": "NAR",
    "city": "Nare",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "NCI",
    "name": "Necocli Arpt",
    "citycode": "NCI",
    "city": "Necocli",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "NVA",
    "name": "Aeropuerto Benito Sales",
    "citycode": "NVA",
    "city": "Neiva",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "NQU",
    "name": "Nuqui Arpt",
    "citycode": "NQU",
    "city": "Nuqui",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "OCV",
    "name": "Aguasclaras Arpt",
    "citycode": "OCV",
    "city": "Ocana",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "OTU",
    "name": "Otu Arpt",
    "citycode": "OTU",
    "city": "Otu Co",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "PSO",
    "name": "Cano Arpt",
    "citycode": "PSO",
    "city": "Pasto",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "PEI",
    "name": "Matecana Arpt",
    "citycode": "PEI",
    "city": "Pereira",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "PPN",
    "name": "Machangara Arpt",
    "citycode": "PPN",
    "city": "Popayan",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "PVA",
    "name": "Providencia Arpt",
    "citycode": "PVA",
    "city": "Providencia",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "PUU",
    "name": "Puerto Asis Arpt",
    "citycode": "PUU",
    "city": "Puerto Asis",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "PBE",
    "name": "Puerto Berrio Arpt",
    "citycode": "PBE",
    "city": "Puerto Berrio",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "PCR",
    "name": "Puerto Carreno Arpt",
    "citycode": "PCR",
    "city": "Puerto Carreno",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "PDA",
    "name": "Puerto Inirida Arpt",
    "citycode": "PDA",
    "city": "Puerto Inirida",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "LQM",
    "name": "Puerto Leguizamo Arpt",
    "citycode": "LQM",
    "city": "Puerto Leguizamo",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "UIB",
    "name": "Quibdo Arpt",
    "citycode": "UIB",
    "city": "Quibdo",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "RCH",
    "name": "RIOHACHA ARPT",
    "citycode": "RCH",
    "city": "Riohacha",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "RON",
    "name": "Rondon Arpt",
    "citycode": "RON",
    "city": "Rondon",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "ADZ",
    "name": "San Andres Island Arpt",
    "citycode": "ADZ",
    "city": "San Andres",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "SJE",
    "name": "San Jose Del Guaviaro Arpt",
    "citycode": "SJE",
    "city": "San Jose Guaviare",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "SVI",
    "name": "San Vincente Del Caguan",
    "citycode": "SVI",
    "city": "San Vincent",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "SMR",
    "name": "Simon Bolivar",
    "citycode": "SMR",
    "city": "Santa Marta",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "RVE",
    "name": "Saravena Arpt",
    "citycode": "RVE",
    "city": "Saravena",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "TCD",
    "name": "Tarapaca Arpt",
    "citycode": "TCD",
    "city": "Tarapaca",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "TAU",
    "name": "Tauramena Arpt",
    "citycode": "TAU",
    "city": "Tauramena",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "TLU",
    "name": "Tolu Arpt",
    "citycode": "TLU",
    "city": "Tolu",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "TCO",
    "name": "La Florida Arpt",
    "citycode": "TCO",
    "city": "Tumaco",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "TRB",
    "name": "Gonzalo Arpt",
    "citycode": "TRB",
    "city": "Turbo",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "VUP",
    "name": "Valledupar Arpt",
    "citycode": "VUP",
    "city": "Valleduper",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "VGZ",
    "name": "Villagarzon Arpt",
    "citycode": "VGZ",
    "city": "Villagarzon",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "VVC",
    "name": "La Vanguardia Arpt",
    "citycode": "VVC",
    "city": "Villavicencio",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "BOG",
    "name": "Eldorado Airport",
    "citycode": "BOG",
    "city": "Bogota",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "MDE",
    "name": "Jose Marie Cordova",
    "citycode": "MDE",
    "city": "Medellin",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "CCO",
    "name": "Carimagua",
    "citycode": "CCO",
    "city": "Carimagua",
    "country": "Colombia",
    "countrycode": "CO"
  },
  {
    "code": "HAH",
    "name": "Prince Said Ibrahim In",
    "citycode": "YVA",
    "city": "Moroni",
    "country": "Comoros",
    "countrycode": "KM"
  },
  {
    "code": "YVA",
    "name": "Iconi Arpt",
    "citycode": "YVA",
    "city": "Moroni",
    "country": "Comoros",
    "countrycode": "KM"
  },
  {
    "code": "FIH",
    "name": "Kinshasa Arpt",
    "citycode": "FIH",
    "city": "Kinshasa",
    "country": "Congo",
    "countrycode": "CD"
  },
  {
    "code": "PNR",
    "name": "Pointe Noire Arpt",
    "citycode": "PNR",
    "city": "Pointe Noire",
    "country": "Congo",
    "countrycode": "CG"
  },
  {
    "code": "MNO",
    "name": "Manono Arpt",
    "citycode": "MNO",
    "city": "Manono",
    "country": "Congo",
    "countrycode": "CD"
  },
  {
    "code": "NLO",
    "name": "N Dolo Airport",
    "citycode": "FIH",
    "city": "Kinshasa",
    "country": "Congo",
    "countrycode": "CD"
  },
  {
    "code": "GOM",
    "name": "Gomo International Arpt",
    "citycode": "GOM",
    "city": "Goma",
    "country": "Congo",
    "countrycode": "CD"
  },
  {
    "code": "BZV",
    "name": "Maya Maya Arpt",
    "citycode": "BZV",
    "city": "Brazzaville",
    "country": "Congo",
    "countrycode": "CG"
  },
  {
    "code": "FBM",
    "name": "Luano",
    "citycode": "FBM",
    "city": "Lubumbashi",
    "country": "Congo",
    "countrycode": "CD"
  },
  {
    "code": "MOI",
    "name": "Mitiaro Island Arpt",
    "citycode": "MOI",
    "city": "Mitiaro Island",
    "country": "Cook Islands",
    "countrycode": "CK"
  },
  {
    "code": "RAR",
    "name": "Rarotonga Arpt",
    "citycode": "RAR",
    "city": "Rarotonga",
    "country": "Cook Islands",
    "countrycode": "CK"
  },
  {
    "code": "AIT",
    "name": "Aitutaki Arpt",
    "citycode": "AIT",
    "city": "Aitutaki",
    "country": "Cook Islands",
    "countrycode": "CK"
  },
  {
    "code": "LIR",
    "name": "Liberia Arpt",
    "citycode": "LIR",
    "city": "Liberia",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "LIO",
    "name": "Limon Arpt",
    "citycode": "LIO",
    "city": "Limon",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "PJM",
    "name": "Puerto Jimenez ARPT",
    "citycode": "PJM",
    "city": "Puerto Jimenez",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "JAP",
    "name": "Punta Renes Arpt",
    "citycode": "JAP",
    "city": "Punta Renes",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "XQP",
    "name": "Quepos Arpt",
    "citycode": "XQP",
    "city": "Quepos",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "SJO",
    "name": "Juan Santa Maria Intl",
    "citycode": "SJO",
    "city": "San Jose",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "SYQ",
    "name": "Tobias Bolanos Intl",
    "citycode": "SJO",
    "city": "San Jose",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "SZC",
    "name": "Guanacaste Arpt",
    "citycode": "SZC",
    "city": "Santa Cruz",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "TNO",
    "name": "Tamarindo Arpt",
    "citycode": "TNO",
    "city": "Tamarindo",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "TMU",
    "name": "Tambor Arpt",
    "citycode": "TMU",
    "city": "Tambor",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "TTQ",
    "name": "Tortuquero Arpt",
    "citycode": "TTQ",
    "city": "Tortuquero",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "FON",
    "name": "Fortuna Arpt",
    "citycode": "FON",
    "city": "Fortuna",
    "country": "Costa Rica",
    "countrycode": "CR"
  },
  {
    "code": "URR",
    "name": "Urrao Arpt",
    "citycode": "URR",
    "city": "Urrao",
    "country": "Côte dIvoire",
    "countrycode": "CI"
  },
  {
    "code": "ASK",
    "name": "Yamoussoukro Arpt",
    "citycode": "ASK",
    "city": "Yamoussouro",
    "country": "Côte dIvoire",
    "countrycode": "CI"
  },
  {
    "code": "ABJ",
    "name": "Felix Houphouet Boigny Arpt",
    "citycode": "ABJ",
    "city": "Abidjan",
    "country": "Côte dIvoire",
    "countrycode": "CI"
  },
  {
    "code": "ZAD",
    "name": "Zadar Arpt",
    "citycode": "ZAD",
    "city": "Zadar",
    "country": "Croatia",
    "countrycode": "HR"
  },
  {
    "code": "DBV",
    "name": "Dubrovnik Arpt",
    "citycode": "DBV",
    "city": "Dubrovnik",
    "country": "Croatia",
    "countrycode": "HR"
  },
  {
    "code": "OSI",
    "name": "Osijek Arpt",
    "citycode": "OSI",
    "city": "Osijek",
    "country": "Croatia",
    "countrycode": "HR"
  },
  {
    "code": "PUY",
    "name": "Pula Arpt",
    "citycode": "PUY",
    "city": "Pula",
    "country": "Croatia",
    "countrycode": "HR"
  },
  {
    "code": "ZAG",
    "name": "Zagreb Arpt",
    "citycode": "ZAG",
    "city": "Zagreb",
    "country": "Croatia",
    "countrycode": "HR"
  },
  {
    "code": "RJK",
    "name": "Rijeka Arpt",
    "citycode": "RJK",
    "city": "Rijeka",
    "country": "Croatia",
    "countrycode": "HR"
  },
  {
    "code": "SPU",
    "name": "Split Arpt",
    "citycode": "SPU",
    "city": "Split",
    "country": "Croatia",
    "countrycode": "HR"
  },
  {
    "code": "GER",
    "name": "Rafael Cabrera Arpt",
    "citycode": "GER",
    "city": "Nueva Gerona",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "VRO",
    "name": "Kawama Arpt",
    "citycode": "VRO",
    "city": "Matanzas",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "CMW",
    "name": "Ign Agramonte Intl Arpt",
    "citycode": "CMW",
    "city": "Camaguey",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "HOG",
    "name": "Frank Pias Arpt",
    "citycode": "HOG",
    "city": "Holguin",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "GAO",
    "name": "Guantanamo Airport",
    "citycode": "GAO",
    "city": "Guantanamo",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "NBW",
    "name": "Guantanamo NAS",
    "citycode": "GAO",
    "city": "Guantanamo",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "CFG",
    "name": "Cienfuegos Arpt",
    "citycode": "CFG",
    "city": "Cienfuegos",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "AVI",
    "name": "Maximo Gomez Arpt",
    "citycode": "AVI",
    "city": "Ciego De Avila",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "CYO",
    "name": "Cayo Largo Del Sur Arpt",
    "citycode": "CYO",
    "city": "Cayo Largo Del Sur",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "CCC",
    "name": "Cayo Coco Arpt",
    "citycode": "CCC",
    "city": "Cayo Coco",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "HAV",
    "name": "Jose Marti Intl Arpt",
    "citycode": "HAV",
    "city": "Havana",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "MZO",
    "name": "Sierra Maestra Arpt",
    "citycode": "MZO",
    "city": "Manzanillo",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "VRA",
    "name": "Juan Gualberto Gomez Arpt",
    "citycode": "VRA",
    "city": "Varadero",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "TND",
    "name": "Trinidad CU Arpt",
    "citycode": "TND",
    "city": "Trinidad",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "SZJ",
    "name": "Siguanea Arpt",
    "citycode": "SZJ",
    "city": "Siguanea",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "SCU",
    "name": "Antonio Maceo Arpt",
    "citycode": "SCU",
    "city": "Santiago",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "SNU",
    "name": "Santa Clara Arpt",
    "citycode": "SNU",
    "city": "Santa Clara",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "USS",
    "name": "Sancti Spiritus Arpt",
    "citycode": "USS",
    "city": "Sancti Spiritus",
    "country": "Cuba",
    "countrycode": "CU"
  },
  {
    "code": "CUR",
    "name": "Areopuerto Hato Arpt",
    "citycode": "CUR",
    "city": "Curacao",
    "country": "Curaçao",
    "countrycode": "CW"
  },
  {
    "code": "PFO",
    "name": "Paphos Intl Airport",
    "citycode": "PFO",
    "city": "Paphos",
    "country": "Cyprus",
    "countrycode": "CY"
  },
  {
    "code": "NIC",
    "name": "Nicosia Airport",
    "citycode": "NIC",
    "city": "Nicosia",
    "country": "Cyprus",
    "countrycode": "CY"
  },
  {
    "code": "ECN",
    "name": "Ercan Airport",
    "citycode": "ECN",
    "city": "Ercan",
    "country": "Cyprus",
    "countrycode": "CY"
  },
  {
    "code": "LCA",
    "name": "Larnaca Intl",
    "citycode": "LCA",
    "city": "Larnaca",
    "country": "Cyprus",
    "countrycode": "CY"
  },
  {
    "code": "OSR",
    "name": "Leos Janacek Airport",
    "citycode": "OSR",
    "city": "Ostrava",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "MKA",
    "name": "Marianske Lazne Arpt",
    "citycode": "MKA",
    "city": "Marianske Lazne",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "KLV",
    "name": "Karlovy Vary Arpt",
    "citycode": "KLV",
    "city": "Karlovy Vary",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "BRQ",
    "name": "Turnay Arpt",
    "citycode": "BRQ",
    "city": "Brno",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "PRG",
    "name": "Ruzyne Arpt",
    "citycode": "PRG",
    "city": "Prague",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "GTW",
    "name": "Holesov Airport",
    "citycode": "GTW",
    "city": "Zlin",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "XYG",
    "name": "Prague Main Railway Station",
    "citycode": "XYG",
    "city": "Prague",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "UHE",
    "name": "Uherske Hradiste Kunovice Arpt",
    "citycode": "UHE",
    "city": "Uherske Hradiste",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "PED",
    "name": "Pardubice Arpt",
    "citycode": "PED",
    "city": "Pardubice",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "XJV",
    "name": "Ostrava Main Rail Station",
    "citycode": "OSR",
    "city": "Ostrava",
    "country": "Czech Republic",
    "countrycode": "CZ"
  },
  {
    "code": "FKI",
    "name": "Bangoka International Airport",
    "citycode": "FKI",
    "city": "Kisangani, Democratic Republic of the Congo",
    "country": "Democratic Republic of the Congo",
    "countrycode": "CD"
  },
  {
    "code": "TED",
    "name": "Thisted Arpt",
    "citycode": "TED",
    "city": "Thisted",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "EBJ",
    "name": "Esbjerg Arpt",
    "citycode": "EBJ",
    "city": "Esbjerg",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ZIM",
    "name": "Odense Bus Service",
    "citycode": "ODE",
    "city": "Odense",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ZBB",
    "name": "Esbjerg Railway Station",
    "citycode": "EBJ",
    "city": "Esbjerg",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "BYR",
    "name": "Laeso Airport",
    "citycode": "BYR",
    "city": "Laeso Island",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "KRP",
    "name": "Karup Arpt",
    "citycode": "KRP",
    "city": "Karup",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "FAE",
    "name": "Faeroe Airport",
    "citycode": "FAE",
    "city": "Faeroe Islands",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ZBQ",
    "name": "Odense Railroad Station",
    "citycode": "ODE",
    "city": "Odense",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ZTG",
    "name": "Aalborg Rail Station",
    "citycode": "AAL",
    "city": "Aalborg",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "AAL",
    "name": "Aalborg Arpt",
    "citycode": "AAL",
    "city": "Aalborg",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "AAR",
    "name": "Tirstrup Arpt",
    "citycode": "AAR",
    "city": "Aarhus",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "AJH",
    "name": "AARHUS RAIL STATION",
    "citycode": "AAR",
    "city": "Aarhus",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ZJH",
    "name": "Aarhus Rail Station",
    "citycode": "AAR",
    "city": "Aarhus",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ZID",
    "name": "Aarhus Bus Service",
    "citycode": "AAR",
    "city": "Aarhus",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "BLL",
    "name": "Billund Airport",
    "citycode": "BLL",
    "city": "Billund",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "RNN",
    "name": "Bornholm Arpt",
    "citycode": "RNN",
    "city": "Bornholm",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ZGH",
    "name": "Copenhagen Rail Station",
    "citycode": "CPH",
    "city": "Copenhagen",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "RKE",
    "name": "Roskilde Arpt",
    "citycode": "RKE",
    "city": "Roskilde",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ODE",
    "name": "Odense Airport",
    "citycode": "ODE",
    "city": "Odense",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "SQW",
    "name": "Skive Arpt",
    "citycode": "SQW",
    "city": "Skive",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "ZKN",
    "name": "Kive Railway Station",
    "citycode": "SQW",
    "city": "Skive",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "SKS",
    "name": "Skrydstrup Airport",
    "citycode": "SKS",
    "city": "Skrydstrup",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "XJE",
    "name": "Vojens Railway Station",
    "citycode": "SKS",
    "city": "Skrydstrup",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "SGD",
    "name": "Sonderborg Arpt",
    "citycode": "SGD",
    "city": "Sonderborg",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "CPH",
    "name": "Copenhagen Arpt",
    "citycode": "CPH",
    "city": "Copenhagen",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "QSG",
    "name": "Sonderborg Railway Stn",
    "citycode": "SGD",
    "city": "Sonderborg",
    "country": "Denmark",
    "countrycode": "DK"
  },
  {
    "code": "JIB",
    "name": "Ambouli Airport",
    "citycode": "JIB",
    "city": "Djibouti",
    "country": "Djibouti",
    "countrycode": "DJ"
  },
  {
    "code": "CIW",
    "name": "Canouan Island Minicipal",
    "citycode": "CIW",
    "city": "Canovan Island",
    "country": "Dominica",
    "countrycode": "DM"
  },
  {
    "code": "DCF",
    "name": "Canefield Arpt",
    "citycode": "DOM",
    "city": "Dominica",
    "country": "Dominica",
    "countrycode": "DM"
  },
  {
    "code": "MNI",
    "name": "Bramble Arpt",
    "citycode": "MNI",
    "city": "Montserrat",
    "country": "Dominica",
    "countrycode": "DM"
  },
  {
    "code": "MQS",
    "name": "Mustique Arpt",
    "citycode": "MQS",
    "city": "Mustique",
    "country": "Dominica",
    "countrycode": "DM"
  },
  {
    "code": "DOM",
    "name": "Melville Hall Arpt",
    "citycode": "DOM",
    "city": "Dominica",
    "country": "Dominica",
    "countrycode": "DM"
  },
  {
    "code": "STI",
    "name": "Santiago Municipal",
    "citycode": "STI",
    "city": "Santiago",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "SDQ",
    "name": "Las Americas Arpt",
    "citycode": "SDQ",
    "city": "Santo Domingo",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "BRX",
    "name": "Barahona Arpt",
    "citycode": "BRX",
    "city": "Barahona",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "EPS",
    "name": "El Portillo Arpt",
    "citycode": "EPS",
    "city": "El Portillo Samana",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "CBJ",
    "name": "Cabo Rojo Airport",
    "citycode": "CBJ",
    "city": "Cabo Rojo",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "PUJ",
    "name": "Punta Cana Arpt",
    "citycode": "PUJ",
    "city": "Punta Cana",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "LRM",
    "name": "La Romana Arpt",
    "citycode": "LRM",
    "city": "La Romana",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "AZS",
    "name": "Samana International Arpt",
    "citycode": "AZS",
    "city": "Samana",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "JBQ",
    "name": "Dr Joaquin Balaguer",
    "citycode": "JBQ",
    "city": "Higuero",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "HEX",
    "name": "Herrera Arpt",
    "citycode": "SDQ",
    "city": "Santo Domingo",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "POP",
    "name": "La Union Arpt",
    "citycode": "POP",
    "city": "Puerto Plata",
    "country": "Dominican Republic",
    "countrycode": "DO"
  },
  {
    "code": "ESM",
    "name": "Carlos Concha Torres International Airport",
    "citycode": "ESM",
    "city": "Esmeraldas",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "MEC",
    "name": "Manta Arpt",
    "citycode": "MEC",
    "city": "Manta",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "OCC",
    "name": "Aeropuerto Francisco De Orellana",
    "citycode": "OCC",
    "city": "Coca",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "UIO",
    "name": "Mariscal Sucr Arpt",
    "citycode": "UIO",
    "city": "Quito",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "SCY",
    "name": "San Cristobal Airport",
    "citycode": "SCY",
    "city": "San Cristobal",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "GPS",
    "name": "Baltra Arpt",
    "citycode": "GPS",
    "city": "Galapagos Is",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "GYE",
    "name": "Simon Bolivar Airport",
    "citycode": "GYE",
    "city": "Guayaquil",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "LTX",
    "name": "Cotapaxi Intl Arpt",
    "citycode": "LTX",
    "city": "Latacunga",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "CUE",
    "name": "Cuenca Arpt",
    "citycode": "CUE",
    "city": "Cuenca",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "LOH",
    "name": "Aeropuerto Camilo Enriquez",
    "citycode": "LOH",
    "city": "Loja",
    "country": "Ecuador",
    "countrycode": "EC"
  },
  {
    "code": "ABS",
    "name": "Abu Simbel Arpt",
    "citycode": "ABS",
    "city": "Abu Simbel",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "SSH",
    "name": "Sharm el Sheikh INTL Airport",
    "citycode": "SSH",
    "city": "Sharm El Sheik",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "CAI",
    "name": "Cairo Intl Arpt",
    "citycode": "CAI",
    "city": "Cairo",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "TCP",
    "name": "Ras An Naqb Arpt",
    "citycode": "TCP",
    "city": "Taba",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "HMB",
    "name": "Mubarak International Airport",
    "citycode": "HMB",
    "city": "Sohag",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "SEW",
    "citycode": "SEW",
    "city": "Siwa",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "MUH",
    "name": "Mersa Matruh Airport",
    "citycode": "MUH",
    "city": "Mersa Matruh",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "RMF",
    "name": "Marsa Alam Arpt",
    "citycode": "RMF",
    "city": "Marsa Alam",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "LXR",
    "name": "Luxor Airport",
    "citycode": "LXR",
    "city": "Luxor",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "UVL",
    "name": "Kharga Arpt",
    "citycode": "UVL",
    "city": "Kharga",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "HRG",
    "name": "Hurghada Airport",
    "citycode": "HRG",
    "city": "Hurghada",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "AAC",
    "name": "Al Arish International",
    "citycode": "AAC",
    "city": "El Arish",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "DAK",
    "name": "Dakhla Arpt",
    "citycode": "DAK",
    "city": "Dakhla Oasis",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "ASW",
    "name": "Daraw Arpt",
    "citycode": "ASW",
    "city": "Aswan",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "ATZ",
    "name": "Assiut Airport",
    "citycode": "ATZ",
    "city": "Assiut",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "ALY",
    "name": "El Nouzha Arpt",
    "citycode": "ALY",
    "city": "Alexandria",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "HBE",
    "name": "Borg El Arab Arpt",
    "citycode": "HBE",
    "city": "Borg El Arab",
    "country": "Egypt",
    "countrycode": "EG"
  },
  {
    "code": "SAL",
    "name": "Comalapa Intl Arpt",
    "citycode": "SAL",
    "city": "San Salvador",
    "country": "El Salvador",
    "countrycode": "SV"
  },
  {
    "code": "BBS",
    "name": "Blackbushe",
    "citycode": "BBS",
    "city": "Blackbushe",
    "country": "England",
    "countrycode": "UK"
  },
  {
    "code": "BSG",
    "name": "Bata Airport",
    "citycode": "BSG",
    "city": "Bata",
    "country": "Equatorial Guinea",
    "countrycode": "GQ"
  },
  {
    "code": "SSG",
    "name": "Santa Isabel Arpt",
    "citycode": "SSG",
    "city": "Malabo",
    "country": "Equatorial Guinea",
    "countrycode": "GQ"
  },
  {
    "code": "ASM",
    "name": "Asmara Intl Arpt",
    "citycode": "ASM",
    "city": "Asmara",
    "country": "Eritrea",
    "countrycode": "ER"
  },
  {
    "code": "TLL",
    "name": "Lennart Meri Airport",
    "citycode": "TLL",
    "city": "Tallinn",
    "country": "Estonia",
    "countrycode": "EE"
  },
  {
    "code": "URE",
    "name": "Kuressaare Arpt",
    "citycode": "URE",
    "city": "Kuressaare",
    "country": "Estonia",
    "countrycode": "EE"
  },
  {
    "code": "EPU",
    "name": "Parnu Arpt",
    "citycode": "EPU",
    "city": "Parnu",
    "country": "Estonia",
    "countrycode": "EE"
  },
  {
    "code": "TAY",
    "name": "Tartu Arpt",
    "citycode": "TAY",
    "city": "Tartu",
    "country": "Estonia",
    "countrycode": "EE"
  },
  {
    "code": "GDQ",
    "name": "Gondar Airport",
    "citycode": "GDQ",
    "city": "Gondar, Ethiopia",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "BJR",
    "name": "Bahar Dar Arpt",
    "citycode": "BJR",
    "city": "Bahar Dar",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "DIR",
    "name": "Aba Tenna D Yilma Arpt",
    "citycode": "DIR",
    "city": "Dire Dawa",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "GMB",
    "name": "Gambela Airport",
    "citycode": "GMB",
    "city": "Gambela",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "JIM",
    "name": "Jimma Arpt",
    "citycode": "JIM",
    "city": "Jimma",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "DEM",
    "name": "Dembidolo Airport",
    "citycode": "DEM",
    "city": "Dembidolo, Ethiopia",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "SHC",
    "name": "Shire Arpt",
    "citycode": "SHC",
    "city": "Shire Indaselassie",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "JIJ",
    "name": "Wilwal International Airport",
    "citycode": "JIJ",
    "city": "Jijiga",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "LLI",
    "name": "Lalibela Airport",
    "citycode": "LLI",
    "city": "Lalibela, Ethiopia",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "ADD",
    "name": "Bole Airport",
    "citycode": "ADD",
    "city": "Addis Ababa",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "AXU",
    "name": "Axum Airport",
    "citycode": "AXU",
    "city": "Aksum",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "ASO",
    "name": "Asosa Airport",
    "citycode": "ASO",
    "city": "Asosa, Ethiopia",
    "country": "Ethiopia",
    "countrycode": "ET"
  },
  {
    "code": "MPN",
    "name": "Mount Pleasant Arpt",
    "citycode": "MPN",
    "city": "Mount Pleasant",
    "country": "Falkland Islands (Malvinas)",
    "countrycode": "FK"
  },
  {
    "code": "KSA",
    "name": "Kosrae International",
    "citycode": "KSA",
    "city": "Kosrae",
    "country": "Federated States of Micronesia",
    "countrycode": "FM"
  },
  {
    "code": "SUV",
    "name": "Nausori Airport",
    "citycode": "SUV",
    "city": "Suva",
    "country": "Fiji",
    "countrycode": "FJ"
  },
  {
    "code": "TVU",
    "name": "Matei Arpt",
    "citycode": "TVU",
    "city": "Taveuni",
    "country": "Fiji",
    "countrycode": "FJ"
  },
  {
    "code": "BFJ",
    "name": "Ba Arpt",
    "citycode": "BFJ",
    "city": "Ba City",
    "country": "Fiji",
    "countrycode": "FJ"
  },
  {
    "code": "NAN",
    "name": "Nadi Intl",
    "citycode": "NAN",
    "city": "Nadi",
    "country": "Fiji",
    "countrycode": "FJ"
  },
  {
    "code": "LBS",
    "name": "Labasa Arpt",
    "citycode": "LBS",
    "city": "Labasa",
    "country": "Fiji",
    "countrycode": "FJ"
  },
  {
    "code": "PTF",
    "name": "Malololailai Arpt",
    "citycode": "PTF",
    "city": "Malololailai",
    "country": "Fiji",
    "countrycode": "FJ"
  },
  {
    "code": "SVU",
    "name": "Savusavu Airport",
    "citycode": "SVU",
    "city": "Savusavu",
    "country": "Fiji",
    "countrycode": "FJ"
  },
  {
    "code": "KTT",
    "name": "Kittila Arpt",
    "citycode": "KTT",
    "city": "Kittila",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "KAJ",
    "name": "Kajaani Airport",
    "citycode": "KAJ",
    "city": "Kajaani",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "KEM",
    "name": "Kemi Tornio Arpt",
    "citycode": "KEM",
    "city": "Kemi",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "HEM",
    "name": "Helsinki Malmi Arpt",
    "citycode": "HEL",
    "city": "Helsinki",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "IVL",
    "name": "Ivalo Arpt",
    "citycode": "IVL",
    "city": "Ivalo",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "JOE",
    "name": "Joensuu Arpt",
    "citycode": "JOE",
    "city": "Joensuu",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "VRK",
    "name": "Varkaus",
    "citycode": "VRK",
    "city": "Varkaus",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "YLI",
    "name": "Ylivieska Arpt",
    "citycode": "YLI",
    "city": "Ylivieska",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "LPP",
    "name": "Lappeenranta Arpt",
    "citycode": "LPP",
    "city": "Lappeenranta",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "MHQ",
    "name": "Mariehamn Arpt",
    "citycode": "MHQ",
    "city": "Mariehamn",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "MIK",
    "name": "Mikkeli Aprt",
    "citycode": "MIK",
    "city": "Mikkeli",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "OUL",
    "name": "Oulu Airport",
    "citycode": "OUL",
    "city": "Oulu",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "POR",
    "name": "Pori Airport",
    "citycode": "POR",
    "city": "Pori",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "RVN",
    "name": "Rovaniemi Arpt",
    "citycode": "RVN",
    "city": "Rovaniemi",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "SVL",
    "name": "Savonlinna Arpt",
    "citycode": "SVL",
    "city": "Savonlinna",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "TMP",
    "name": "Tampere Pirkkala Arpt",
    "citycode": "TMP",
    "city": "Tampere",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "SJY",
    "name": "Ilmajoki Arpt",
    "citycode": "SJY",
    "city": "Seinajoki",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "TKU",
    "name": "Turku Arpt",
    "citycode": "TKU",
    "city": "Turku",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "KAO",
    "name": "Kuusamo",
    "citycode": "KAO",
    "city": "Kuusamo",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "VAA",
    "name": "Vaasa Arpt",
    "citycode": "VAA",
    "city": "Vaasa",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "UTI",
    "name": "Utti Arpt",
    "citycode": "UTI",
    "city": "Kouvola",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "KOK",
    "name": "Kokkola Arpt",
    "citycode": "KOK",
    "city": "Kokkola",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "KUO",
    "name": "Kuopio Arpt",
    "citycode": "KUO",
    "city": "Kuopio",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "HEL",
    "name": "Helsinki Arpt",
    "citycode": "HEL",
    "city": "Helsinki",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "JYV",
    "name": "Jyvaskyla Arpt",
    "citycode": "JYV",
    "city": "Jyvaskyla",
    "country": "Finland",
    "countrycode": "FI"
  },
  {
    "code": "XHP",
    "name": "Garda de I Est",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "AGF",
    "name": "La Garenne Arpt",
    "citycode": "AGF",
    "city": "Agen",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "QXB",
    "name": "Aix en Provence Rail Station",
    "citycode": "QXB",
    "city": "Aix En Provence",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "AJA",
    "name": "Campo Dell Oro Arpt",
    "citycode": "AJA",
    "city": "Ajaccio",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LBI",
    "name": "Le Sequestre Arpt",
    "citycode": "LBI",
    "city": "Albi",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "QXG",
    "name": "Angers Railway Stattion",
    "citycode": "ANE",
    "city": "Angers",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ANE",
    "name": "Marce Arpt",
    "citycode": "ANE",
    "city": "Angers",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ANG",
    "name": "Brie Champniers",
    "citycode": "ANG",
    "city": "Angouleme",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "NCY",
    "name": "Annecy Meythet Arpt",
    "citycode": "NCY",
    "city": "Annecy",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "QRV",
    "name": "Arras Arpt",
    "citycode": "QRV",
    "city": "Arras",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "OBS",
    "name": "Vals Lanas Arpt",
    "citycode": "OBS",
    "city": "Aubenas",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "AUR",
    "name": "Tronquieres Arpt",
    "citycode": "AUR",
    "city": "Aurillac",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "AUF",
    "name": "Branches airport",
    "citycode": "AUF",
    "city": "Auxerre",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "AVN",
    "name": "Avignon Caumont Arpt",
    "citycode": "AVN",
    "city": "Avignon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XZN",
    "name": "Avignon Railway Station",
    "citycode": "AVN",
    "city": "Avignon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BIA",
    "name": "Poretta Airport",
    "citycode": "BIA",
    "city": "Bastia",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "EGC",
    "name": "Roumaniere Arpt",
    "citycode": "EGC",
    "city": "Bergerac",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BZR",
    "name": "Beziers Vias Arpt",
    "citycode": "BZR",
    "city": "Beziers",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BIQ",
    "name": "Bayonne Anglet Arpt",
    "citycode": "BIQ",
    "city": "Biarritz",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BOD",
    "name": "Bordeaux Arpt",
    "citycode": "BOD",
    "city": "Bordeaux",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ZFQ",
    "name": "Gare de Bordeaux",
    "citycode": "BOD",
    "city": "Bordeaux",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BOU",
    "name": "Bourges Arpt",
    "citycode": "BOU",
    "city": "Bourges",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BES",
    "name": "Guipavas Arpt",
    "citycode": "BES",
    "city": "Brest",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BVE",
    "name": "Laroche Airport",
    "citycode": "BVE",
    "city": "Brive La Gaill",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CFR",
    "name": "Carpiquet Arpt",
    "citycode": "CFR",
    "city": "Caen",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ZAO",
    "name": "Laberandie Arpt",
    "citycode": "ZAO",
    "city": "Cahors",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CQF",
    "name": "Aeroport Calais Dunkerque",
    "citycode": "CQF",
    "city": "Calais",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XFF",
    "name": "Frethun Railway Station",
    "citycode": "XFF",
    "city": "Calais City",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CLY",
    "name": "Ste Catherine Arpt",
    "citycode": "CLY",
    "city": "Calvi",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CEQ",
    "name": "Mandelieu Arpt",
    "citycode": "CEQ",
    "city": "Cannes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "JCA",
    "name": "Croisette Heliport",
    "citycode": "CEQ",
    "city": "Cannes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "QYW",
    "name": "Le Vieux Port Harbour",
    "citycode": "CEQ",
    "city": "Cannes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CCF",
    "name": "Salvaza",
    "citycode": "CCF",
    "city": "Carcassonne",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "DCM",
    "name": "Mazamet Arpt",
    "citycode": "DCM",
    "city": "Castres",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CMF",
    "name": "Chambery Aix Les Bains Arpt",
    "citycode": "CMF",
    "city": "Chambery",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CHR",
    "name": "Chateauroux Arpt",
    "citycode": "CHR",
    "city": "Chateauroux",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CER",
    "name": "Maupertius Arpt",
    "citycode": "CER",
    "city": "Cherbourg",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CET",
    "name": "Le Pontreau Arpt",
    "citycode": "CET",
    "city": "Cholet",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CFE",
    "name": "Aulnat Arpt",
    "citycode": "CFE",
    "city": "Clermont Ferrand",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CNG",
    "name": "Parvaud Arpt",
    "citycode": "CNG",
    "city": "Cognac",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CMR",
    "name": "Colmar Houssen Arpt",
    "citycode": "CMR",
    "city": "Colmar",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CVF",
    "name": "Courchevel Arpt",
    "citycode": "CVF",
    "city": "Courchevel",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CSF",
    "name": "Creil Arpt",
    "citycode": "CSF",
    "city": "Creil",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "DOL",
    "name": "Saint Gatien Arpt",
    "citycode": "DOL",
    "city": "Deauville",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "DPE",
    "name": "Dieppe Arpt",
    "citycode": "DPE",
    "city": "Dieppe",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "DIJ",
    "name": "Longvic Airport",
    "citycode": "DIJ",
    "city": "Dijon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "DNR",
    "name": "Pleurtuit Arpt",
    "citycode": "DNR",
    "city": "Dinard",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XED",
    "name": "Railway Service",
    "citycode": "XED",
    "city": "Disneyland Paris Rail",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "DLE",
    "name": "Tavaux Arpt",
    "citycode": "DLE",
    "city": "Dole",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "EPL",
    "name": "Mirecourt Arpt",
    "citycode": "EPL",
    "city": "Epinal",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "EVX",
    "name": "Evreux Arpt",
    "citycode": "EVX",
    "city": "Evreux",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "FSC",
    "name": "Sud Corse Arpt",
    "citycode": "FSC",
    "city": "Figari",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "FRJ",
    "name": "Frejus Arpt",
    "citycode": "FRJ",
    "city": "Frejus",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "GAT",
    "name": "Tallard Arpt",
    "citycode": "GAT",
    "city": "Gap France",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "GNB",
    "name": "Saint Geoirs Arpt",
    "citycode": "GNB",
    "city": "Grenoble",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "HZB",
    "name": "Merville Calonne Arpt",
    "citycode": "HZB",
    "city": "Hazebrouck",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LBY",
    "name": "Montoir Arpt",
    "citycode": "LBY",
    "city": "La Baule",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "EDM",
    "name": "Les Ajoncs Arpt",
    "citycode": "EDM",
    "city": "La Roche",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LRH",
    "name": "Laleu Airport",
    "citycode": "LRH",
    "city": "La Rochelle",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LAI",
    "name": "Servel Airport",
    "citycode": "LAI",
    "city": "Lannion",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LVA",
    "name": "Entrammes",
    "citycode": "LVA",
    "city": "Laval",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LEH",
    "name": "Octeville Arpt",
    "citycode": "LEH",
    "city": "Le Havre",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LME",
    "name": "Arnage Arpt",
    "citycode": "LME",
    "city": "Le Mans",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ZLN",
    "name": "Le Mans Railway Station",
    "citycode": "LME",
    "city": "Le Mans",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LPY",
    "name": "Loudes Airport",
    "citycode": "LPY",
    "city": "Le Puy",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LTQ",
    "name": "Le Touquet Arpt",
    "citycode": "LTQ",
    "city": "Le Touquet",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LSO",
    "name": "Talmont Arpt",
    "citycode": "LSO",
    "city": "Les Sables",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XFA",
    "name": "Lille Flanders Rail Service",
    "citycode": "LIL",
    "city": "Lille",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LIL",
    "name": "Lesquin Arpt",
    "citycode": "LIL",
    "city": "Lille",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XDB",
    "name": "Europe Railway Service",
    "citycode": "LIL",
    "city": "Lille",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LIG",
    "name": "Bellegarde Arpt",
    "citycode": "LIG",
    "city": "Limoges",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LRT",
    "name": "Lann Bihoue Arpt",
    "citycode": "LRT",
    "city": "Lorient",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LDE",
    "name": "Tarbes Intl Arpt",
    "citycode": "LDE",
    "city": "Lourdes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ZLX",
    "name": "British Rail Terminal",
    "citycode": "LYS",
    "city": "Lyon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XYL",
    "name": "Lyon Perrache",
    "citycode": "LYS",
    "city": "Lyon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LYN",
    "name": "Bron Arpt",
    "citycode": "LYS",
    "city": "Lyon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XYD",
    "name": "Port Dieu Rail Station",
    "citycode": "LYS",
    "city": "Lyon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XRF",
    "name": "Marseille Rail Station",
    "citycode": "MRS",
    "city": "Marseille",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MRS",
    "name": "Marseille Provence Arpt",
    "citycode": "MRS",
    "city": "Marseille",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BYF",
    "name": "Albert Arpt",
    "citycode": "BYF",
    "city": "Meaulte",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MVV",
    "name": "Megeve Arpt",
    "citycode": "MVV",
    "city": "Megeve",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MEN",
    "name": "Brenoux Airport",
    "citycode": "MEN",
    "city": "Mende",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MZM",
    "name": "Frescaty Airport",
    "citycode": "MZM",
    "city": "Metz",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XZI",
    "name": "Railway Station Metz",
    "citycode": "ETZ",
    "city": "Metz Nancy",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ETZ",
    "name": "Metz Nancy Lorraine",
    "citycode": "ETZ",
    "city": "Metz Nancy",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MCU",
    "name": "Gueret Arpt",
    "citycode": "MCU",
    "city": "Montlucon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XPJ",
    "name": "Montpellier Railway Station",
    "citycode": "MPL",
    "city": "Montpellier",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MPL",
    "name": "Mediterranee Arpt",
    "citycode": "MPL",
    "city": "Montpellier",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MXN",
    "name": "Morlaix Arpt",
    "citycode": "MXN",
    "city": "Morlaix",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MHL",
    "name": "Mulhouse",
    "citycode": "EAP",
    "city": "Mulhouse Basel",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "MLH",
    "name": "Mulhouse Euroairport French",
    "citycode": "EAP",
    "city": "Mulhouse Basel",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ZBA",
    "name": "Basel\/Mullhouse Rail Service",
    "citycode": "EAP",
    "city": "Mulhouse Basel",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ZDH",
    "name": "Basel\/Mullhouse SBB Rail Service",
    "citycode": "EAP",
    "city": "Mulhouse Basel",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ENC",
    "name": "Essey Airport",
    "citycode": "ENC",
    "city": "Nancy",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "NTE",
    "name": "Nantes Atlantique",
    "citycode": "NTE",
    "city": "Nantes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "QJZ",
    "name": "Nantes Rail Station",
    "citycode": "NTE",
    "city": "Nantes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "NVS",
    "name": "Nevers Arpt",
    "citycode": "NVS",
    "city": "Nevers",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "FNI",
    "name": "Nimes Airport",
    "citycode": "FNI",
    "city": "Nimes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ZYN",
    "name": "Nimes France Railway Station",
    "citycode": "FNI",
    "city": "Nimes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "NIT",
    "name": "Souche Airport",
    "citycode": "NIT",
    "city": "Niort",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ORE",
    "name": "Orleans Arpt",
    "citycode": "ORE",
    "city": "Orleans",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "DLP",
    "name": "Disneyland Paris Heliport",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XEX",
    "name": "Aerogare Des Invalides",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "VIY",
    "name": "Villacoublay Velizy",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XJY",
    "name": "PARIS MASSY TGV",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LBG",
    "name": "Le Bourget Arpt",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XGB",
    "name": "Gare Montparnasse Arpt",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XPG",
    "name": "Gare du Nord Railway Station",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XCR",
    "name": "Vatry Arpt",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "BVA",
    "name": "Beauvais Tille Arpt",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "JDP",
    "name": "Issy Les Moulineaux Arpt",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "PUF",
    "name": "Uzein Airport",
    "citycode": "PUF",
    "city": "Pau Fr",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "PGX",
    "name": "Perigueux Arpt",
    "citycode": "PGX",
    "city": "Perigueux",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "PGF",
    "name": "Llabanere Arpt",
    "citycode": "PGF",
    "city": "Perpignan",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "PIS",
    "name": "Biard Airport",
    "citycode": "PIS",
    "city": "Poitiers",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XOP",
    "name": "Poitiers Rail Station",
    "citycode": "PIS",
    "city": "Poitiers",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "POX",
    "name": "Cormeille En Vexin",
    "citycode": "POX",
    "city": "Pontoise",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "PRP",
    "name": "Propriano Arpt",
    "citycode": "PRP",
    "city": "Propriano",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "UIP",
    "name": "Pluguffan Arpt",
    "citycode": "UIP",
    "city": "Quimper",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XIZ",
    "name": "Champagne Railway Station",
    "citycode": "RHE",
    "city": "Reims",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "RHE",
    "name": "Champagne Arpt",
    "citycode": "RHE",
    "city": "Reims",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ZFJ",
    "name": "Gare de Rennes",
    "citycode": "RNS",
    "city": "Rennes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "RNS",
    "name": "Saint Jacques Arpt",
    "citycode": "RNS",
    "city": "Rennes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "RNE",
    "name": "Renaison Arpt",
    "citycode": "RNE",
    "city": "Roanne",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "RCO",
    "name": "St Agnant Arpt",
    "citycode": "RCO",
    "city": "Rochefort",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "RDZ",
    "name": "Marcillac",
    "citycode": "RDZ",
    "city": "Rodez",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "URO",
    "name": "Boos Airport",
    "citycode": "URO",
    "city": "Rouen",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XSS",
    "name": "Soissons Railway Station",
    "citycode": "XSS",
    "city": "Soissons",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "SBK",
    "name": "Tremuson Armor Arpt",
    "citycode": "SBK",
    "city": "St Brieuc",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "EBU",
    "name": "Boutheon Arpt",
    "citycode": "EBU",
    "city": "St Etienne",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "SNR",
    "name": "Montoir Airport",
    "citycode": "SNR",
    "city": "St Nazaire",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "JSZ",
    "name": "St Tropez Hlpt",
    "citycode": "LTT",
    "city": "St Tropez",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XPZ",
    "name": "Harbourarpt",
    "citycode": "LTT",
    "city": "St Tropez",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LTT",
    "name": "La Mole Arpt",
    "citycode": "LTT",
    "city": "St Tropez",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XER",
    "name": "Strasbourg Bus Service",
    "citycode": "SXB",
    "city": "Strasbourg",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "SXB",
    "name": "Enzheim Arpt",
    "citycode": "SXB",
    "city": "Strasbourg",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XWG",
    "name": "Strasbourg Rail Station",
    "citycode": "XWG",
    "city": "Strasbourg City",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XZV",
    "name": "TGV Station Toulon",
    "citycode": "TLN",
    "city": "Toulon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "TLN",
    "name": "Le Palyvestre Arpt",
    "citycode": "TLN",
    "city": "Toulon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "TUF",
    "name": "Saint Symphorien Arpt",
    "citycode": "TUF",
    "city": "Tours",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XSH",
    "name": "St Pierre Corps Rail St",
    "citycode": "TUF",
    "city": "Tours",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XJT",
    "name": "Tours France Railway Station",
    "citycode": "TUF",
    "city": "Tours",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "TNF",
    "name": "Toussus Le Noble Arpt",
    "citycode": "TNF",
    "city": "Toussus Le Noble",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "QYR",
    "name": "Barberey airport",
    "citycode": "QYR",
    "city": "Troyes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "VAF",
    "name": "Chabeuil Airport",
    "citycode": "VAF",
    "city": "Valence",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "XHK",
    "name": "Valence Railway Station",
    "citycode": "VAF",
    "city": "Valence",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "VNE",
    "name": "Muecon Arpt",
    "citycode": "VNE",
    "city": "Vannes",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "VHY",
    "name": "Charmeil Arpt",
    "citycode": "VHY",
    "city": "Vichy",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CDG",
    "name": "Charles De Gaulle Intl Arpt",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "LYS",
    "name": "Lyon Saint Exupery Arpt",
    "citycode": "LYS",
    "city": "Lyon",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "NCE",
    "name": "Cote D Azur Arpt",
    "citycode": "NCE",
    "city": "Nice",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "ORY",
    "name": "Orly Arpt",
    "citycode": "PAR",
    "city": "Paris",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "TLS",
    "name": "Blagnac Arpt",
    "citycode": "TLS",
    "city": "Toulouse",
    "country": "France",
    "countrycode": "FR"
  },
  {
    "code": "CAY",
    "name": "Rochambeau Airport",
    "citycode": "CAY",
    "city": "Cayenne",
    "country": "French Guiana",
    "countrycode": "GF"
  },
  {
    "code": "LDX",
    "name": "Saint Laurent du Maroni Arpt",
    "citycode": "LDX",
    "city": "Saint Laurent du Maroni",
    "country": "French Guiana",
    "countrycode": "GF"
  },
  {
    "code": "BOB",
    "name": "Motu Mute Arpt",
    "citycode": "BOB",
    "city": "Bora Bora",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "AAA",
    "name": "Anaa Arpt",
    "citycode": "AAA",
    "city": "Anaa",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "GMR",
    "name": "Gambier Island Arpt",
    "citycode": "GMR",
    "city": "Gambier Island",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "AUQ",
    "name": "Atuona Arpt",
    "citycode": "AUQ",
    "city": "Atuona",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "RGI",
    "name": "Rangiroa Arpt",
    "citycode": "RGI",
    "city": "Rangiroa Island",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "RFP",
    "name": "Raiatea Arpt",
    "citycode": "RFP",
    "city": "Raiatea",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "PPT",
    "name": "Intl Tahiti Faaa",
    "citycode": "PPT",
    "city": "Papeete",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "MOZ",
    "name": "Temae Airport",
    "citycode": "MOZ",
    "city": "Moorea",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "MAU",
    "name": "Maupiti Arpt",
    "citycode": "MAU",
    "city": "Maupiti",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "HUH",
    "name": "Huahine Arpt",
    "citycode": "HUH",
    "city": "Huahine",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "HOI",
    "name": "Hao Island Arpt",
    "citycode": "HOI",
    "city": "Hao Island",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "TIH",
    "name": "Tikehau Arpt",
    "citycode": "TIH",
    "city": "Tikehau",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "RMT",
    "name": "Rimatara Airport",
    "citycode": "RMT",
    "city": "Rimatara",
    "country": "French Polynesia",
    "countrycode": "PF"
  },
  {
    "code": "POG",
    "name": "Port Gentil Arpt",
    "citycode": "POG",
    "city": "Port Gentil",
    "country": "Gabon",
    "countrycode": "GA"
  },
  {
    "code": "MVB",
    "name": "Franceville Mvengue Arpt",
    "citycode": "MVB",
    "city": "Franceville Mvengue",
    "country": "Gabon",
    "countrycode": "GA"
  },
  {
    "code": "LBV",
    "name": "Libreville Arpt",
    "citycode": "LBV",
    "city": "Libreville",
    "country": "Gabon",
    "countrycode": "GA"
  },
  {
    "code": "BJL",
    "name": "Banjul International Airport",
    "citycode": "BJL",
    "city": "Banjul",
    "country": "Gambia",
    "countrycode": "GM"
  },
  {
    "code": "KUT",
    "name": "Kutaisi International Airport",
    "citycode": "KUT",
    "city": "Kutaisi",
    "country": "Georgia",
    "countrycode": "GE"
  },
  {
    "code": "BUS",
    "name": "Batumi Arpt",
    "citycode": "BUS",
    "city": "Batumi",
    "country": "Georgia",
    "countrycode": "GE"
  },
  {
    "code": "TBS",
    "name": "Tbilisi International Arpt",
    "citycode": "TBS",
    "city": "Tbilisi",
    "country": "Georgia",
    "countrycode": "GE"
  },
  {
    "code": "ZPP",
    "name": "Rail Station Reutlingen",
    "citycode": "ZPP",
    "city": "Reutlingen",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "TXL",
    "name": "Tegel Airport",
    "citycode": "BER",
    "city": "Berlin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "RMS",
    "name": "Ramsteim Arpt",
    "citycode": "RMS",
    "city": "Ramstein",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "PEF",
    "name": "Peenemuende Arpt",
    "citycode": "PEF",
    "city": "Peenemuende",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "PAD",
    "name": "Paderborn Airport",
    "citycode": "PAD",
    "city": "Paderborn",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZPE",
    "name": "Osnabrueck Rail Service",
    "citycode": "ZPE",
    "city": "Osnabruck",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZOX",
    "name": "Oberammergau Airport",
    "citycode": "ZOX",
    "city": "Oberammergau",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZAQ",
    "name": "Nuremberg Rail Station",
    "citycode": "NUE",
    "city": "Nuremberg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "NUE",
    "name": "Nuremberg Arpt",
    "citycode": "NUE",
    "city": "Nuremberg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "NDZ",
    "name": "Cuxhaven Arpt",
    "citycode": "NDZ",
    "city": "Nordholz Spieka",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "EUM",
    "name": "Neumuenster Arpt",
    "citycode": "EUM",
    "city": "Neumuenster",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "FNB",
    "name": "Neubrandenburg Arpt",
    "citycode": "FNB",
    "city": "Neubrandenburg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZMU",
    "name": "Munich HBF Railway Service",
    "citycode": "MUC",
    "city": "Munich",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QWD",
    "name": "Mittenwald Airport",
    "citycode": "QWD",
    "city": "Mittenwald",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "MHG",
    "name": "Mannheim Neuostheim",
    "citycode": "MHG",
    "city": "Mannheim Germany",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "CSO",
    "name": "Magdeburg Cochstedt  Airport",
    "citycode": "CSO",
    "city": "Magdeburg Cochstedt",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "LBC",
    "name": "Blankensee Arpt",
    "citycode": "LBC",
    "city": "Luebeck",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "LEJ",
    "name": "Leipzig Arpt",
    "citycode": "LEJ",
    "city": "Leipzig",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "LHA",
    "name": "Lahr Arpt",
    "citycode": "LHA",
    "city": "Lahr",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "KEL",
    "name": "Holtenau Arpt",
    "citycode": "KEL",
    "city": "Kiel",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "KSF",
    "name": "Kassel Calden Arpt",
    "citycode": "KSF",
    "city": "Kassel",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "FKB",
    "name": "Soellingen Arpt",
    "citycode": "FKB",
    "city": "Karlsruhe Baden Baden",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZCC",
    "name": "Baden Rail Station",
    "citycode": "FKB",
    "city": "Karlsruhe Baden Baden",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "KLT",
    "name": "Kaiserslautern Rail Station",
    "citycode": "KLT",
    "city": "Kaiserslautern",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "JUI",
    "name": "Juist Arpt",
    "citycode": "JUI",
    "city": "Juist",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "HOQ",
    "name": "Hof Pirk Arpt",
    "citycode": "HOQ",
    "city": "Hof De",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "HDF",
    "name": "Heringsdorf Arpt",
    "citycode": "HDF",
    "city": "Heringsdorf",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "HGL",
    "name": "Helgoland Arpt",
    "citycode": "HGL",
    "city": "Helgoland",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "HDB",
    "name": "Heidelberg Arpt",
    "citycode": "HDB",
    "city": "Heidelberg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "HEI",
    "name": "Heide Arpt",
    "citycode": "HEI",
    "city": "Heide Buesum",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "HAJ",
    "name": "Hanover Arpt",
    "citycode": "HAJ",
    "city": "Hanover",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZVM",
    "name": "Hanover Messe BF Railway Stn",
    "citycode": "HAJ",
    "city": "Hanover",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZVR",
    "name": "Hanover HBF Railway Service",
    "citycode": "HAJ",
    "city": "Hanover",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZMB",
    "name": "Hamburg Railway Service",
    "citycode": "HAM",
    "city": "Hamburg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "XFW",
    "name": "Finkenwerder Arpt",
    "citycode": "HAM",
    "city": "Hamburg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "GUT",
    "name": "Guetersloh Arpt",
    "citycode": "GUT",
    "city": "Gutersloh",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "GTI",
    "name": "Guettin Arpt",
    "citycode": "GTI",
    "city": "Guettin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "FRZ",
    "name": "Fritzlar Airbase",
    "citycode": "FRZ",
    "city": "Fritzlar",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "FDH",
    "name": "Friedrichshafen Lowenthal",
    "citycode": "FDH",
    "city": "Friedrichshafen",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZRB",
    "name": "Frankfurt HBF Railway Service",
    "citycode": "FRA",
    "city": "Frankfurt",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "HHN",
    "name": "Hahn Arpt",
    "citycode": "FRA",
    "city": "Frankfurt",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QGV",
    "name": "Neu Isenburg Arpt",
    "citycode": "FRA",
    "city": "Frankfurt",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "FLF",
    "name": "Schaferhaus Arpt",
    "citycode": "FLF",
    "city": "Flensburg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ESS",
    "name": "Essen Arpt",
    "citycode": "ESS",
    "city": "Essen",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ERF",
    "name": "Erfurt Arpt",
    "citycode": "ERF",
    "city": "Erfurt",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "EME",
    "name": "Emden Arpt",
    "citycode": "EME",
    "city": "Emden",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "EIB",
    "name": "Eisenach Arpt",
    "citycode": "EIB",
    "city": "Eisenach",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "MGL",
    "name": "Moenchen Gi Dus Exp",
    "citycode": "DUS",
    "city": "Dusseldorf",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QDU",
    "name": "Dusseldorf Rail Station",
    "citycode": "DUS",
    "city": "Dusseldorf",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "NRN",
    "name": "Niederrhein Arpt",
    "citycode": "DUS",
    "city": "Dusseldorf",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "DRS",
    "name": "Dresden Arpt",
    "citycode": "DRS",
    "city": "Dresden",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "DTM",
    "name": "Wickede Dortmund Arpt",
    "citycode": "DTM",
    "city": "Dortmund",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "FCN",
    "name": "Cuxhaven Nordholz Arpt",
    "citycode": "FCN",
    "city": "Cuxhaven",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QKU",
    "name": "Cologne Railway Station",
    "citycode": "CGN",
    "city": "Cologne",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QKL",
    "name": "Cologne Railroad Station",
    "citycode": "CGN",
    "city": "Cologne",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "CGN",
    "name": "Koeln Bonn Arpt",
    "citycode": "CGN",
    "city": "Cologne",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BRV",
    "name": "Bremerhaven Arpt",
    "citycode": "BRV",
    "city": "Bremerhaven",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BRE",
    "name": "Bremen Airport",
    "citycode": "BRE",
    "city": "Bremen",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BWE",
    "name": "Braunschweig Arpt",
    "citycode": "BWE",
    "city": "Braunschweig",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BBJ",
    "name": "Bitburg Air Base",
    "citycode": "BBJ",
    "city": "Bitburg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BFE",
    "name": "Bielefeld Arpt",
    "citycode": "BFE",
    "city": "Bielefeld",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "THF",
    "name": "Tempelhof Arpt",
    "citycode": "BER",
    "city": "Berlin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BER",
    "name": "Berlin Brandenburg Airport",
    "citycode": "BER",
    "city": "Berlin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QWC",
    "name": "Berlin Zoo Railway Station",
    "citycode": "BER",
    "city": "Berlin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QPP",
    "name": "Berlin Hauptbahnof Railway St",
    "citycode": "BER",
    "city": "Berlin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QWB",
    "name": "Berlin Railway Station",
    "citycode": "BER",
    "city": "Berlin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BYU",
    "name": "Bindlacher Berg Arpt",
    "citycode": "BYU",
    "city": "Bayreuth",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BBH",
    "name": "Barth Arpt",
    "citycode": "BBH",
    "city": "Barth",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "AGB",
    "name": "Muehlhausen Arpt",
    "citycode": "AGB",
    "city": "Augsburg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "AOC",
    "name": "Altenburg Nobitz Arpt",
    "citycode": "AOC",
    "city": "Altenburg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "AAH",
    "name": "Aachen Merzbruck Arpt",
    "citycode": "AAH",
    "city": "Aachen",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "FMO",
    "name": "Muenster Airport",
    "citycode": "FMO",
    "city": "Muenster",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "DUS",
    "name": "Dusseldorf Arpt",
    "citycode": "DUS",
    "city": "Dusseldorf",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "MUC",
    "name": "Munich Intl Arpt",
    "citycode": "MUC",
    "city": "Munich",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "WVN",
    "name": "Wilhelmshaven Arpt",
    "citycode": "WVN",
    "city": "Wilhelmshaven",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "WIE",
    "name": "Air Base",
    "citycode": "UWE",
    "city": "Wiesbaden",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "GWT",
    "name": "Westerland Airport",
    "citycode": "GWT",
    "city": "Westerland",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "AGE",
    "name": "Flugplatz Arpt",
    "citycode": "AGE",
    "city": "Wangerooge",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZQF",
    "name": "Trier Arpt",
    "citycode": "ZQF",
    "city": "Trier",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZWS",
    "name": "Stuttgart Railway Service",
    "citycode": "STR",
    "city": "Stuttgart",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "RBM",
    "name": "Wallmuhle",
    "citycode": "RBM",
    "city": "Straubing",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "SPM",
    "name": "Spangdahlem Air Base",
    "citycode": "SPM",
    "city": "Spangdahlem",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZSG",
    "name": "Sonneberg Railway Station",
    "citycode": "ZSG",
    "city": "Sonneberg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "SGE",
    "name": "Siegerland Arpt",
    "citycode": "SGE",
    "city": "Siegen",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "SZW",
    "name": "Parchim Arpt",
    "citycode": "ZSR",
    "city": "Schwerin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "SCN",
    "name": "Ensheim Arpt",
    "citycode": "SCN",
    "city": "Saarbruecken",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "QFZ",
    "name": "Saarbruecken Rail Station",
    "citycode": "SCN",
    "city": "Saarbruecken",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "STR",
    "name": "Stuttgart Arpt",
    "citycode": "STR",
    "city": "Stuttgart",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "SXF",
    "name": "Schoenefeld Arpt",
    "citycode": "BER",
    "city": "Berlin",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "RLG",
    "name": "Laage Arpt",
    "citycode": "RLG",
    "city": "Rostock Laage",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ZRX",
    "name": "Riesa Railway Station",
    "citycode": "ZRX",
    "city": "Riesa",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "IES",
    "name": "Goehlis Arpt",
    "citycode": "ZRX",
    "city": "Riesa",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "BNJ",
    "name": "Bonn Railroad Station",
    "citycode": "BNJ",
    "city": "Bonn",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "HAM",
    "name": "Fuhlsbuettel Arpt",
    "citycode": "HAM",
    "city": "Hamburg",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "FRA",
    "name": "Frankfurt Intl",
    "citycode": "FRA",
    "city": "Frankfurt",
    "country": "Germany",
    "countrycode": "DE"
  },
  {
    "code": "ACC",
    "name": "Kotoka Airport",
    "citycode": "ACC",
    "city": "Accra",
    "country": "Ghana",
    "countrycode": "GH"
  },
  {
    "code": "KMS",
    "name": "Kumasiairport",
    "citycode": "KMS",
    "city": "Kumasi",
    "country": "Ghana",
    "countrycode": "GH"
  },
  {
    "code": "TML",
    "name": "Tamale Arpt",
    "citycode": "TML",
    "city": "Tamale",
    "country": "Ghana",
    "countrycode": "GH"
  },
  {
    "code": "GIB",
    "name": "North Front Arpt",
    "citycode": "GIB",
    "city": "Gibraltar",
    "country": "Gibraltar",
    "countrycode": "GI"
  },
  {
    "code": "JKL",
    "name": "Kalymnos Arpt",
    "citycode": "JKL",
    "city": "Kalymnos Island",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "AGQ",
    "name": "Agrinion Arpt",
    "citycode": "AGQ",
    "city": "Agrinion",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "AXD",
    "name": "Dhmokritos Arpt",
    "citycode": "AXD",
    "city": "Alexandroupolis",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JTY",
    "name": "Astypalaia Arpt",
    "citycode": "JTY",
    "city": "Astypalaia Island",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JKH",
    "name": "Chios Arpt",
    "citycode": "JKH",
    "city": "Chios",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "HER",
    "name": "N Kazantzakis Arpt",
    "citycode": "HER",
    "city": "Heraklion",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JIK",
    "name": "Ikaria Arpt",
    "citycode": "JIK",
    "city": "Ikaria Island",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "IOA",
    "name": "Ioannina Arpt",
    "citycode": "IOA",
    "city": "Ioannina",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "KLX",
    "name": "Kalamata Airport",
    "citycode": "KLX",
    "city": "Kalamata",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "AOK",
    "name": "Karpathos Arpt",
    "citycode": "AOK",
    "city": "Karpathos",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "KZS",
    "name": "Kastelorizo Arpt",
    "citycode": "KZS",
    "city": "Kastelorizo",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "KSO",
    "name": "Aristoteles Arpt",
    "citycode": "KSO",
    "city": "Kastoria",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "KVA",
    "name": "Megas Alexandros",
    "citycode": "KVA",
    "city": "Kavalla",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "EFL",
    "name": "Argostoli Arpt",
    "citycode": "EFL",
    "city": "Kefalonia",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "KIT",
    "name": "Kithira Arpt",
    "citycode": "KIT",
    "city": "Kithira",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "KGS",
    "name": "Kos Arpt",
    "citycode": "KGS",
    "city": "Kos Gr",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "LRA",
    "name": "Larisa Arpt",
    "citycode": "LRA",
    "city": "Larisa",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "LRS",
    "name": "Leros Arpt",
    "citycode": "LRS",
    "city": "Leros",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "LXS",
    "name": "Limnos Airport",
    "citycode": "LXS",
    "city": "Limnos",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "MJT",
    "name": "Mytilene Arpt",
    "citycode": "MJT",
    "city": "Mytilene",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JNX",
    "name": "Naxos Arpt",
    "citycode": "JNX",
    "city": "Naxos",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "PAS",
    "name": "Paros Community Arpt",
    "citycode": "PAS",
    "city": "Paros",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "GPA",
    "name": "Araxos Arpt",
    "citycode": "GPA",
    "city": "Patras",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "PKH",
    "name": "Alexion Arpt",
    "citycode": "PKH",
    "city": "Portoheli",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "PVK",
    "name": "Aktion Arpt",
    "citycode": "PVK",
    "city": "Preveza",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "RHO",
    "name": "Diagoras Arpt",
    "citycode": "RHO",
    "city": "Rhodes",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "SMI",
    "name": "Samos Arpt",
    "citycode": "SMI",
    "city": "Samos",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JSH",
    "name": "Sitia Municipal Airport",
    "citycode": "JSH",
    "city": "Sitia",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JSI",
    "name": "Skiathos Arpt",
    "citycode": "JSI",
    "city": "Skiathos",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "SKU",
    "name": "Skiros Arpt",
    "citycode": "SKU",
    "city": "Skiros",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "SPJ",
    "name": "Sparta Arpt",
    "citycode": "SPJ",
    "city": "Sparta",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JSY",
    "name": "Syros Island Arpt",
    "citycode": "JSY",
    "city": "Syros Island",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "VOL",
    "name": "Nea Anchialos Arpt",
    "citycode": "VOL",
    "city": "Volos",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "ZTH",
    "name": "Zakinthos Arpt",
    "citycode": "ZTH",
    "city": "Zakinthos",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "SKG",
    "name": "Makedonia Arpt",
    "citycode": "SKG",
    "city": "Thessaloniki",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JTR",
    "name": "Santorini Arpt",
    "citycode": "JTR",
    "city": "Thira Island",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "JMK",
    "name": "Mykonos Greece Arpt",
    "citycode": "JMK",
    "city": "Mykonos",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "CHQ",
    "name": "Souda Arpt",
    "citycode": "CHQ",
    "city": "Chania",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "CFU",
    "name": "I Kapodistrias Arpt",
    "citycode": "CFU",
    "city": "Kerkyra",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "ATH",
    "name": "Eleftherios Venizelos Intl Arpt",
    "citycode": "ATH",
    "city": "Athens",
    "country": "Greece",
    "countrycode": "GR"
  },
  {
    "code": "LLU",
    "name": "Alluitsup Paa Arpt",
    "citycode": "LLU",
    "city": "Alluitsup Paa",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "SFJ",
    "name": "Sondre Stromfjord Arpt",
    "citycode": "SFJ",
    "city": "Kangerlussuaq",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JEG",
    "name": "Aasiaat Arpt",
    "citycode": "JEG",
    "city": "Aasiaat",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JJU",
    "name": "Qaqortoq Arpt",
    "citycode": "JJU",
    "city": "Qaqortoq",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JQA",
    "name": "Qaarsut Arpt",
    "citycode": "JQA",
    "city": "Qaarsut",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "GOH",
    "name": "Nuuk Arpt",
    "citycode": "GOH",
    "city": "Nuuk",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "UAK",
    "name": "Narsarsuaq Arpt",
    "citycode": "UAK",
    "city": "Narsarsuaq",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JHS",
    "name": "Sisimiut Arpt",
    "citycode": "JHS",
    "city": "Sisimiut",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JNS",
    "name": "Narsaq Heleport",
    "citycode": "JNS",
    "city": "Narsaq",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JGR",
    "name": "Groennedal Heliport",
    "citycode": "JGR",
    "city": "Groennedal",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JNN",
    "name": "Nanortalik Arpt",
    "citycode": "JNN",
    "city": "Nanortalik",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JSU",
    "name": "Maniitsoq Heleport",
    "citycode": "JSU",
    "city": "Maniitsoq",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "KUS",
    "name": "Kulusuk Arpt",
    "citycode": "KUS",
    "city": "Kulusuk",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "JAV",
    "name": "Ilulissat Arpt",
    "citycode": "JAV",
    "city": "Ilulissat",
    "country": "Greenland",
    "countrycode": "GL"
  },
  {
    "code": "GND",
    "name": "Maurice Bishop Intl",
    "citycode": "GND",
    "city": "Grenada",
    "country": "Grenada",
    "countrycode": "GD"
  },
  {
    "code": "MSB",
    "name": "Marigot Seaplane Base",
    "citycode": "MSB",
    "city": "Marigot St Martin",
    "country": "Guadeloupe",
    "countrycode": "GP"
  },
  {
    "code": "BBR",
    "name": "Baillif Arpt",
    "citycode": "BBR",
    "city": "Basse Terre",
    "country": "Guadeloupe",
    "countrycode": "GP"
  },
  {
    "code": "DSD",
    "name": "La Desirade Arpt",
    "citycode": "DSD",
    "city": "La Desirade",
    "country": "Guadeloupe",
    "countrycode": "GP"
  },
  {
    "code": "SFG",
    "name": "Esperance Airport",
    "citycode": "SFG",
    "city": "St Martin",
    "country": "Guadeloupe",
    "countrycode": "GP"
  },
  {
    "code": "SBH",
    "name": "St Jean Arpt",
    "citycode": "SBH",
    "city": "St Barthelemy",
    "country": "Guadeloupe",
    "countrycode": "GP"
  },
  {
    "code": "CCE",
    "name": "Grand Case Arpt",
    "citycode": "CCE",
    "city": "Saint Martin",
    "country": "Guadeloupe",
    "countrycode": "GP"
  },
  {
    "code": "PTP",
    "name": "Le Raizet Arpt",
    "citycode": "PTP",
    "city": "Pointe A Pitre",
    "country": "Guadeloupe",
    "countrycode": "GP"
  },
  {
    "code": "GUM",
    "name": "Antonio B Won Pat Intl",
    "citycode": "GUM",
    "city": "Guam",
    "country": "Guam",
    "countrycode": "GU"
  },
  {
    "code": "NGM",
    "name": "Agana NAS",
    "citycode": "GUM",
    "city": "Guam",
    "country": "Guam",
    "countrycode": "GU"
  },
  {
    "code": "UAM",
    "name": "Anderson Air Force Base",
    "citycode": "GUM",
    "city": "Guam",
    "country": "Guam",
    "countrycode": "GU"
  },
  {
    "code": "NRV",
    "name": "USCG Shore Street Guam",
    "citycode": "GUM",
    "city": "Guam",
    "country": "Guam",
    "countrycode": "GU"
  },
  {
    "code": "LCF",
    "name": "Las Vegas Airport",
    "citycode": "LCF",
    "city": "Rio Dulce",
    "country": "Guatemala",
    "countrycode": "GT"
  },
  {
    "code": "GUA",
    "name": "La Aurora Arpt",
    "citycode": "GUA",
    "city": "Guatemala City",
    "country": "Guatemala",
    "countrycode": "GT"
  },
  {
    "code": "FRS",
    "name": "Flores Airport",
    "citycode": "FRS",
    "city": "Flores",
    "country": "Guatemala",
    "countrycode": "GT"
  },
  {
    "code": "PKJ",
    "name": "Playa Grand Arpt",
    "citycode": "PKJ",
    "city": "Playa Grande",
    "country": "Guatemala",
    "countrycode": "GT"
  },
  {
    "code": "PBR",
    "name": "Puerto Barrios Arpt",
    "citycode": "PBR",
    "city": "Puerto Barrios",
    "country": "Guatemala",
    "countrycode": "GT"
  },
  {
    "code": "RER",
    "name": "Base Aerea Del Sur Arpt",
    "citycode": "RER",
    "city": "Retalhuleu",
    "country": "Guatemala",
    "countrycode": "GT"
  },
  {
    "code": "TKM",
    "name": "El Peten Arpt",
    "citycode": "TKM",
    "city": "Tikal",
    "country": "Guatemala",
    "countrycode": "GT"
  },
  {
    "code": "CKY",
    "name": "Conakry Airport",
    "citycode": "CKY",
    "city": "Conakry",
    "country": "Guinea",
    "countrycode": "GN"
  },
  {
    "code": "OXB",
    "name": "Airport Osvaldo Viera",
    "citycode": "OXB",
    "city": "Bissau",
    "country": "Guinea-Bissau",
    "countrycode": "GW"
  },
  {
    "code": "GEO",
    "name": "Cheddi Jagan Intl",
    "citycode": "GEO",
    "city": "Georgetown",
    "country": "Guyana",
    "countrycode": "GY"
  },
  {
    "code": "PRR",
    "name": "Paruima Airport",
    "citycode": "PRR",
    "city": "Paruima, Guyana",
    "country": "Guyana",
    "countrycode": "GY"
  },
  {
    "code": "OGL",
    "name": "Ogle",
    "citycode": "OGL",
    "city": "Georgetown",
    "country": "Guyana",
    "countrycode": "GY"
  },
  {
    "code": "PAP",
    "name": "Mais Gate Arpt",
    "citycode": "PAP",
    "city": "Port Au Prince",
    "country": "Haiti",
    "countrycode": "HT"
  },
  {
    "code": "CAP",
    "name": "Cap Haitien Numicipal",
    "citycode": "CAP",
    "city": "Cap Haitien",
    "country": "Haiti",
    "countrycode": "HT"
  },
  {
    "code": "JEE",
    "name": "Jeremie",
    "citycode": "JEE",
    "city": "Jeremie",
    "country": "Haiti",
    "countrycode": "HT"
  },
  {
    "code": "TGU",
    "name": "Toncontin Arpt",
    "citycode": "TGU",
    "city": "Tegucigalpa",
    "country": "Honduras",
    "countrycode": "HN"
  },
  {
    "code": "CDD",
    "name": "Cauquira Arpt",
    "citycode": "CDD",
    "city": "Cauquira",
    "country": "Honduras",
    "countrycode": "HN"
  },
  {
    "code": "XPL",
    "name": "Palmerola Air Base",
    "citycode": "XPL",
    "city": "Comayagua",
    "country": "Honduras",
    "countrycode": "HN"
  },
  {
    "code": "UII",
    "name": "Utila Honduras",
    "citycode": "UII",
    "city": "Utila Honduras",
    "country": "Honduras",
    "countrycode": "HN"
  },
  {
    "code": "LCE",
    "name": "Goloson Intl Arpt",
    "citycode": "LCE",
    "city": "La Ceiba",
    "country": "Honduras",
    "countrycode": "HN"
  },
  {
    "code": "SAP",
    "name": "Ramon Villeda Morales Arpt",
    "citycode": "SAP",
    "city": "San Pedro Sula",
    "country": "Honduras",
    "countrycode": "HN"
  },
  {
    "code": "TEA",
    "name": "Tela Arpt",
    "citycode": "TEA",
    "city": "Tela",
    "country": "Honduras",
    "countrycode": "HN"
  },
  {
    "code": "RTB",
    "name": "Roatan Arpt",
    "citycode": "RTB",
    "city": "Roatan",
    "country": "Honduras",
    "countrycode": "HN"
  },
  {
    "code": "HKG",
    "name": "Hong Kong Intl",
    "citycode": "HKG",
    "city": "Hong Kong",
    "country": "Hong Kong",
    "countrycode": "HK"
  },
  {
    "code": "HHP",
    "name": "Hong Kong Heliport",
    "citycode": "HKG",
    "city": "Hong Kong",
    "country": "Hong Kong",
    "countrycode": "HK"
  },
  {
    "code": "BUD",
    "name": "Liszt Ferenc Arpt",
    "citycode": "BUD",
    "city": "Budapest",
    "country": "Hungary",
    "countrycode": "HU"
  },
  {
    "code": "XXJ",
    "name": "Deli Area Railway Stations",
    "citycode": "BUD",
    "city": "Budapest",
    "country": "Hungary",
    "countrycode": "HU"
  },
  {
    "code": "XXQ",
    "name": "Deli Area Railway Stattions",
    "citycode": "BUD",
    "city": "Budapest",
    "country": "Hungary",
    "countrycode": "HU"
  },
  {
    "code": "DEB",
    "name": "Debrecen Arpt",
    "citycode": "DEB",
    "city": "Debrecen",
    "country": "Hungary",
    "countrycode": "HU"
  },
  {
    "code": "QGY",
    "name": "Gyor Airport",
    "citycode": "QGY",
    "city": "Gyor",
    "country": "Hungary",
    "countrycode": "HU"
  },
  {
    "code": "MCQ",
    "name": "Miskolc Arpt",
    "citycode": "MCQ",
    "city": "Miskolc",
    "country": "Hungary",
    "countrycode": "HU"
  },
  {
    "code": "PEV",
    "name": "Pecs Arpt",
    "citycode": "PEV",
    "city": "Pecs",
    "country": "Hungary",
    "countrycode": "HU"
  },
  {
    "code": "SOB",
    "name": "Saarmelleek Balaton Arpt",
    "citycode": "SOB",
    "city": "Saarmelleek",
    "country": "Hungary",
    "countrycode": "HU"
  },
  {
    "code": "KEF",
    "name": "Reykjavik Keflavik Intl Arpt",
    "citycode": "REK",
    "city": "Reykjavik",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "IFJ",
    "name": "Isafjordur Arpt",
    "citycode": "IFJ",
    "city": "Isafjordur",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "AEY",
    "name": "Akureyri",
    "citycode": "AEY",
    "city": "Akureyri",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "VEY",
    "name": "Vestmannaeyjar Arpt",
    "citycode": "VEY",
    "city": "Vestmannaeyjar",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "RKV",
    "name": "Reykjavik Domestic Arpt",
    "citycode": "REK",
    "city": "Reykjavik",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "EGS",
    "name": "Egilsstadir Arpt",
    "citycode": "EGS",
    "city": "Egilsstadir",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "SAK",
    "name": "Saudarkrokur Arpt",
    "citycode": "SAK",
    "city": "Saudarkrokur",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "HFN",
    "name": "Hornafjordur Arpt",
    "citycode": "HFN",
    "city": "Hornafjordur",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "HZK",
    "name": "Husavik Arpt",
    "citycode": "HZK",
    "city": "Husavik",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "OPA",
    "name": "Kopasker Arpt",
    "citycode": "OPA",
    "city": "Kopasker",
    "country": "Iceland",
    "countrycode": "IS"
  },
  {
    "code": "NMB",
    "name": "Daman Airport",
    "citycode": "NMB",
    "city": "Daman",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "CDP",
    "name": "Cuddapah Airport",
    "citycode": "CDP",
    "city": "Cuddapah",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "COH",
    "name": "Cooch Behar Airport",
    "citycode": "COH",
    "city": "Cooch Behar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "VTZ",
    "name": "Vishakhapatnam",
    "citycode": "VTZ",
    "city": "Vishakhapatanam",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "VNS",
    "name": "Lal Bahadur Shastri Arpt",
    "citycode": "VNS",
    "city": "Varanasi",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "CBD",
    "name": "Car Nicobar Air Force Base",
    "citycode": "CBD",
    "city": "Car Nicobar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "VGA",
    "name": "Vijayawada",
    "citycode": "VGA",
    "city": "Vijayawada",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PAB",
    "name": "Bilaspur Airport",
    "citycode": "PAB",
    "city": "Bilaspur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "UDR",
    "name": "Maharana Pratap Arpt",
    "citycode": "UDR",
    "city": "Udaipur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BKB",
    "citycode": "BKB",
    "city": "Bikaner",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "TRZ",
    "name": "Tiruchirapally Civil Arpt",
    "citycode": "TRZ",
    "city": "Tiruchirappali",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "TRV",
    "name": "Thiruvananthapuram Arpt",
    "citycode": "TRV",
    "city": "Thiruvananthapuram",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BHJ",
    "name": "Rudra Mata Arpt",
    "citycode": "BHJ",
    "city": "Bhuj",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BHU",
    "name": "Bhavnagar Arpt",
    "citycode": "BHU",
    "city": "Bhavnagar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BUP",
    "name": "Bhatinda Air Force Station",
    "citycode": "BUP",
    "city": "Bhatinda",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BEP",
    "name": "Bellary Airport",
    "citycode": "BEP",
    "city": "Bellary",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXG",
    "name": "Sambre Arpt",
    "citycode": "IXG",
    "city": "Belgaum",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "RGH",
    "name": "Balurghat Airport",
    "citycode": "RGH",
    "city": "Balurghat",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "SXR",
    "name": "Srinagar Arpt",
    "citycode": "SXR",
    "city": "Srinagar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXV",
    "name": "Along Airport",
    "citycode": "IXV",
    "city": "Along",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "STV",
    "name": "Surat Airport",
    "citycode": "STV",
    "city": "Surat",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXD",
    "name": "Bamrauli Arpt",
    "citycode": "IXD",
    "city": "Allahabad",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "AKD",
    "name": "Akola Airport",
    "citycode": "AKD",
    "city": "Akola",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "AJL",
    "name": "Lengpui Airport",
    "citycode": "AJL",
    "city": "Aizawl",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "AGR",
    "name": "Kheria Arpt",
    "citycode": "AGR",
    "city": "Agra",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "RPR",
    "name": "Raipur Arpt",
    "citycode": "RPR",
    "city": "Raipur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "RJA",
    "name": "Rajahmundry Arpt",
    "citycode": "RJA",
    "city": "Rajahmundry",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "AGX",
    "name": "Agatti Aerodrome",
    "citycode": "AGX",
    "city": "Agatti Island",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "RAJ",
    "name": "Rajkot Civil Arpt",
    "citycode": "RAJ",
    "city": "Rajkot",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PNQ",
    "name": "Lohegaon Arpt",
    "citycode": "PNQ",
    "city": "Pune",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PAT",
    "name": "Jai Prakash Narayan Arpt",
    "citycode": "PAT",
    "city": "Patna",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "NAG",
    "name": "Dr Ambedkar Intl Arpt",
    "citycode": "NAG",
    "city": "Nagpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "MAA",
    "name": "Chennai Arpt",
    "citycode": "MAA",
    "city": "Chennai",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "LKO",
    "name": "Amausi Arpt",
    "citycode": "LKO",
    "city": "Lucknow",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JSA",
    "name": "Jaisalmer Airport",
    "citycode": "RAJ",
    "city": "Rajasthan",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "ATQ",
    "name": "Raja Sansi Arpt",
    "citycode": "ATQ",
    "city": "Amritsar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JLR",
    "name": "Jabalpur Airport",
    "citycode": "JLR",
    "city": "Jabalpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JGA",
    "name": "Govardhanpur Arpt",
    "citycode": "JGA",
    "city": "Jamnagar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JDH",
    "name": "Jodhpur Arpt",
    "citycode": "JDH",
    "city": "Jodhpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JAI",
    "name": "Sanganeer Arpt",
    "citycode": "JAI",
    "city": "Jaipur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXZ",
    "name": "Veer Savarkar Arpt",
    "citycode": "IXZ",
    "city": "Port Blair",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXU",
    "name": "Chikkalthana Arpt",
    "citycode": "IXU",
    "city": "Aurangabad",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXR",
    "name": "Birsa Munda Arpt",
    "citycode": "IXR",
    "city": "Ranchi",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXM",
    "name": "Madurai Airport",
    "citycode": "IXM",
    "city": "Madurai",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXJ",
    "name": "Satwari Arpt",
    "citycode": "IXJ",
    "city": "Jammu",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXE",
    "name": "Bajpe Arpt",
    "citycode": "IXE",
    "city": "Mangalore",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXC",
    "name": "Chandigarh Arpt",
    "citycode": "IXC",
    "city": "Chandigarh",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXB",
    "name": "Bagdogra Arpt",
    "citycode": "IXB",
    "city": "Bagdogra",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXA",
    "name": "Singerbhil Arpt",
    "citycode": "IXA",
    "city": "Agartala",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IMF",
    "name": "Tulihal Arpt",
    "citycode": "IMF",
    "city": "Imphal",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IDR",
    "name": "Devi Ahilya Bai Holkar Arpt",
    "citycode": "IDR",
    "city": "Indore",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "HYD",
    "name": "Shamshabad Rajiv Gandhi Intl Arpt",
    "citycode": "HYD",
    "city": "Hyderabad",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "GOP",
    "name": "Gorakhpur Arpt",
    "citycode": "GOP",
    "city": "Gorakhpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "GOI",
    "name": "Dabolim Arpt",
    "citycode": "GOI",
    "city": "Goa In",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "GAY",
    "name": "Gaya Arpt",
    "citycode": "GAY",
    "city": "Gaya",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "GAU",
    "name": "Lokpriya Gopinath Bordoloi Intl Arpt",
    "citycode": "GAU",
    "city": "Guwahati",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BBI",
    "name": "Biju Patnaik Arpt",
    "citycode": "BBI",
    "city": "Bhubaneswar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BDQ",
    "name": "Vadodara Arpt",
    "citycode": "BDQ",
    "city": "Vadodara",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BHO",
    "name": "Raja Bhoj Arpt",
    "citycode": "BHO",
    "city": "Bhopal",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BLR",
    "name": "Bengaluru Intl Arpt",
    "citycode": "BLR",
    "city": "Bengaluru",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "VDY",
    "name": "Jindal Vijaynagar Airport",
    "citycode": "VDY",
    "city": "Jindal Vijaynagar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "AIP",
    "name": "Jalandhar Airport",
    "citycode": "AIP",
    "city": "Jalandhar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BOM",
    "name": "Chhatrapati Shivaji",
    "citycode": "BOM",
    "city": "Mumbai",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JRG",
    "name": "Jharsuguda Airport",
    "citycode": "JRG",
    "city": "Odisha",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "SAG",
    "name": "Shirdi",
    "citycode": "SAG",
    "city": "Shirdi",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "DBR",
    "name": "Darbhanga Airport",
    "citycode": "DBR",
    "city": "Darbhanga",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "CCJ",
    "name": "Kozhikode Arpt",
    "citycode": "CCJ",
    "city": "Kozhikode",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "CCU",
    "name": "Netaji Subhas Chandra Bose Intl",
    "citycode": "CCU",
    "city": "Kolkata",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "AMD",
    "name": "Sardar Vallabh Bhai Patel Intl Arpt",
    "citycode": "AMD",
    "city": "Ahmedabad",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "GBI",
    "name": "Kalaburagi Airport",
    "citycode": "GBI",
    "city": "Gulbarga",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "CJB",
    "name": "Peelamedu Airport",
    "citycode": "CJB",
    "city": "Coimbatore",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "CNN",
    "name": "Kannur International Airport",
    "citycode": "CNN",
    "city": "Kannur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "COK",
    "name": "Cochin Internation Arpt",
    "citycode": "COK",
    "city": "Kochi",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "DEL",
    "name": "Delhi Indira Gandhi Intl",
    "citycode": "DEL",
    "city": "Delhi",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "DIB",
    "name": "Mohanbari Arpt",
    "citycode": "DIB",
    "city": "Dibrugarh",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "DMU",
    "name": "Dimapur Airport",
    "citycode": "DMU",
    "city": "Dimapur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXX",
    "name": "Bidar Airport",
    "citycode": "IXX",
    "city": "Bidar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "ISK",
    "name": "Ozar Airport",
    "citycode": "ISK",
    "city": "Nasik",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXN",
    "name": "khowai Airport",
    "citycode": "IXN",
    "city": "khowai",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "ZER",
    "name": "Zero Airport",
    "citycode": "ZER",
    "city": "Zero",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "WGC",
    "name": "Warangalairport",
    "citycode": "WGC",
    "city": "Warangal",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "TCR",
    "name": "Tuticorin Arpt",
    "citycode": "TCR",
    "city": "Tuticorin",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JLG",
    "name": "Jalgaon Airport",
    "citycode": "JLG",
    "city": "Jalgaon",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "KQH",
    "name": "Ajmer Airport",
    "citycode": "KQH",
    "city": "Ajmer",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "TIR",
    "name": "Tirupati Arpt",
    "citycode": "TIR",
    "city": "Tirupati",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "TJV",
    "name": "Thanjavur Air Force Station",
    "citycode": "TJV",
    "city": "Thanjavur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "TEI",
    "name": "Tezu Airport",
    "citycode": "TEI",
    "city": "Tezu",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "TEZ",
    "name": "Salonibari Airport",
    "citycode": "TEZ",
    "city": "Tezpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "SLV",
    "name": "Simla Arpt",
    "citycode": "SLV",
    "city": "Simla",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXS",
    "name": "Kumbhigram Arpt",
    "citycode": "IXS",
    "city": "Silchar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "SSE",
    "name": "Solapur Airport",
    "citycode": "SSE",
    "city": "Sholapur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "SHL",
    "name": "Shillong Airport",
    "citycode": "SHL",
    "city": "Shillong",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "TNI",
    "name": "Satna Airport",
    "citycode": "TNI",
    "city": "Satna Airport",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "SXV",
    "name": "Salem Arpt",
    "citycode": "SXV",
    "city": "Salem",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "RUP",
    "name": "Rupsi Airport",
    "citycode": "RUP",
    "city": "Rupsi",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "RRK",
    "name": "Rourkela Airport",
    "citycode": "RRK",
    "city": "Rourkela",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "RTC",
    "name": "Ratnagiri Airport",
    "citycode": "RTC",
    "city": "Ratnagiri",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BEK",
    "name": "Sri Sathya Sai Airport",
    "citycode": "BEK",
    "city": "Rae Bareli",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PUI",
    "name": "Purnea Airport",
    "citycode": "PUI",
    "city": "Purnea",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PBD",
    "name": "Porbandar Arpt",
    "citycode": "PBD",
    "city": "Porbandar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PNY",
    "name": "Pondicherry Airport",
    "citycode": "PNY",
    "city": "Pondicherry",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXP",
    "name": "Pathankot Arpt",
    "citycode": "IXP",
    "city": "Pathankot",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXT",
    "name": "Pasighat Airport",
    "citycode": "IXT",
    "city": "Pasighat",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "NDC",
    "name": "Nanded Airport",
    "citycode": "NDC",
    "city": "Nanded",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "MYQ",
    "name": "Mysore Arpt",
    "citycode": "MYQ",
    "city": "Mysore",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "MZU",
    "name": "Muzzafarpur Airport",
    "citycode": "MZU",
    "city": "Muzzafarpu",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "LDA",
    "name": "Malda Airport",
    "citycode": "LDA",
    "city": "Malda",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "LUH",
    "name": "Ludhiana Arpt",
    "citycode": "LUH",
    "city": "Ludhiana",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXI",
    "name": "Lilabari Arpt",
    "citycode": "IXI",
    "city": "Lilabari",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXL",
    "name": "Leh Kushok Bakula Rimpochee Arpt",
    "citycode": "IXL",
    "city": "Leh IN",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "UJA",
    "name": "Ujjain",
    "citycode": "UJA",
    "city": "Ujjain",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PYG",
    "name": "Pakyong",
    "citycode": "PYG",
    "city": "Pakyong",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "XAM",
    "name": "Amreli",
    "citycode": "XAM",
    "city": "Amreli",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "MUI",
    "name": "Muirpur Airport",
    "citycode": "MUI",
    "city": "Muirpur Airport",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "REW",
    "name": "Rewa",
    "citycode": "REW",
    "city": "Rewa",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PGH",
    "name": "Pantnagar",
    "citycode": "PGH",
    "city": "Pantnagar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "XKU",
    "name": "Kumarakom",
    "citycode": "XKU",
    "city": "Kumarakom",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "XLL",
    "name": "Alleppey",
    "citycode": "XLL",
    "city": "Alleppey",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "DHM",
    "name": "Dharamsala",
    "citycode": "DHM",
    "city": "Dharamsala",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "PUT",
    "name": "Puttaprathe",
    "citycode": "PUT",
    "city": "Puttaprathe",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IHX",
    "name": "Kailashahar",
    "citycode": "IHX",
    "city": "Kailashahar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "VID",
    "name": "Bellary",
    "citycode": "VID",
    "city": "Bellary",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BDP",
    "name": "Bhadrapur Airport",
    "citycode": "BDP",
    "city": "Bhadrapur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "RDP",
    "name": "Kazi Nazrul Islam Airport",
    "citycode": "RDP",
    "city": "Durgapur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "LTU",
    "name": "Latur Arpt",
    "citycode": "LTU",
    "city": "Latur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "KUU",
    "name": "Bhuntar Arpt",
    "citycode": "KUU",
    "city": "Kulu",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "KTU",
    "name": "Kota Airport",
    "citycode": "KTU",
    "city": "Kota",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "KLH",
    "name": "Kolhapur Arpt",
    "citycode": "KLH",
    "city": "Kolhapur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "HJR",
    "name": "Khajuraho Arpt",
    "citycode": "HJR",
    "city": "Khajuraho",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXK",
    "name": "Keshod Airport",
    "citycode": "IXK",
    "city": "Keshod",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "KNU",
    "name": "Chakeri Arpt",
    "citycode": "KNU",
    "city": "Kanpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXY",
    "name": "Kandla Arpt",
    "citycode": "IXY",
    "city": "Kandla",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXQ",
    "name": "Kamalpur Airport",
    "citycode": "IXQ",
    "city": "Kamalpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXH",
    "name": "Kailashahar Airport",
    "citycode": "IXH",
    "city": "Kailashahar",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JRH",
    "name": "Rowriah Arpt",
    "citycode": "JRH",
    "city": "Jorhat",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "IXW",
    "name": "Sonari Arpt",
    "citycode": "IXW",
    "city": "Jamshedpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "JGB",
    "name": "Jagdalpur Airport",
    "citycode": "JGB",
    "city": "Jagdalpur",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BPM",
    "name": "Begumpet Airport",
    "citycode": "HYD",
    "city": "Hyderabad",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "HBX",
    "name": "Hubli Arpt",
    "citycode": "HBX",
    "city": "Hubli",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "GWL",
    "name": "Gwalior Airport",
    "citycode": "GWL",
    "city": "Gwalior",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "DIU",
    "name": "Diu Arpt",
    "citycode": "DIU",
    "city": "Diu In",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "DED",
    "name": "Jolly Grant Airport",
    "citycode": "DED",
    "city": "Dehra Dun",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "DAE",
    "name": "Daparizo Airport",
    "citycode": "DAE",
    "city": "Daparizo",
    "country": "India",
    "countrycode": "IN"
  },
  {
    "code": "BMU",
    "name": "Bima Airport",
    "citycode": "BMU",
    "city": "Bima",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "GTO",
    "name": "Jalaluddin Airport",
    "citycode": "GTO",
    "city": "Gorontalo",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "CGK",
    "name": "Soekarno Hatta Intl",
    "citycode": "JKT",
    "city": "Jakarta",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "DPS",
    "name": "Ngurah Rai Arpt",
    "citycode": "DPS",
    "city": "Denpasar Bali",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "JOG",
    "name": "Adisutjipto Arpt",
    "citycode": "JOG",
    "city": "Yogyakarta",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "SUB",
    "name": "Juanda Arpt",
    "citycode": "SUB",
    "city": "Surabaya",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "KNO",
    "name": "Kualanamu Airport",
    "citycode": "KNO",
    "city": "Sumatera",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "DTB",
    "name": "Silangit",
    "citycode": "DTB",
    "city": "Siborong-Borong",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "AHI",
    "name": "Amahai Airport",
    "citycode": "AHI",
    "city": "Amahai",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "AMQ",
    "name": "Pattimura Arpt",
    "citycode": "AMQ",
    "city": "Ambon",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "BPN",
    "name": "Sepingan Arpt",
    "citycode": "BPN",
    "city": "Balikpapan",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "BTJ",
    "name": "Blang Bintang Arpt",
    "citycode": "BTJ",
    "city": "Banda Aceh",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "TKG",
    "name": "Branti Arpt",
    "citycode": "TKG",
    "city": "Bandar Lampung",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "KJT",
    "name": "Kertajati Intl",
    "citycode": "KJT",
    "city": "Majalengka",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "BDO",
    "name": "Husein Sastranegara Arpt",
    "citycode": "BDO",
    "city": "Bandung",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "BDJ",
    "name": "Sjamsudin Noor Arpt",
    "citycode": "BDJ",
    "city": "Banjarmasin",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "BTH",
    "name": "Hang Nadim Arpt",
    "citycode": "BTH",
    "city": "Batam",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "BKS",
    "name": "Padangkemiling Arpt",
    "citycode": "BKS",
    "city": "Bengkulu",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "BIK",
    "name": "Mokmer Arpt",
    "citycode": "BIK",
    "city": "Biak",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "CXP",
    "name": "Tunggul Wulung Arpt",
    "citycode": "CXP",
    "city": "Cilacap",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "PKY",
    "name": "Tjilik Riwut",
    "citycode": "PKY",
    "city": "Palangkaraya",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "CBN",
    "name": "Penggung Arpt",
    "citycode": "CBN",
    "city": "Cirebon",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "AAP",
    "name": "AP Tumenggung Pranoto",
    "citycode": "SRI",
    "city": "Samarinda",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "GNS",
    "name": "Gunungsitoli Arpt",
    "citycode": "GNS",
    "city": "Gunungsitoli",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "HLP",
    "name": "Halim Perdana Kusuma Arpt",
    "citycode": "JKT",
    "city": "Jakarta",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "DJB",
    "name": "Sultan Taha Syarifudin Arpt",
    "citycode": "DJB",
    "city": "Jambi",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "DJJ",
    "name": "Sentani Arpt",
    "citycode": "DJJ",
    "city": "Jayapura",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "KDI",
    "name": "Wolter Monginsidi Airport",
    "citycode": "KDI",
    "city": "Kendari",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "KOE",
    "name": "El Tari Aiport",
    "citycode": "KOE",
    "city": "Kupang",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "LBJ",
    "name": "Komodo Airport",
    "citycode": "LBJ",
    "city": "Labuan Bajo",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "TNJ",
    "name": "Raja Haji Fisabilillah Airport",
    "citycode": "TNJ",
    "city": "Tanjung Pinang, Indonesia",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "MLG",
    "name": "Malang Airport",
    "citycode": "MLG",
    "city": "Malang",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "MDC",
    "name": "Samratulang Arpt",
    "citycode": "MDC",
    "city": "Manado",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "MKW",
    "name": "Rendani Arpt",
    "citycode": "MKW",
    "city": "Manokwari",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "ABU",
    "name": "Haliwen Airport",
    "citycode": "ABU",
    "city": "Atambua, Indonesia",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "AMI",
    "name": "Selaparang Airport",
    "citycode": "AMI",
    "city": "Mataram",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "MES",
    "name": "Polonia Arpt",
    "citycode": "MES",
    "city": "Medan",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "NAM",
    "name": "Namlea Arpt",
    "citycode": "NAM",
    "city": "Namlea",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "PDG",
    "name": "Tabing Arpt",
    "citycode": "PDG",
    "city": "Padang",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "PLM",
    "name": "Mahmud Badaruddin Li Arpt",
    "citycode": "PLM",
    "city": "Palembang",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "PKN",
    "name": "Iskandar Airport",
    "citycode": "PKN",
    "city": "Pangkalan Bun (Pangkalanbuun), Indonesia",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "PLW",
    "name": "Mutiara Arpt",
    "citycode": "PLW",
    "city": "Palu",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "PGK",
    "name": "Pangkalpinang Arpt",
    "citycode": "PGK",
    "city": "Pangkalpinang",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "PKU",
    "name": "Simpang Tiga Arpt",
    "citycode": "PKU",
    "city": "Pekanbaru",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "PNK",
    "name": "Supadio Arpt",
    "citycode": "PNK",
    "city": "Pontianak",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "SAU",
    "name": "Tardamu Airport",
    "citycode": "SAU",
    "city": "Savu (Sawu)",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "LOP",
    "name": "Lombok International Airport",
    "citycode": "LOP",
    "city": "Praya",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "SRG",
    "name": "Achmad Uani Arpt",
    "citycode": "SRG",
    "city": "Semarang",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "SRI",
    "name": "Temindung Airport",
    "citycode": "SRI",
    "city": "Samarinda",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "SOC",
    "name": "Adi Sumarno Arpt",
    "citycode": "SOC",
    "city": "Solo",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "SOQ",
    "name": "Jefman Arpt",
    "citycode": "SOQ",
    "city": "Sorong",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "DUM",
    "name": "Pinang Kampai Airport",
    "citycode": "DUM",
    "city": "Dumai, Indonesia",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "TJQ",
    "name": "Bulutumbang Arpt",
    "citycode": "TJQ",
    "city": "Tanjung Pandan",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "TRK",
    "name": "Tarakan Arpt",
    "citycode": "TRK",
    "city": "Tarakan",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "TMC",
    "name": "Tambolaka Airport (Waikabubak Airport)",
    "citycode": "TMC",
    "city": "Tambolaka, Indonesia",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "TTE",
    "name": "Babullah Airport",
    "citycode": "TTE",
    "city": "Ternate",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "TIM",
    "name": "Timika Arpt",
    "citycode": "TIM",
    "city": "Timika",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "UPG",
    "name": "Hasanudin Arpt",
    "citycode": "UPG",
    "city": "Ujung Pandang",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "WGP",
    "name": "Mau Hau Airport",
    "citycode": "WGP",
    "city": "Waingapu, Indonesia",
    "country": "Indonesia",
    "countrycode": "ID"
  },
  {
    "code": "YEH",
    "name": "Asaloyeh Arpt",
    "citycode": "YEH",
    "city": "Asaloyeh",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "AWZ",
    "name": "Ahwaz International Airport",
    "citycode": "AWZ",
    "city": "Ahwaz",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "IKA",
    "name": "Imam Khomeini Intl",
    "citycode": "THR",
    "city": "Tehran",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "ADU",
    "name": "Ardabil Arpt",
    "citycode": "ADU",
    "city": "Ardabil",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "THR",
    "name": "Mehrabad Arpt",
    "citycode": "THR",
    "city": "Teheran",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "AZD",
    "name": "Yazd Arpt",
    "citycode": "AZD",
    "city": "Yazd",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "KHD",
    "name": "Khorramabad Arpt",
    "citycode": "KHD",
    "city": "Khorramabad",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "MHD",
    "name": "Mashad Arpt",
    "citycode": "MHD",
    "city": "Mashad",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "CQD",
    "name": "Shahre Kord Arpt",
    "citycode": "CQD",
    "city": "Shahre Kord",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "TBZ",
    "name": "Tabriz International Arpt",
    "citycode": "TBZ",
    "city": "Tabriz",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "KSH",
    "name": "Kermanshah Arpt",
    "citycode": "KSH",
    "city": "Kermanshah",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "KER",
    "name": "Kerman Arpt",
    "citycode": "KER",
    "city": "Kerman",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "IFN",
    "name": "Isfahan Arpt",
    "citycode": "IFN",
    "city": "Isfahan",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "JWN",
    "name": "Zanjan Arpt",
    "citycode": "JWN",
    "city": "Zanjan",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "BUZ",
    "name": "Bushehr Arpt",
    "citycode": "BUZ",
    "city": "Bushehr",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "ABD",
    "name": "Abadan Arpt",
    "citycode": "ABD",
    "city": "Abadan",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "BND",
    "name": "Bandar Abbas Intl Airport",
    "citycode": "BND",
    "city": "Bandar Abbas",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "SYZ",
    "name": "Shiraz Arpt",
    "citycode": "SYZ",
    "city": "Shiraz",
    "country": "Iran",
    "countrycode": "IR"
  },
  {
    "code": "ISU",
    "name": "Sulaymaniyah Intl ARPT",
    "citycode": "ISU",
    "city": "Sulaymaniyah",
    "country": "Iraq",
    "countrycode": "IQ"
  },
  {
    "code": "BGW",
    "name": "Baghdad International Arpt",
    "citycode": "BGW",
    "city": "Baghdad",
    "country": "Iraq",
    "countrycode": "IQ"
  },
  {
    "code": "BSR",
    "name": "Basra Intl Arpt",
    "citycode": "BSR",
    "city": "Basra",
    "country": "Iraq",
    "countrycode": "IQ"
  },
  {
    "code": "NJF",
    "name": "Najaf International Arpt",
    "citycode": "NJF",
    "city": "Al Najaf",
    "country": "Iraq",
    "countrycode": "IQ"
  },
  {
    "code": "EBL",
    "name": "Erbil Arpt",
    "citycode": "EBL",
    "city": "Erbil",
    "country": "Iraq",
    "countrycode": "IQ"
  },
  {
    "code": "NOC",
    "name": "Knock International",
    "citycode": "NOC",
    "city": "Knock",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "WAT",
    "name": "Waterford Arpt",
    "citycode": "WAT",
    "city": "Waterford",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "NNR",
    "name": "Connemara Arpt",
    "citycode": "NNR",
    "city": "Spiddal",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "GWY",
    "name": "Carnmore Arpt",
    "citycode": "GWY",
    "city": "Galway",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "SXL",
    "name": "Collooney",
    "citycode": "SXL",
    "city": "Sligo",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "ORK",
    "name": "Cork International Arpt",
    "citycode": "ORK",
    "city": "Cork",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "DUB",
    "name": "Dublin Arpt",
    "citycode": "DUB",
    "city": "Dublin",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "WEX",
    "name": "Castlebridge Arpt",
    "citycode": "WEX",
    "city": "Wexford",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "SNN",
    "name": "Shannon Arpt",
    "citycode": "SNN",
    "city": "Shannon",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "CFN",
    "name": "Donegal Arpt",
    "citycode": "CFN",
    "city": "Donegal",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "ENK",
    "name": "St Angelo Arpt",
    "citycode": "ENK",
    "city": "Enniskillen",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "KIR",
    "name": "Kerry County Arpt",
    "citycode": "KIR",
    "city": "Kerry County",
    "country": "Ireland",
    "countrycode": "IE"
  },
  {
    "code": "ETH",
    "name": "Elat Airport",
    "citycode": "ETH",
    "city": "Elat",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "TLV",
    "name": "Ben Gurion Intl Arpt",
    "citycode": "TLV",
    "city": "Tel Aviv",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "HFA",
    "name": "Haifa Arpt",
    "citycode": "HFA",
    "city": "Haifa",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "RPN",
    "name": "Rosh Pina Arpt",
    "citycode": "RPN",
    "city": "Rosh Pina",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "SDV",
    "name": "Dov Airport",
    "citycode": "TLV",
    "city": "Tel Aviv",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "KSW",
    "name": "Kiryat Shmona Arpt",
    "citycode": "KSW",
    "city": "Kiryat Shmona",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "YOT",
    "name": "Yotvata Arpt",
    "citycode": "YOT",
    "city": "Yotvata",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "VDA",
    "name": "Ovda Arpt",
    "citycode": "VDA",
    "city": "Ovda",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "JRS",
    "name": "Atarot Airport",
    "citycode": "JRS",
    "city": "Jerusalem",
    "country": "Israel",
    "countrycode": "IL"
  },
  {
    "code": "VBS",
    "name": "Brescia Montichiari Arpt",
    "citycode": "VRN",
    "city": "Verona",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "XVQ",
    "name": "Santa Lucia Railway Station",
    "citycode": "VCE",
    "city": "Venice",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "XVY",
    "name": "Mestre Railway Station",
    "citycode": "VCE",
    "city": "Venice",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "UDN",
    "name": "Campoformido Arpt",
    "citycode": "UDN",
    "city": "Udine",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "TRN",
    "name": "Torino Caselle Arpt",
    "citycode": "TRN",
    "city": "Turin",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "TRS",
    "name": "Ronchi Dei Legionari Arpt",
    "citycode": "TRS",
    "city": "Trieste",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "TSF",
    "name": "Treviso Arpt",
    "citycode": "TSF",
    "city": "Treviso",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "TPS",
    "name": "Birgi Arpt",
    "citycode": "TPS",
    "city": "Trapani",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "TTB",
    "name": "Arbatax Arpt",
    "citycode": "TTB",
    "city": "Tortoli",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "TAR",
    "name": "M A Grottag Arpt",
    "citycode": "TAR",
    "city": "Taranto",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "RRO",
    "name": "Sorrento Arpt",
    "citycode": "RRO",
    "city": "Sorrento",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "SAY",
    "name": "Siena Arpt",
    "citycode": "SAY",
    "city": "Siena",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "GBN",
    "name": "San Giovanni Rotondo Arpt",
    "citycode": "GBN",
    "city": "San Giovanni Rotondo",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "TQR",
    "name": "San Domino Island Arpt",
    "citycode": "TQR",
    "city": "San Domino Island",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "QSR",
    "name": "Salerno Offline Point",
    "citycode": "QSR",
    "city": "Salerno",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "CIA",
    "name": "Ciampino Arpt",
    "citycode": "ROM",
    "city": "Rome",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "XRJ",
    "name": "Terminal Railway Station",
    "citycode": "ROM",
    "city": "Rome",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "RMI",
    "name": "Miramare Airport",
    "citycode": "RMI",
    "city": "Rimini",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "REG",
    "name": "Tito Menniti Arpt",
    "citycode": "REG",
    "city": "Reggio Calabria",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "PSA",
    "name": "Gal Galilei Arpt",
    "citycode": "PSA",
    "city": "Pisa",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "PEJ",
    "name": "Peschiei Arpt",
    "citycode": "PEJ",
    "city": "Peschiei",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "PSR",
    "name": "Liberi Airport",
    "citycode": "PSR",
    "city": "Pescara",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "PEG",
    "name": "Sant Egidio Arpt",
    "citycode": "PEG",
    "city": "Perugia",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "IRT",
    "name": "Roma Tiburtina Rail Station",
    "citycode": "IRT",
    "city": "Rome",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "IBT",
    "name": "Bologona Central Rail Station",
    "citycode": "IBT",
    "city": "Bologona",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "IMR",
    "name": "Milano Rogoredo Railway Station",
    "citycode": "IMR",
    "city": "Milan",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "PMF",
    "name": "Parma Arpt",
    "citycode": "PMF",
    "city": "Parma",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "PNL",
    "name": "Pantelleria Airport",
    "citycode": "PNL",
    "city": "Pantelleria",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "QPA",
    "name": "Padova Arpt",
    "citycode": "QPA",
    "city": "Padova",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "OLB",
    "name": "Costa Smeralda Arpt",
    "citycode": "OLB",
    "city": "Olbia",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "NAP",
    "name": "Capodichino Arpt",
    "citycode": "NAP",
    "city": "Naples",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "ZME",
    "name": "NJ Metro Park Railway Station",
    "citycode": "NAP",
    "city": "Naples",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "ZMF",
    "name": "Beverello Harbour",
    "citycode": "NAP",
    "city": "Naples",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "ZMI",
    "name": "Mergellina Railway Station",
    "citycode": "NAP",
    "city": "Naples",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "ZMJ",
    "name": "Mergellina Harbour",
    "citycode": "NAP",
    "city": "Naples",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "PMO",
    "name": "Punta Raisi Arpt",
    "citycode": "PMO",
    "city": "Palermo",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "XIK",
    "name": "Milan Central Station Railway",
    "citycode": "MIL",
    "city": "Milan",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "XNC",
    "name": "Cadorna Train Station Milan",
    "citycode": "MIL",
    "city": "Milan",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "BGY",
    "name": "Orio Al Serio Arpt",
    "citycode": "BGY",
    "city": "Bergamo",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "BLX",
    "name": "Belluno Arpt",
    "citycode": "BLX",
    "city": "Belluno",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "BRI",
    "name": "Bari Airport",
    "citycode": "BRI",
    "city": "Bari",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "AVB",
    "name": "Aviano Airbase",
    "citycode": "AVB",
    "city": "Aviano",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "AOT",
    "name": "Corrado Gex Arpt",
    "citycode": "AOT",
    "city": "Aosta",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "AOI",
    "name": "Falconara Arpt",
    "citycode": "AOI",
    "city": "Ancona",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "AHO",
    "name": "Fertilia Arpt",
    "citycode": "AHO",
    "city": "Alghero",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "ALL",
    "name": "Albenga Arpt",
    "citycode": "ALL",
    "city": "Albenga",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "VNZ",
    "name": "Vicenza Railway Station",
    "citycode": "VNZ",
    "city": "Vicenza",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "INP",
    "name": "Naples Central Railway Station",
    "citycode": "INP",
    "city": "Naples",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "FCO",
    "name": "Fiumicino Arpt",
    "citycode": "ROM",
    "city": "Rome",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "BLQ",
    "name": "Guglielmo Marconi",
    "citycode": "BLQ",
    "city": "Bologna",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "BZO",
    "name": "Bolzano Arpt",
    "citycode": "BZO",
    "city": "Bolzano",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "BDS",
    "name": "Papola Casale Arpt",
    "citycode": "BDS",
    "city": "Brindisi",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "CAG",
    "name": "Elmas Airport",
    "citycode": "CAG",
    "city": "Cagliari",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "VRN",
    "name": "Verona Airport",
    "citycode": "VRN",
    "city": "Verona",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "PRJ",
    "name": "Harbour Airport",
    "citycode": "PRJ",
    "city": "Capri",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "CTA",
    "name": "Fontanarossa Arpt",
    "citycode": "CTA",
    "city": "Catania",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "SWK",
    "name": "Segrate Arpt",
    "citycode": "MIL",
    "city": "Milan",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "QMM",
    "name": "Marina Di Massa Arpt",
    "citycode": "QMM",
    "city": "Marina Di Massa",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "LCV",
    "name": "Lucca Arpt",
    "citycode": "LCV",
    "city": "Lucca",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "LCC",
    "name": "Galatina Arpt",
    "citycode": "LCC",
    "city": "Lecce",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "CRV",
    "name": "Crotone Arpt",
    "citycode": "CRV",
    "city": "Crotone",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "LMP",
    "name": "Lampedusa Arpt",
    "citycode": "LMP",
    "city": "Lampedusa",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "SUF",
    "name": "S Eufemia Arpt",
    "citycode": "SUF",
    "city": "Lamezia Terme",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "ISH",
    "name": "Ischia Arpt",
    "citycode": "ISH",
    "city": "Ischia",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "CIY",
    "name": "Comiso Arpt",
    "citycode": "CIY",
    "city": "Comiso",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "GRS",
    "name": "Baccarini Arpt",
    "citycode": "GRS",
    "city": "Grosseto",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "GOA",
    "name": "Christoforo Colombo",
    "citycode": "GOA",
    "city": "Genoa",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "FRL",
    "name": "Luigi Ridolfi Arpt",
    "citycode": "FRL",
    "city": "Forli",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "FOG",
    "name": "Gino Lisa Arpt",
    "citycode": "FOG",
    "city": "Foggia",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "ZMS",
    "name": "Sm Novella Railway Station",
    "citycode": "FLR",
    "city": "Florence",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "FLR",
    "name": "Amerigo Vespucci Arpt",
    "citycode": "FLR",
    "city": "Florence",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "EBA",
    "name": "Marina Di Campo Arpt",
    "citycode": "EBA",
    "city": "Elba Island",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "CUF",
    "name": "Levaldigi Arpt",
    "citycode": "CUF",
    "city": "Cuneo",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "VCE",
    "name": "Marco Polo Arpt",
    "citycode": "VCE",
    "city": "Venice",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "LIN",
    "name": "Linate Arpt",
    "citycode": "MIL",
    "city": "Milan",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "MXP",
    "name": "Malpensa Arpt",
    "citycode": "MIL",
    "city": "Milan",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "VIF",
    "name": "Vieste Arpt",
    "citycode": "VIF",
    "city": "Vieste",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "VIC",
    "name": "Vicenza Arpt",
    "citycode": "VIC",
    "city": "Vicenza",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "XIX",
    "name": "Porta Nuova Railway Station",
    "citycode": "VRN",
    "city": "Verona",
    "country": "Italy",
    "countrycode": "IT"
  },
  {
    "code": "KTP",
    "name": "Tinson Arpt",
    "citycode": "KIN",
    "city": "Kingston",
    "country": "Jamaica",
    "countrycode": "JM"
  },
  {
    "code": "KIN",
    "name": "Norman Manly Arpt",
    "citycode": "KIN",
    "city": "Kingston",
    "country": "Jamaica",
    "countrycode": "JM"
  },
  {
    "code": "MBJ",
    "name": "Sangster Arpt",
    "citycode": "MBJ",
    "city": "Montego Bay",
    "country": "Jamaica",
    "countrycode": "JM"
  },
  {
    "code": "NEG",
    "name": "Negril Arpt",
    "citycode": "NEG",
    "city": "Negril",
    "country": "Jamaica",
    "countrycode": "JM"
  },
  {
    "code": "OCJ",
    "name": "Boscobel Arpt",
    "citycode": "OCJ",
    "city": "Ocho Rios",
    "country": "Jamaica",
    "countrycode": "JM"
  },
  {
    "code": "YOK",
    "name": "Yokohama Airport",
    "citycode": "YOK",
    "city": "Yokohama",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "WKJ",
    "name": "Hokkaido Arpt",
    "citycode": "WKJ",
    "city": "Wakkanai",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KIX",
    "name": "Kansai International Arpt",
    "citycode": "OSA",
    "city": "Osaka",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "UBJ",
    "name": "Ube Airport",
    "citycode": "UBJ",
    "city": "Ube Jp",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "TSJ",
    "name": "Tsushima Arpt",
    "citycode": "TSJ",
    "city": "Tsushima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "TOY",
    "name": "Toyama Arpt",
    "citycode": "TOY",
    "city": "Toyama",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "TTJ",
    "name": "Tottori Arpt",
    "citycode": "TTJ",
    "city": "Tottori",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OKO",
    "name": "Yokota AFB",
    "citycode": "TYO",
    "city": "Tokyo",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "TKS",
    "name": "Tokushima Arpt",
    "citycode": "TKS",
    "city": "Tokushima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "TKN",
    "name": "Tokunoshima Arpt",
    "citycode": "TKN",
    "city": "Tokunoshima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "TNE",
    "name": "Tanega Shima Arpt",
    "citycode": "TNE",
    "city": "Tanega Shima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "TAK",
    "name": "Takamatsu Arpt",
    "citycode": "TAK",
    "city": "Takamatsu",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "SYO",
    "name": "Shonai Arpt",
    "citycode": "SYO",
    "city": "Shonai",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "FSZ",
    "name": "Mount Fuji Shizuoka Arpt",
    "citycode": "FSZ",
    "city": "Shizuoka City",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "SDJ",
    "name": "Sendai Arpt",
    "citycode": "SDJ",
    "city": "Sendai",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OKD",
    "name": "Okadama Arpt",
    "citycode": "SPK",
    "city": "Sapporo",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "HSG",
    "name": "Saga Arpt",
    "citycode": "HSG",
    "city": "Saga",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OIM",
    "name": "Oshima Arpt",
    "citycode": "OIM",
    "city": "Oshima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "NGO",
    "name": "Chubu Centrair Intl Arpt",
    "citycode": "NGO",
    "city": "Nagoya",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OKE",
    "name": "Okino Erabu Arpt",
    "citycode": "OKE",
    "city": "Okino Erabu",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OKA",
    "name": "Naha Field",
    "citycode": "OKA",
    "city": "Okinawa",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "NRT",
    "name": "Narita",
    "citycode": "TYO",
    "city": "Tokyo",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OKJ",
    "name": "Okayama Arpt",
    "citycode": "OKJ",
    "city": "Okayama",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "DNA",
    "name": "Kadena AFB",
    "citycode": "OKA",
    "city": "Okinawa",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "AHA",
    "name": "Naha AFB",
    "citycode": "OKA",
    "city": "Okinawa",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OIT",
    "name": "Oita Arpt",
    "citycode": "OIT",
    "city": "Oita",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "ONJ",
    "name": "Odate Noshiro Arpt",
    "citycode": "ONJ",
    "city": "Odate Noshiro",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OBO",
    "name": "Obihiro Arpt",
    "citycode": "OBO",
    "city": "Obihiro",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KIJ",
    "name": "Niigata Arpt",
    "citycode": "KIJ",
    "city": "Niigata",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "SHB",
    "name": "Nakashibetsu Arpt",
    "citycode": "SHB",
    "city": "Nakashibetsu",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "NKM",
    "name": "Nagoya Komaki Arpt",
    "citycode": "NGO",
    "city": "Nagoya",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "NGY",
    "name": "NOGOYA EK BUS STATION",
    "citycode": "NGO",
    "city": "Nagoya",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "NGS",
    "name": "Nagasaki Airport",
    "citycode": "NGS",
    "city": "Nagasaki",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "HNA",
    "name": "Hanamaki Arpt",
    "citycode": "HNA",
    "city": "Morioka",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KMI",
    "name": "Miyazaki Arpt",
    "citycode": "KMI",
    "city": "Miyazaki",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "MMY",
    "name": "Hirara Arpt",
    "citycode": "MMY",
    "city": "Miyako Jima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "MYE",
    "name": "Miyake Jima Airport",
    "citycode": "MYE",
    "city": "Miyakejima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "MMB",
    "name": "Memanbetsu Arpt",
    "citycode": "MMB",
    "city": "Memambetsu",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "MYJ",
    "name": "Matsuyama Airport",
    "citycode": "MYJ",
    "city": "Matsuyama",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "MMJ",
    "name": "Matsumoto Arpt",
    "citycode": "MMJ",
    "city": "Matsumoto",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "UKY",
    "name": "Kyoto Arpt",
    "citycode": "UKY",
    "city": "Kyoto",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KUH",
    "name": "Kushiro Arpt",
    "citycode": "KUH",
    "city": "Kushiro",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "UEO",
    "name": "Kumejima Arpt",
    "citycode": "UEO",
    "city": "Kume Jima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KMJ",
    "name": "Kumamoto Airport",
    "citycode": "KMJ",
    "city": "Kumamoto",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KMQ",
    "name": "Komatsu Airport",
    "citycode": "KMQ",
    "city": "Komatsu",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KCZ",
    "name": "Kochi Airport",
    "citycode": "KCZ",
    "city": "Kochi",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "UKB",
    "name": "Kobe Arpt",
    "citycode": "UKB",
    "city": "Kobe",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KKJ",
    "name": "Kokura Arpt",
    "citycode": "KKJ",
    "city": "Kita Kyushu",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "KOJ",
    "name": "Kagoshima Arpt",
    "citycode": "KOJ",
    "city": "Kagoshima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "IZO",
    "name": "Izumo Arpt",
    "citycode": "IZO",
    "city": "Izumo",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "IWJ",
    "name": "Iwami Arpt",
    "citycode": "IWJ",
    "city": "Iwami",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "ISG",
    "name": "Ishigaki Airport",
    "citycode": "ISG",
    "city": "Ishigaki",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "HIW",
    "name": "Hiroshima West Arpt",
    "citycode": "HIJ",
    "city": "Hiroshima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "HIJ",
    "name": "Hiroshima Airport",
    "citycode": "HIJ",
    "city": "Hiroshima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "HKD",
    "name": "Hakodate Arpt",
    "citycode": "HKD",
    "city": "Hakodate",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "HHE",
    "name": "Hachinohe Arpt",
    "citycode": "HHE",
    "city": "Hachinohe",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "HAC",
    "name": "Hachijo Jima Arpt",
    "citycode": "HAC",
    "city": "Hachijo Jima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "FKS",
    "name": "Fukushima Arpt",
    "citycode": "FKS",
    "city": "Fukushima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "FUJ",
    "name": "Fukue Arpt",
    "citycode": "FUJ",
    "city": "Fukue",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "MSJ",
    "name": "Misawa Arpt",
    "citycode": "MSJ",
    "city": "Misawa",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "NJA",
    "name": "Atsugi Naval Air Station",
    "citycode": "NJA",
    "city": "Atsugi",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "AKJ",
    "name": "Asahikawa Arpt",
    "citycode": "AKJ",
    "city": "Asahikawa",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "AOJ",
    "name": "Aomori Arpt",
    "citycode": "AOJ",
    "city": "Aomori",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "ASJ",
    "name": "Amami O Shima Arpt",
    "citycode": "ASJ",
    "city": "Amami O Shima",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "AXT",
    "name": "Akita Airport",
    "citycode": "AXT",
    "city": "Akita",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "TYO",
    "name": "Metropolitan area2",
    "citycode": "TYO",
    "city": "Tokyo, Honshu",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "CTS",
    "name": "Chitose Arpt",
    "citycode": "SPK",
    "city": "Sapporo",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "FUK",
    "name": "Itazuke Arpt",
    "citycode": "FUK",
    "city": "Fukuoka",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "HND",
    "name": "Haneda Arpt",
    "citycode": "TYO",
    "city": "Tokyo",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "ITM",
    "name": "Itami Arpt",
    "citycode": "OSA",
    "city": "Osaka",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "OGN",
    "name": "Yonaguni Jima Airport",
    "citycode": "OGN",
    "city": "Yonaguni",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "YGJ",
    "name": "Miho Arpt",
    "citycode": "YGJ",
    "city": "Yonago",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "GAJ",
    "name": "Yamagata Airport",
    "citycode": "GAJ",
    "city": "Yamagata",
    "country": "Japan",
    "countrycode": "JP"
  },
  {
    "code": "AQJ",
    "name": "Aqaba Airport",
    "citycode": "AQJ",
    "city": "Aqaba",
    "country": "Jordan",
    "countrycode": "JO"
  },
  {
    "code": "AMM",
    "name": "Queen Alia Intl Arpt",
    "citycode": "AMM",
    "city": "Amman",
    "country": "Jordan",
    "countrycode": "JO"
  },
  {
    "code": "MPQ",
    "name": "Maan Arpt",
    "citycode": "MPQ",
    "city": "Maan",
    "country": "Jordan",
    "countrycode": "JO"
  },
  {
    "code": "ADJ",
    "name": "Civil Marka Arpt",
    "citycode": "AMM",
    "city": "Amman",
    "country": "Jordan",
    "countrycode": "JO"
  },
  {
    "code": "PLX",
    "name": "SEMIPALATINSK ARPT",
    "citycode": "PLX",
    "city": "Semey",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "PPK",
    "name": "Petropavlovsk Arpt",
    "citycode": "PPK",
    "city": "Petropavlovsk",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "PWQ",
    "name": "Pavlodar Arpt",
    "citycode": "PWQ",
    "city": "Pavlodar",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "KZO",
    "name": "Kzyl Orda Arpt",
    "citycode": "KZO",
    "city": "Kzyl Orda",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "KSN",
    "name": "Kostanay Arpt",
    "citycode": "KSN",
    "city": "Kostanay",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "KGF",
    "name": "Karaganda Arpt",
    "citycode": "KGF",
    "city": "Karaganda",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "AKX",
    "name": "Aqtobe Arpt",
    "citycode": "AKX",
    "city": "Aqtobe",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "SCO",
    "name": "Aktau Arpt",
    "citycode": "SCO",
    "city": "Aktau",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "TSE",
    "name": "Astana Arpt",
    "citycode": "TSE",
    "city": "Astana",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "GUW",
    "name": "Atyrau Arpt",
    "citycode": "GUW",
    "city": "Atyrau",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "ALA",
    "name": "Almaty Arpt",
    "citycode": "ALA",
    "city": "Almaty",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "UKK",
    "name": "Ust Kamenogorsk Arpt",
    "citycode": "UKK",
    "city": "Ust Kamenogorsk",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "DZN",
    "name": "ZHEZKAZGAN ARPT",
    "citycode": "DZN",
    "city": "ZHEZKAZGAN",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "URA",
    "name": "Uralsk Arpt",
    "citycode": "URA",
    "city": "Uralsk",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "TDK",
    "name": "Taldy Kurgan Arpt",
    "citycode": "TDK",
    "city": "Taldy Kurgan",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "CIT",
    "name": "Shimkent Arpt",
    "citycode": "CIT",
    "city": "Shimkent",
    "country": "Kazakhstan",
    "countrycode": "KZ"
  },
  {
    "code": "MRE",
    "name": "Mara Serena Arpt",
    "citycode": "MRE",
    "city": "Mara Lodges",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "EDL",
    "name": "Eldoret Arpt",
    "citycode": "EDL",
    "city": "Eldoret",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "GGM",
    "name": "Kakamega Airport",
    "citycode": "GGM",
    "city": "Kakamega",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "KIS",
    "name": "Kisumu Arpt",
    "citycode": "KIS",
    "city": "Kisumu",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "KTL",
    "name": "Kitale Airport",
    "citycode": "KTL",
    "city": "Kitale",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "LAU",
    "name": "Lamu Arpt",
    "citycode": "LAU",
    "city": "Lamu",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "LOK",
    "name": "Lodwar Airport",
    "citycode": "LOK",
    "city": "Lodwar",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "LKG",
    "name": "Lokichoggio Arpt",
    "citycode": "LKG",
    "city": "Lokichoggio",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "LOY",
    "name": "Loyangalani Airport",
    "citycode": "LOY",
    "city": "Loyangalani",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "MYD",
    "name": "Malindi Arpt",
    "citycode": "MYD",
    "city": "Malindi",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "MBA",
    "name": "Moi Intl",
    "citycode": "MBA",
    "city": "Mombasa",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "WIL",
    "name": "Wilson Airport",
    "citycode": "NBO",
    "city": "Nairobi",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "NUU",
    "name": "Nakuru Airport",
    "citycode": "NUU",
    "city": "Nakuru",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "NYK",
    "name": "Nanyuki Arpt",
    "citycode": "NYK",
    "city": "Nanyuki",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "NYE",
    "name": "Nyeri Arpt",
    "citycode": "NYE",
    "city": "Nyeri",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "UAS",
    "name": "Samburu Airstrip",
    "citycode": "UAS",
    "city": "Samburu",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "UKA",
    "name": "Diani Airport",
    "citycode": "UKA",
    "city": "Ukunda",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "OLX",
    "name": "Olkiombo Airstrip",
    "citycode": "OLX",
    "city": "Olkiombo, Kenya",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "NBO",
    "name": "Jomo Kenyatta Intl",
    "citycode": "NBO",
    "city": "Nairobi",
    "country": "Kenya",
    "countrycode": "KE"
  },
  {
    "code": "TRW",
    "name": "Bonriki Arpt",
    "citycode": "TRW",
    "city": "Tarawa",
    "country": "Kiribati",
    "countrycode": "KI"
  },
  {
    "code": "BEZ",
    "name": "Beru Arpt",
    "citycode": "BEZ",
    "city": "Beru",
    "country": "Kiribati",
    "countrycode": "KI"
  },
  {
    "code": "MNK",
    "name": "Maiana Airport",
    "citycode": "MNK",
    "city": "Maiana",
    "country": "Kiribati",
    "countrycode": "KI"
  },
  {
    "code": "CXI",
    "name": "Cassidy",
    "citycode": "CXI",
    "city": "Christmas Island",
    "country": "Kiribati",
    "countrycode": "KI"
  },
  {
    "code": "GMP",
    "name": "Gimpo Intl Arpt",
    "citycode": "SEL",
    "city": "Seoul",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "SHO",
    "name": "Seolak Arpt",
    "citycode": "SHO",
    "city": "Sokcho",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "SSN",
    "name": "Seoul Ab",
    "citycode": "SEL",
    "city": "Seoul",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "KPO",
    "name": "Pohang Arpt",
    "citycode": "KPO",
    "city": "Pohang",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "MPK",
    "name": "Mokpo Arpt",
    "citycode": "MPK",
    "city": "Mokpo",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "KWJ",
    "name": "Kwangju Arpt",
    "citycode": "KWJ",
    "city": "Kwangju",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "KUV",
    "name": "Kunsan Arpt",
    "citycode": "KUV",
    "city": "Kunsan",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "JCJ",
    "name": "Chuja Heliport",
    "citycode": "CJU",
    "city": "Jeju City",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "JSP",
    "name": "Seogwipo Heliport",
    "citycode": "CJU",
    "city": "Jeju City",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "TAE",
    "name": "Daegu Arpt",
    "citycode": "TAE",
    "city": "Daegu",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "HIN",
    "name": "Sacheon Arpt",
    "citycode": "HIN",
    "city": "Chinju",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "CJJ",
    "name": "Cheongju Arpt",
    "citycode": "CJJ",
    "city": "Cheongju",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "FNJ",
    "name": "Sunan Arpt",
    "citycode": "FNJ",
    "city": "Pyongyang",
    "country": "Korea",
    "countrycode": "KP"
  },
  {
    "code": "PUS",
    "name": "Kimhae Arpt",
    "citycode": "PUS",
    "city": "Busan",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "CJU",
    "name": "Jeju Intl Arpt",
    "citycode": "CJU",
    "city": "Jeju City",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "ICN",
    "name": "Incheon Intl Arpt",
    "citycode": "SEL",
    "city": "Seoul",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "RSU",
    "name": "Yeosu Arpt",
    "citycode": "RSU",
    "city": "Yeosu",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "USN",
    "name": "Ulsan Arpt",
    "citycode": "USN",
    "city": "Ulsan",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "SWU",
    "name": "Suwon Arpt",
    "citycode": "SWU",
    "city": "Suwon",
    "country": "Korea",
    "countrycode": "KR"
  },
  {
    "code": "KWI",
    "name": "Kuwait Intl",
    "citycode": "KWI",
    "city": "Kuwait",
    "country": "Kuwait",
    "countrycode": "KW"
  },
  {
    "code": "OSS",
    "name": "Osh International Airport",
    "citycode": "OSH",
    "city": "Osh",
    "country": "Kyrgyzstan",
    "countrycode": "KG"
  },
  {
    "code": "FRU",
    "name": "Bishkek Arpt",
    "citycode": "FRU",
    "city": "Bishkek",
    "country": "Kyrgyzstan",
    "countrycode": "KG"
  },
  {
    "code": "PKZ",
    "name": "Pakse Arpt",
    "citycode": "PKZ",
    "city": "Pakse",
    "country": "Lao Peoples Democratic Republic",
    "countrycode": "LA"
  },
  {
    "code": "VTE",
    "name": "Wattay Arpt",
    "citycode": "VTE",
    "city": "Vientiane",
    "country": "Lao Peoples Democratic Republic",
    "countrycode": "LA"
  },
  {
    "code": "XKH",
    "name": "Xieng Khouang Arpt",
    "citycode": "XKH",
    "city": "Xieng Khouang",
    "country": "Lao Peoples Democratic Republic",
    "countrycode": "LA"
  },
  {
    "code": "ZVK",
    "name": "Savannakhet Airport",
    "citycode": "ZVK",
    "city": "Savannakhet",
    "country": "Lao Peoples Democratic Republic",
    "countrycode": "LA"
  },
  {
    "code": "LPQ",
    "name": "Louangphrabang Arpt",
    "citycode": "LPQ",
    "city": "Louangphrabang",
    "country": "Lao Peoples Democratic Republic",
    "countrycode": "LA"
  },
  {
    "code": "VNT",
    "name": "Ventspils Intl Arpt",
    "citycode": "VNT",
    "city": "Ventspils",
    "country": "Latvia",
    "countrycode": "LV"
  },
  {
    "code": "RIX",
    "name": "Riga Arpt",
    "citycode": "RIX",
    "city": "Riga",
    "country": "Latvia",
    "countrycode": "LV"
  },
  {
    "code": "DGP",
    "name": "Daugavpils Arpt",
    "citycode": "DGP",
    "city": "Daugavpils",
    "country": "Latvia",
    "countrycode": "LV"
  },
  {
    "code": "LPX",
    "name": "Liepaya Arpt",
    "citycode": "LPX",
    "city": "Liepaja",
    "country": "Latvia",
    "countrycode": "LV"
  },
  {
    "code": "BEY",
    "name": "Beirut Intl Arpt",
    "citycode": "BEY",
    "city": "Beirut",
    "country": "Lebanon",
    "countrycode": "LB"
  },
  {
    "code": "MSU",
    "name": "Moshoeshoe Intl Arpt",
    "citycode": "MSU",
    "city": "Maseru",
    "country": "Lesotho",
    "countrycode": "LS"
  },
  {
    "code": "LES",
    "name": "Lesobeng Arpt",
    "citycode": "LES",
    "city": "Lesobeng",
    "country": "Lesotho",
    "countrycode": "LS"
  },
  {
    "code": "SNI",
    "name": "R E Murray Arpt",
    "citycode": "SNI",
    "city": "Sinoe",
    "country": "Liberia",
    "countrycode": "LR"
  },
  {
    "code": "ROB",
    "name": "Roberts Intl",
    "citycode": "MLW",
    "city": "Monrovia",
    "country": "Liberia",
    "countrycode": "LR"
  },
  {
    "code": "MLW",
    "name": "Sprigg Payne Arpt",
    "citycode": "MLW",
    "city": "Monrovia",
    "country": "Liberia",
    "countrycode": "LR"
  },
  {
    "code": "SAZ",
    "name": "Sasstown Arpt",
    "citycode": "SAZ",
    "city": "Sasstown",
    "country": "Liberia",
    "countrycode": "LR"
  },
  {
    "code": "XSA",
    "name": "Sinoe AFC",
    "citycode": "SNI",
    "city": "Sinoe",
    "country": "Liberia",
    "countrycode": "LR"
  },
  {
    "code": "THC",
    "name": "Tchien Arpt",
    "citycode": "THC",
    "city": "Tchien",
    "country": "Liberia",
    "countrycode": "LR"
  },
  {
    "code": "TIP",
    "name": "Tripoli Intl Arpt",
    "citycode": "TIP",
    "city": "Tripoli",
    "country": "Libya",
    "countrycode": "LY"
  },
  {
    "code": "TOB",
    "name": "Tobruk Arpt",
    "citycode": "TOB",
    "city": "Tobruk",
    "country": "Libya",
    "countrycode": "LY"
  },
  {
    "code": "BEN",
    "name": "Benina Intl Arpt",
    "citycode": "BEN",
    "city": "Benghazi",
    "country": "Libya",
    "countrycode": "LY"
  },
  {
    "code": "VNO",
    "name": "Vilnius Arpt",
    "citycode": "VNO",
    "city": "Vilnius",
    "country": "Lithuania",
    "countrycode": "LT"
  },
  {
    "code": "PLQ",
    "name": "Palanga Intl Arpt",
    "citycode": "PLQ",
    "city": "Palanga",
    "country": "Lithuania",
    "countrycode": "LT"
  },
  {
    "code": "KLJ",
    "name": "Klaipeda Arpt",
    "citycode": "KLJ",
    "city": "Klaipeda",
    "country": "Lithuania",
    "countrycode": "LT"
  },
  {
    "code": "KUN",
    "name": "Kaunas Arpt",
    "citycode": "KUN",
    "city": "Kaunas",
    "country": "Lithuania",
    "countrycode": "LT"
  },
  {
    "code": "LUX",
    "name": "Luxembourg Arpt",
    "citycode": "LUX",
    "city": "Luxembourg",
    "country": "Luxembourg",
    "countrycode": "LU"
  },
  {
    "code": "MFM",
    "name": "Macau Arpt",
    "citycode": "MFM",
    "city": "Macau",
    "country": "Macao",
    "countrycode": "MO"
  },
  {
    "code": "XZM",
    "name": "Macau Ferry",
    "citycode": "XZM",
    "city": "Macau",
    "country": "Macao",
    "countrycode": "MO"
  },
  {
    "code": "SKP",
    "name": "Skopje Arpt",
    "citycode": "SKP",
    "city": "Skopje",
    "country": "Macedonia",
    "countrycode": "MK"
  },
  {
    "code": "OHD",
    "name": "Ohrid Arpt",
    "citycode": "OHD",
    "city": "Ohrid",
    "country": "Macedonia",
    "countrycode": "MK"
  },
  {
    "code": "MOQ",
    "name": "Morondava Arpt",
    "citycode": "MOQ",
    "city": "Morondava",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "TNR",
    "name": "Ivato Arpt",
    "citycode": "TNR",
    "city": "Antananarivo",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "DIE",
    "name": "Antsiranana Arrachart Arpt",
    "citycode": "DIE",
    "city": "Diegosuarez",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "TLE",
    "name": "Tulear Arpt",
    "citycode": "TLE",
    "city": "Tulear",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "SMS",
    "name": "St Marie Arpt",
    "citycode": "SMS",
    "city": "Saint Marie",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "NOS",
    "name": "Fascene Arpt",
    "citycode": "NOS",
    "city": "Nossi Be",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "TMM",
    "name": "Tamatave Arpt",
    "citycode": "TMM",
    "city": "Tamatave",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "SVB",
    "name": "Sambava Arpt",
    "citycode": "SVB",
    "city": "Sambava",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "MJN",
    "name": "Amborovy Arpt",
    "citycode": "MJN",
    "city": "Majunga",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "FTU",
    "name": "Marillac Arpt",
    "citycode": "FTU",
    "city": "Fort Dauphin",
    "country": "Madagascar",
    "countrycode": "MG"
  },
  {
    "code": "BLZ",
    "name": "Chileka Airport",
    "citycode": "BLZ",
    "city": "Blantyre",
    "country": "Malawi",
    "countrycode": "MW"
  },
  {
    "code": "CEH",
    "name": "Chelinda Arpt",
    "citycode": "CEH",
    "city": "Chelinda",
    "country": "Malawi",
    "countrycode": "MW"
  },
  {
    "code": "LMB",
    "name": "Salima Arpt",
    "citycode": "LMB",
    "city": "Salima",
    "country": "Malawi",
    "countrycode": "MW"
  },
  {
    "code": "LLW",
    "name": "Lilongwe Intl Arpt",
    "citycode": "LLW",
    "city": "Lilongwe",
    "country": "Malawi",
    "countrycode": "MW"
  },
  {
    "code": "LMN",
    "name": "Limbang Arpt",
    "citycode": "LMN",
    "city": "Limbang",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "LWY",
    "name": "Lawas Arpt",
    "citycode": "LWY",
    "city": "Lawas",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "LDU",
    "name": "Lahad Datu Arpt",
    "citycode": "LDU",
    "city": "Lahad Datu",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "LBU",
    "name": "Labuan Arpt",
    "citycode": "LBU",
    "city": "Labuan",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "KUD",
    "name": "Kudat Arpt",
    "citycode": "KUD",
    "city": "Kudat",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "TGG",
    "name": "Sultan Mahmood Arpt",
    "citycode": "TGG",
    "city": "Kuala Terengganu",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "KBR",
    "name": "Pengkalan Chepa",
    "citycode": "KBR",
    "city": "Kota Bharu",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "KTE",
    "name": "Kertech Arpt",
    "citycode": "KTE",
    "city": "Kerteh",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "IPH",
    "name": "Ipoh Arpt",
    "citycode": "IPH",
    "city": "Ipoh",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "BTU",
    "name": "Bintulu Arpt",
    "citycode": "BTU",
    "city": "Bintulu",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "BLG",
    "name": "Belaga Arpt",
    "citycode": "BLG",
    "city": "Belaga",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "BBN",
    "name": "Bario Arpt",
    "citycode": "BBN",
    "city": "Bario",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "BKM",
    "name": "Bakalalan Arpt",
    "citycode": "BKM",
    "city": "Bakalalan",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "AOR",
    "name": "Sultan Abdul Hamlin Arpt",
    "citycode": "AOR",
    "city": "Alor Setar",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "XKL",
    "name": "Sentral Railway Station",
    "citycode": "KUL",
    "city": "Kuala Lumpur",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "JHB",
    "name": "Sultan Ismail Intl Arpt",
    "citycode": "JHB",
    "city": "Johor Bahru",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "TMG",
    "name": "Tomanggong Arpt",
    "citycode": "TMG",
    "city": "Tomanggong",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "TOD",
    "name": "Tioman Arpt",
    "citycode": "TOD",
    "city": "Tioman",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "TWU",
    "name": "Tawau Arpt",
    "citycode": "TWU",
    "city": "Tawau",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "TGC",
    "name": "Tanjung Manis Airport",
    "citycode": "TGC",
    "city": "Tanjung Manis",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "SBW",
    "name": "Sibu Arpt",
    "citycode": "SBW",
    "city": "Sibu",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "SDK",
    "name": "Sandakan Arpt",
    "citycode": "SDK",
    "city": "Sandakan",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "RDN",
    "name": "Lts Pulau Redang Arpt",
    "citycode": "RDN",
    "city": "Redang",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "PKG",
    "name": "Pangkor Arpt",
    "citycode": "PKG",
    "city": "Pangkor",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "MZV",
    "name": "Mulu Arpt",
    "citycode": "MZV",
    "city": "Mulu",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "SZB",
    "name": "Sultan Abdul Aziz Shah Arpt",
    "citycode": "KUL",
    "city": "Kuala Lumpur",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "PEN",
    "name": "Penang Intl Arpt",
    "citycode": "PEN",
    "city": "Penang",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "KCH",
    "name": "Kuching Airport",
    "citycode": "KCH",
    "city": "Kuching",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "MYY",
    "name": "Miri Arpt",
    "citycode": "MYY",
    "city": "Miri",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "KUA",
    "name": "Kuantan Arpt",
    "citycode": "KUA",
    "city": "Kuantan",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "KUL",
    "name": "Kuala Lumpur International Arpt",
    "citycode": "KUL",
    "city": "Kuala Lumpur",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "LGK",
    "name": "Langkawi Arpt",
    "citycode": "LGK",
    "city": "Langkawi",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "MKM",
    "name": "Mukah Arpt",
    "citycode": "MKM",
    "city": "Mukah",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "MUR",
    "name": "Marudi Arpt",
    "citycode": "MUR",
    "city": "Marudi",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "MKZ",
    "name": "Batu Berendum Arpt",
    "citycode": "MKZ",
    "city": "Malacca",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "ODN",
    "name": "Long Seridan Arpt",
    "citycode": "ODN",
    "city": "Long Seridan",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "BKI",
    "name": "Kota Kinabalu Arpt",
    "citycode": "BKI",
    "city": "Kota Kinabalu",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "LGL",
    "name": "Long Lellang Arpt",
    "citycode": "LGL",
    "city": "Long Lellang",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "LBP",
    "name": "Long Banga Airfield Arpt",
    "citycode": "LBP",
    "city": "Long Banga",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "LKH",
    "name": "Long Akah Arpt",
    "citycode": "LKH",
    "city": "Long Akah",
    "country": "Malaysia",
    "countrycode": "MY"
  },
  {
    "code": "MLE",
    "name": "Male Intl Arpt",
    "citycode": "MLE",
    "city": "Male",
    "country": "Maldives",
    "countrycode": "MV"
  },
  {
    "code": "GAN",
    "name": "Gan International Arpt",
    "citycode": "GAN",
    "city": "Gan Island",
    "country": "Maldives",
    "countrycode": "MV"
  },
  {
    "code": "KDM",
    "name": "Kaadedhdhoo",
    "citycode": "MLE",
    "city": "Male",
    "country": "Maldives",
    "countrycode": "MV"
  },
  {
    "code": "BKO",
    "name": "Senou Airport",
    "citycode": "BKO",
    "city": "Bamako",
    "country": "Mali",
    "countrycode": "ML"
  },
  {
    "code": "MZI",
    "name": "Mopti Arpt",
    "citycode": "MZI",
    "city": "Mopti",
    "country": "Mali",
    "countrycode": "ML"
  },
  {
    "code": "GZM",
    "name": "Gozo Arpt",
    "citycode": "GZM",
    "city": "Gozo",
    "country": "Malta",
    "countrycode": "MT"
  },
  {
    "code": "MLA",
    "name": "Luqa Airport",
    "citycode": "MLA",
    "city": "Malta",
    "country": "Malta",
    "countrycode": "MT"
  },
  {
    "code": "JAT",
    "name": "Jabot Island",
    "citycode": "JAT",
    "city": "Jabot",
    "country": "Marshall Islands",
    "countrycode": "MH"
  },
  {
    "code": "BII",
    "name": "Enyu Airfield",
    "citycode": "BII",
    "city": "Bikini Atoll",
    "country": "Marshall Islands",
    "countrycode": "MH"
  },
  {
    "code": "EBO",
    "name": "Ebon Arpt",
    "citycode": "EBO",
    "city": "Ebon",
    "country": "Marshall Islands",
    "countrycode": "MH"
  },
  {
    "code": "KWA",
    "name": "Kwajalein Arpt",
    "citycode": "KWA",
    "city": "Kwajalein",
    "country": "Marshall Islands",
    "countrycode": "MH"
  },
  {
    "code": "MAJ",
    "name": "Amata Kabua Intl Arpt",
    "citycode": "MAJ",
    "city": "Majuro",
    "country": "Marshall Islands",
    "countrycode": "MH"
  },
  {
    "code": "NDK",
    "name": "Namdrik Arpt",
    "citycode": "NDK",
    "city": "Namdrik",
    "country": "Marshall Islands",
    "countrycode": "MH"
  },
  {
    "code": "FDF",
    "name": "Lamentin Arpt",
    "citycode": "FDF",
    "city": "Ft De France",
    "country": "Martinique",
    "countrycode": "MQ"
  },
  {
    "code": "NDB",
    "name": "Nouadhibou Arpt",
    "citycode": "NDB",
    "city": "Nouadhibou",
    "country": "Mauritania",
    "countrycode": "MR"
  },
  {
    "code": "SEY",
    "name": "Selibaby Arpt",
    "citycode": "SEY",
    "city": "Selibaby",
    "country": "Mauritania",
    "countrycode": "MR"
  },
  {
    "code": "OUZ",
    "name": "Zouerate Arpt",
    "citycode": "OUZ",
    "city": "Zouerate",
    "country": "Mauritania",
    "countrycode": "MR"
  },
  {
    "code": "ATR",
    "name": "Mouakchott Arpt",
    "citycode": "ATR",
    "city": "Atar",
    "country": "Mauritania",
    "countrycode": "MR"
  },
  {
    "code": "NKC",
    "name": "Nouakchott Arpt",
    "citycode": "NKC",
    "city": "Nouakchott",
    "country": "Mauritania",
    "countrycode": "MR"
  },
  {
    "code": "MRU",
    "name": "Plaisance Arptt",
    "citycode": "MRU",
    "city": "Mauritius",
    "country": "Mauritius",
    "countrycode": "MU"
  },
  {
    "code": "RRG",
    "name": "Rodrigues Island Arpt",
    "citycode": "RRG",
    "city": "Rodrigues Island",
    "country": "Mauritius",
    "countrycode": "MU"
  },
  {
    "code": "DZA",
    "name": "Dzaoudzi Arpt",
    "citycode": "DZA",
    "city": "Dzaoudzi",
    "country": "Mayotte",
    "countrycode": "YT"
  },
  {
    "code": "PPE",
    "name": "Puerto Penasco Municipal",
    "citycode": "PPE",
    "city": "Puerto Penasco",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PVR",
    "name": "Ordaz Arpt",
    "citycode": "PVR",
    "city": "Puerto Vallarta",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "QRO",
    "name": "Queretaro Arpt",
    "citycode": "QRO",
    "city": "Queretaro",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "REX",
    "name": "General Lucio Blanco Arpt",
    "citycode": "REX",
    "city": "Reynosa",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "SCX",
    "name": "Salina Cruz Arpt",
    "citycode": "SCX",
    "city": "Salina Cruz",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "SLW",
    "name": "Saltillo Arpt",
    "citycode": "SLW",
    "city": "Saltillo",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "SZT",
    "name": "San Cristobal Arpt",
    "citycode": "SZT",
    "city": "San Cristobal De Las Casas",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "SFH",
    "name": "San Felipe Arpt",
    "citycode": "SFH",
    "city": "San Felipe",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "SJD",
    "name": "Los Cabos Arpt",
    "citycode": "SJD",
    "city": "San Jose Cabo",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "SLP",
    "name": "San Luis Potosi Municipal Arpt",
    "citycode": "SLP",
    "city": "San Luis Potosi",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "UAC",
    "name": "San Luis Rio Colorado Municipal",
    "citycode": "UAC",
    "city": "San Luis Rio Colorado",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "ZIH",
    "name": "Zihuatanejo Intl",
    "citycode": "ZIH",
    "city": "Zihuatanejo",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "ZCL",
    "name": "Zacatecas Airport",
    "citycode": "ZCL",
    "city": "Zacatecas",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "VSA",
    "name": "Capt Carlos Rovirosa Perez",
    "citycode": "VSA",
    "city": "Villahermosa",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "VIB",
    "name": "Villa Constitucion Arpt",
    "citycode": "VIB",
    "city": "Villa Constitucion",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "VER",
    "name": "Las Bajadas General Heriberto Jara",
    "citycode": "VER",
    "city": "Veracruz",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "UPN",
    "name": "Uruapan Arpt",
    "citycode": "UPN",
    "city": "Uruapan",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TGZ",
    "name": "Angel Albino Corzo Intl Arpt",
    "citycode": "TGZ",
    "city": "Tuxtla Gutierrez",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TUY",
    "name": "Tulum Arpt",
    "citycode": "TUY",
    "city": "Tulum",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TRC",
    "name": "Francisco Sarabia Arpt",
    "citycode": "TRC",
    "city": "Torreon",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TLC",
    "name": "Morelos Arpt",
    "citycode": "TLC",
    "city": "Toluca",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TIJ",
    "name": "Gen Abelardo Rodriguez",
    "citycode": "TIJ",
    "city": "Tijuana",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TPQ",
    "name": "Tepic Arpt",
    "citycode": "TPQ",
    "city": "Tepic",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TCN",
    "name": "Tehuacan Arpt",
    "citycode": "TCN",
    "city": "Tehuacan",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TAP",
    "name": "Tapachula Arpt",
    "citycode": "TAP",
    "city": "Tapachula",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TAM",
    "name": "General F Javier Mina",
    "citycode": "TAM",
    "city": "Tampico",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CTM",
    "name": "Chetumal International",
    "citycode": "CTM",
    "city": "Chetumal",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CZA",
    "name": "Chichen Itza Arpt",
    "citycode": "CZA",
    "city": "Chichen Itza",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "SRL",
    "name": "Santa Rosalia Arpt",
    "citycode": "SRL",
    "city": "Santa Rosalia",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CUU",
    "name": "Chihuahua Airport",
    "citycode": "CUU",
    "city": "Chihuahua",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CUA",
    "name": "Ciudad Constitucion Arpt",
    "citycode": "CUA",
    "city": "Ciudad Constitucion",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CME",
    "name": "Ciudad Del Carmen Arpt",
    "citycode": "CME",
    "city": "Ciudad Del Carmen",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CJS",
    "name": "Intl Abraham Gonzalez",
    "citycode": "CJS",
    "city": "Ciudad Juarez",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MMC",
    "name": "Ciudad Mante Arpt",
    "citycode": "MMC",
    "city": "Ciudad Mante",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CEN",
    "name": "Ciudad Obregon Arpt",
    "citycode": "CEN",
    "city": "Ciudad Obregon",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MEX",
    "name": "Benito Juarez Intl Airport",
    "citycode": "MEX",
    "city": "Mexico City",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MTY",
    "name": "Escobedo Arpt",
    "citycode": "MTY",
    "city": "Monterrey",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CVM",
    "name": "Ciudad Victoria Arpt",
    "citycode": "CVM",
    "city": "Ciudad Victoria",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CLQ",
    "name": "Colima Arpt",
    "citycode": "CLQ",
    "city": "Colima",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CZM",
    "name": "Aeropuerto Intl De Cozumel",
    "citycode": "CZM",
    "city": "Cozumel",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CVJ",
    "name": "Cuernavaca Arpt",
    "citycode": "CVJ",
    "city": "Cuernavaca",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CUL",
    "name": "Fedl De Bachigualato Arpt",
    "citycode": "CUL",
    "city": "Culiacan",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "DGO",
    "name": "Guadalupe Victoria Arpt",
    "citycode": "DGO",
    "city": "Durango",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "ESE",
    "name": "Ensenada Arpt",
    "citycode": "ESE",
    "city": "Ensenada",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "GDL",
    "name": "Miguel Hidalgo Arpt",
    "citycode": "GDL",
    "city": "Guadalajara",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "GYM",
    "name": "Gen Jose M Yanez Arpt",
    "citycode": "GYM",
    "city": "Guaymas",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "HMO",
    "name": "Gen Ignacio Pesqueira Garcia Arpt",
    "citycode": "HMO",
    "city": "Hermosillo",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "ISJ",
    "name": "Isla Mujeres Arpt",
    "citycode": "ISJ",
    "city": "Isla Mujeres",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "IZT",
    "name": "Ixtepec Arpt",
    "citycode": "IZT",
    "city": "Ixtepec",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "JAL",
    "name": "Jalapa Arpt",
    "citycode": "JAL",
    "city": "Jalapa",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "HUX",
    "name": "Bahia De Huatulco Arpt",
    "citycode": "HUX",
    "city": "Santa Cruz Huatulco",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "LAP",
    "name": "Aeropuerto Gen Marquez De Leon",
    "citycode": "LAP",
    "city": "La Paz",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "LOM",
    "name": "Francisco P V Y R",
    "citycode": "LOM",
    "city": "Lagos De Moreno",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "LZC",
    "name": "Lazaro Cardenas Arpt",
    "citycode": "LZC",
    "city": "Lazaro Cardenas Michoacan",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "BJX",
    "name": "Del Bajio Arpt",
    "citycode": "BJX",
    "city": "Leon",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "LTO",
    "name": "Loreto Intl Arpt",
    "citycode": "LTO",
    "city": "Loreto",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "LMM",
    "name": "Federal Los Mochis Arpt",
    "citycode": "LMM",
    "city": "Los Mochis",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "ZLO",
    "name": "Manzanillo Arpt",
    "citycode": "ZLO",
    "city": "Manzanillo",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MAM",
    "name": "Servando Canales Arpt",
    "citycode": "MAM",
    "city": "Matamoros",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MZT",
    "name": "Buelina Arpt",
    "citycode": "MZT",
    "city": "Mazatlan",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MID",
    "name": "Merida Intl",
    "citycode": "MID",
    "city": "Merida",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MXL",
    "name": "Rodolfg Sachez Taboada",
    "citycode": "MXL",
    "city": "Mexicali",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "AZP",
    "name": "Atizapan Arpt",
    "citycode": "MEX",
    "city": "Mexico City",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "NLU",
    "name": "Santa Lucia Arpt",
    "citycode": "MEX",
    "city": "Mexico City",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MTT",
    "name": "Minatitlan Municipal Arpt",
    "citycode": "MTT",
    "city": "Minatitlan",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "SNQ",
    "name": "San Quintin Arpt",
    "citycode": "SNQ",
    "city": "San Quintin",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "LOV",
    "name": "Monclova Arpt",
    "citycode": "LOV",
    "city": "Monclova",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "NTR",
    "name": "Aeropuerto Del Norte",
    "citycode": "MTY",
    "city": "Monterrey",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "MLM",
    "name": "Michoacan Municipal Arpt",
    "citycode": "MLM",
    "city": "Morelia",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "NOG",
    "name": "Nogales Arpt",
    "citycode": "NOG",
    "city": "Nogales",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "NLD",
    "name": "Quetzalcoatl Intl",
    "citycode": "NLD",
    "city": "Nuevo Laredo",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "OAX",
    "name": "Xoxocotlan Arpt",
    "citycode": "OAX",
    "city": "Oaxaca",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PQM",
    "name": "Palenque Arpt",
    "citycode": "PQM",
    "city": "Palenque",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PDS",
    "name": "Piedras Negras Intl Arpt",
    "citycode": "PDS",
    "city": "Piedras Negras",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PNO",
    "name": "Pinotepa Nacional Arpt",
    "citycode": "PNO",
    "city": "Pinotepa Nacional",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PCM",
    "name": "Playa Del Carmen Arpt",
    "citycode": "PCM",
    "city": "Playa Del Carmen",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PAZ",
    "name": "Tajin Arpt",
    "citycode": "PAZ",
    "city": "Poza Rica",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PBC",
    "name": "Huejostingo Arpt",
    "citycode": "PBC",
    "city": "Puebla",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PXM",
    "name": "Puerto Escondido Municipal",
    "citycode": "PXM",
    "city": "Puerto Escondido",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "ACA",
    "name": "Alvarez Intl Arpt",
    "citycode": "ACA",
    "city": "Acapulco",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "AGU",
    "name": "Aguascalientes Municipal Arpt",
    "citycode": "AGU",
    "city": "Aguascalientes",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "XAL",
    "name": "Alamos Arpt",
    "citycode": "XAL",
    "city": "Alamos",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "AZG",
    "name": "Apatzingan Arpt",
    "citycode": "AZG",
    "city": "Apatzingan",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "TZM",
    "name": "TIZIMIN ARPT",
    "citycode": "TZM",
    "city": "TIZIMIN",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "BHL",
    "name": "Bahia De Los Angeles Arpt",
    "citycode": "BHL",
    "city": "Bahia De Los Angeles",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CPE",
    "name": "Campeche Intl Arpt",
    "citycode": "CPE",
    "city": "Campeche",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "CUN",
    "name": "Cancun Aeropuerto Internacional",
    "citycode": "CUN",
    "city": "Cancun",
    "country": "Mexico",
    "countrycode": "MX"
  },
  {
    "code": "PNI",
    "name": "Pohnpei Arpt",
    "citycode": "PNI",
    "city": "Pohnpei",
    "country": "Micronesia",
    "countrycode": "FM"
  },
  {
    "code": "TKK",
    "name": "Truk Arpt",
    "citycode": "TKK",
    "city": "Truk",
    "country": "Micronesia",
    "countrycode": "FM"
  },
  {
    "code": "YAP",
    "name": "Yap Arpt",
    "citycode": "YAP",
    "city": "Yap Fm",
    "country": "Micronesia",
    "countrycode": "FM"
  },
  {
    "code": "KIV",
    "name": "Chisinau Arpt",
    "citycode": "KIV",
    "city": "Chisinau",
    "country": "Moldova",
    "countrycode": "MD"
  },
  {
    "code": "MCM",
    "name": "Hel De Monte Carlo Airport",
    "citycode": "MCM",
    "city": "Monte Carlo",
    "country": "Monaco",
    "countrycode": "MC"
  },
  {
    "code": "ULN",
    "name": "Buyant Uhaa Airport",
    "citycode": "ULN",
    "city": "Ulaanbaatar",
    "country": "Mongolia",
    "countrycode": "MN"
  },
  {
    "code": "TGD",
    "name": "Golubovci Arpt",
    "citycode": "TGD",
    "city": "Podgorica",
    "country": "Montenegro",
    "countrycode": "ME"
  },
  {
    "code": "TIV",
    "name": "Tivat Arpt",
    "citycode": "TIV",
    "city": "Tivat",
    "country": "Montenegro",
    "countrycode": "ME"
  },
  {
    "code": "ESU",
    "name": "Essaouira Arpt",
    "citycode": "ESU",
    "city": "Essaouira",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "OZG",
    "name": "Zagora Airport",
    "citycode": "OZG",
    "city": "Zagora",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "RAK",
    "name": "Menara Airport",
    "citycode": "RAK",
    "city": "Marrakech",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "NDR",
    "name": "Nador Arpt",
    "citycode": "NDR",
    "city": "Nador",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "OUD",
    "name": "Les Angades Arpt",
    "citycode": "OUD",
    "city": "Oujda",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "OZZ",
    "name": "Ourzazate",
    "citycode": "OZZ",
    "city": "Ourzazate",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "RBA",
    "name": "Sale Airport",
    "citycode": "RBA",
    "city": "Rabat",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "TNG",
    "name": "Boukhalef Arpt",
    "citycode": "TNG",
    "city": "Tangier",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "TTU",
    "name": "Sania Ramel",
    "citycode": "TTU",
    "city": "Tetuan",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "FEZ",
    "name": "Fez Airport",
    "citycode": "FEZ",
    "city": "Fez Ma",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "AGA",
    "name": "Agadir Almassira Arpt",
    "citycode": "AGA",
    "city": "Agadir",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "AHU",
    "name": "Charif Al Idrissi Arpt",
    "citycode": "AHU",
    "city": "Al Hoceima",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "CAS",
    "name": "Anfa Airport",
    "citycode": "CAS",
    "city": "Casablanca",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "CMN",
    "name": "Mohamed V Arpt",
    "citycode": "CAS",
    "city": "Casablanca",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "VIL",
    "name": "Dakhla Airport",
    "citycode": "VIL",
    "city": "Dakhla",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "EUN",
    "name": "Hassan I Arpt",
    "citycode": "EUN",
    "city": "El Aaiun",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "ERH",
    "name": "Errachidia Arpt",
    "citycode": "ERH",
    "city": "Errachidia",
    "country": "Morocco",
    "countrycode": "MA"
  },
  {
    "code": "TET",
    "name": "Matunda Arpt",
    "citycode": "TET",
    "city": "Tete",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "BEW",
    "name": "Beira Arpt",
    "citycode": "BEW",
    "city": "Beira",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "VPY",
    "name": "Chimoio Airport",
    "citycode": "VPY",
    "city": "Chimoio",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "INH",
    "name": "Inhambane Airport",
    "citycode": "INH",
    "city": "Inhambane",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "VXC",
    "name": "Lichinga Airport",
    "citycode": "VXC",
    "city": "Lichinga",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "APL",
    "name": "Nampula Arpt",
    "citycode": "APL",
    "city": "Nampula",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "POL",
    "name": "Pemba Arpt",
    "citycode": "POL",
    "city": "Pemba",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "PMA",
    "name": "Pemba Airport",
    "citycode": "PMA",
    "city": "Pemba",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "UEL",
    "name": "Quelimane Arpt",
    "citycode": "UEL",
    "city": "Quelimane",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "TCV",
    "name": "Tete Arpt",
    "citycode": "TET",
    "city": "Tete",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "MNC",
    "name": "Nacala Airport",
    "citycode": "MNC",
    "city": "Nacala",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "MPM",
    "name": "Maputo Intl",
    "citycode": "MPM",
    "city": "Maputo",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "VNX",
    "name": "Vilanculos Arpt",
    "citycode": "VNX",
    "city": "Vilanculos",
    "country": "Mozambique",
    "countrycode": "MZ"
  },
  {
    "code": "KAW",
    "name": "Kawthaung",
    "citycode": "KAW",
    "city": "Kawthaung",
    "country": "Myanmar",
    "countrycode": "MM"
  },
  {
    "code": "KET",
    "name": "Kengtung Airport",
    "citycode": "KET",
    "city": "Keng Tung",
    "country": "Myanmar",
    "countrycode": "MM"
  },
  {
    "code": "PAU",
    "name": "Pauk Airport",
    "citycode": "PAU",
    "city": "Pauk",
    "country": "Myanmar",
    "countrycode": "MM"
  },
  {
    "code": "NYU",
    "name": "Nyaung U Arpt",
    "citycode": "NYU",
    "city": "Nyaung",
    "country": "Myanmar",
    "countrycode": "MM"
  },
  {
    "code": "MDL",
    "name": "Annisaton Arpt",
    "citycode": "MDL",
    "city": "Mandalay",
    "country": "Myanmar",
    "countrycode": "MM"
  },
  {
    "code": "RGN",
    "name": "Mingaladon",
    "citycode": "RGN",
    "city": "Yangon",
    "country": "Myanmar",
    "countrycode": "MM"
  },
  {
    "code": "HEH",
    "name": "Heho Arpt",
    "citycode": "HEH",
    "city": "Heho",
    "country": "Myanmar",
    "countrycode": "MM"
  },
  {
    "code": "NYT",
    "name": "Naypyidaw Airport",
    "citycode": "NYT",
    "city": "(Yelegwe)",
    "country": "Myanmar (Burma)",
    "countrycode": "MM"
  },
  {
    "code": "THL",
    "name": "Tachilek Airport",
    "citycode": "THL",
    "city": "Tachileik",
    "country": "Myanmar (Burma)",
    "countrycode": "MM"
  },
  {
    "code": "PKK",
    "name": "Pakokku Airport",
    "citycode": "PKK",
    "city": "Nyaung-U",
    "country": "Myanmar (Burma)",
    "countrycode": "MM"
  },
  {
    "code": "MYT",
    "name": "Myitkyina Airport",
    "citycode": "MYT",
    "city": "Myitkyina",
    "country": "Myanmar (Burma)",
    "countrycode": "MM"
  },
  {
    "code": "PBU",
    "name": "Putao Airport",
    "citycode": "PBU",
    "city": "Puta",
    "country": "Myanmar (Burma)",
    "countrycode": "MM"
  },
  {
    "code": "KMV",
    "name": "Kalaymyo Airport (Kalemyo Airport)",
    "citycode": "KMV",
    "city": "Kale",
    "country": "Myanmar (Burma)",
    "countrycode": "MM"
  },
  {
    "code": "SNW",
    "name": "Thandwe Airport",
    "citycode": "SNW",
    "city": "Thandwe",
    "country": "Myanmar (Burma)",
    "countrycode": "MM"
  },
  {
    "code": "LSH",
    "name": "Lashio Airport",
    "citycode": "LSH",
    "city": "Lashio",
    "country": "Myanmar (Burma)",
    "countrycode": "MM"
  },
  {
    "code": "ZWH",
    "name": "Windhoek Railway Station",
    "citycode": "WDH",
    "city": "Windhoek",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "ERS",
    "name": "Eros Arpt",
    "citycode": "WDH",
    "city": "Windhoek",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "WDH",
    "name": "Hosea Kutako International Arpt",
    "citycode": "WDH",
    "city": "Windhoek",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "WVB",
    "name": "Rooikop Arpt",
    "citycode": "WVB",
    "city": "Walvis Bay",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "SWP",
    "name": "Swakopmund Arpt",
    "citycode": "SWP",
    "city": "Swakopmund",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "ZSZ",
    "name": "Swakopmund Railway Station",
    "citycode": "SWP",
    "city": "Swakopmund",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "NDU",
    "name": "Rundu Airport",
    "citycode": "NDU",
    "city": "Rundu",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "RHN",
    "name": "Rosh Pina Airport",
    "citycode": "RHN",
    "city": "Rosh Pina",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "OMD",
    "name": "Oranjemund Arpt",
    "citycode": "OMD",
    "city": "Oranjemund",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "OND",
    "name": "Ondangwa Arpt",
    "citycode": "OND",
    "city": "Ondangwa",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "LUD",
    "name": "Luderitz Arpt",
    "citycode": "LUD",
    "city": "Luderitz",
    "country": "Namibia",
    "countrycode": "NA"
  },
  {
    "code": "INU",
    "name": "Nauru Intl Arpt",
    "citycode": "INU",
    "city": "Nauru Island",
    "country": "Nauru",
    "countrycode": "NR"
  },
  {
    "code": "BHR",
    "name": "Bharatpur Airport",
    "citycode": "BHR",
    "city": "Bharatpur",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "BWA",
    "name": "Gautam Buddha Airport",
    "citycode": "BWA",
    "city": "Siddharthanagar",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "BIR",
    "name": "Biratnagar Airport",
    "citycode": "BIR",
    "city": "Biratnagar",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "TPJ",
    "name": "Taplejung Airport",
    "citycode": "TPJ",
    "city": "Taplejung",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "KTM",
    "name": "Tribuvan Arpt",
    "citycode": "KTM",
    "city": "Kathmandu",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "KEP",
    "name": "Nepalgunj Airport",
    "citycode": "KEP",
    "city": "Manikapur",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "PPL",
    "name": "Phaplu Airport",
    "citycode": "PPL",
    "city": "Phaplu",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "PKR",
    "name": "Pokhara Arpt",
    "citycode": "PKR",
    "city": "Pokhara",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "SIF",
    "name": "Simara Airport",
    "citycode": "SIF",
    "city": "Gadhimai",
    "country": "Nepal",
    "countrycode": "NP"
  },
  {
    "code": "QYM",
    "name": "Amersfoort Railway Service",
    "citycode": "QYM",
    "city": "Amersfoort",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "ZYA",
    "name": "Amsterdam Central Rail Station",
    "citycode": "AMS",
    "city": "Amsterdam",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "ZYM",
    "name": "Arnhem Rail Station",
    "citycode": "QAR",
    "city": "Arnhem",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "EIN",
    "name": "Welschap Arpt",
    "citycode": "EIN",
    "city": "Eindhoven",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "ZYE",
    "name": "Eindhoven Rail Station",
    "citycode": "EIN",
    "city": "Eindhoven",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "QYE",
    "name": "Enschede Railway Station",
    "citycode": "ENS",
    "city": "Enschede",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "ENS",
    "name": "Twente Airport",
    "citycode": "ENS",
    "city": "Enschede",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "GRQ",
    "name": "Eelde Arpt",
    "citycode": "GRQ",
    "city": "Groningen",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "QYH",
    "name": "Hengelo Railway Service",
    "citycode": "QYH",
    "city": "Hengelo",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "LEY",
    "name": "Lelystad Arpt",
    "citycode": "LEY",
    "city": "Lelystad",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "ZYT",
    "name": "Maastricht Rail Station",
    "citycode": "MST",
    "city": "Maastricht",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "MST",
    "name": "Maastricht Aachen Arpt",
    "citycode": "MST",
    "city": "Maastricht",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "RTM",
    "name": "Rotterdam Arpt",
    "citycode": "RTM",
    "city": "Rotterdam",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "QRH",
    "name": "Rotterdam Central Rail Station",
    "citycode": "RTM",
    "city": "Rotterdam",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "HAG",
    "name": "Hague Arpt",
    "citycode": "HAG",
    "city": "The Hague",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "ZYH",
    "name": "The Hague Railways Station",
    "citycode": "HAG",
    "city": "The Hague",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "UDE",
    "name": "Volkel Arpt",
    "citycode": "UDE",
    "city": "Uden",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "ZYU",
    "name": "Utrecht Rail Station",
    "citycode": "UTC",
    "city": "Utrecht",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "AMS",
    "name": "Schiphol Arpt",
    "citycode": "AMS",
    "city": "Amsterdam",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "UTC",
    "name": "Soesterberg Arpt",
    "citycode": "UTC",
    "city": "Utrecht",
    "country": "Netherlands",
    "countrycode": "NL"
  },
  {
    "code": "KOC",
    "name": "Koumac Arpt",
    "citycode": "KOC",
    "city": "Koumac",
    "country": "New Caledonia",
    "countrycode": "NC"
  },
  {
    "code": "ILP",
    "name": "Ile Des Pins Arpt",
    "citycode": "ILP",
    "city": "Ile Des Pins",
    "country": "New Caledonia",
    "countrycode": "NC"
  },
  {
    "code": "LIF",
    "name": "Lifou Arpt",
    "citycode": "LIF",
    "city": "Lifou",
    "country": "New Caledonia",
    "countrycode": "NC"
  },
  {
    "code": "NOU",
    "name": "Tontouta Arpt",
    "citycode": "NOU",
    "city": "Noumea",
    "country": "New Caledonia",
    "countrycode": "NC"
  },
  {
    "code": "GEA",
    "name": "Magenta Arpt",
    "citycode": "NOU",
    "city": "Noumea",
    "country": "New Caledonia",
    "countrycode": "NC"
  },
  {
    "code": "AMZ",
    "name": "Ardmore Airport",
    "citycode": "AMZ",
    "city": "Ardmore",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "MHB",
    "name": "Mechanics Bay Arpt",
    "citycode": "AKL",
    "city": "Auckland",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "BHE",
    "name": "Woodbourne Arpt",
    "citycode": "BHE",
    "city": "Blenheim",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "CMV",
    "name": "Coromandel Arpt",
    "citycode": "CMV",
    "city": "Coromandel",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "DUD",
    "name": "Momona Airport",
    "citycode": "DUD",
    "city": "Dunedin",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "GIS",
    "name": "Gisborne Arpt",
    "citycode": "GIS",
    "city": "Gisborne",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "GBZ",
    "name": "Great Barrier Island Arpt",
    "citycode": "GBZ",
    "city": "Great Barrier Island",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "HLZ",
    "name": "Hamilton Arpt",
    "citycode": "HLZ",
    "city": "Hamilton",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "HKK",
    "name": "Hokitika Airport",
    "citycode": "HKK",
    "city": "Hokitika",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "IVC",
    "name": "Invercargill Arpt",
    "citycode": "IVC",
    "city": "Invercargill",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "ALR",
    "name": "Alexandra Arpt",
    "citycode": "ALR",
    "city": "Alexandra",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "KBZ",
    "name": "Kaikoura Arpt",
    "citycode": "KBZ",
    "city": "Kaikoura",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "KAT",
    "name": "Kaitaia Arpt",
    "citycode": "KAT",
    "city": "Kaitaia",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "KKE",
    "name": "Kerikeri Arpt",
    "citycode": "KKE",
    "city": "Kerikeri",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "MRO",
    "name": "Masterton Arpt",
    "citycode": "MRO",
    "city": "Masterton",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "CHC",
    "name": "Christchurch Arpt",
    "citycode": "CHC",
    "city": "Christchurch",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "MFN",
    "name": "Milford Sound Arpt",
    "citycode": "MFN",
    "city": "Milford Sound",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "WLG",
    "name": "Wellington Arpt",
    "citycode": "WLG",
    "city": "Wellington",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "MON",
    "name": "Mount Cook Arpt",
    "citycode": "MON",
    "city": "Mount Cook",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "GTN",
    "name": "Glentannerarpt",
    "citycode": "MON",
    "city": "Mount Cook",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "TWZ",
    "name": "Pukaki Twizelarpt",
    "citycode": "MON",
    "city": "Mount Cook",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "NPE",
    "name": "Hawkes Bay Arpt",
    "citycode": "NPE",
    "city": "Napier Hastings",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "NSN",
    "name": "Nelson Arpt",
    "citycode": "NSN",
    "city": "Nelson",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "NPL",
    "name": "New Plymouth Arpt",
    "citycode": "NPL",
    "city": "New Plymouth",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "OAM",
    "name": "Oamaru Airport",
    "citycode": "OAM",
    "city": "Oamaru",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "DGR",
    "name": "Dargaville Aerodrome",
    "citycode": "DGR",
    "city": "Turiwiri",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "OHA",
    "name": "Royal Air Force Base Airport",
    "citycode": "OHA",
    "city": "Ohakea",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "PMR",
    "name": "Palmerston North Arpt",
    "citycode": "PMR",
    "city": "Palmerston",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "PPQ",
    "name": "Paraparaumu Arpt",
    "citycode": "PPQ",
    "city": "Paraparaumu",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "PCN",
    "name": "Koromiko",
    "citycode": "PCN",
    "city": "Picton",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "ZQN",
    "name": "Frankton Airport",
    "citycode": "ZQN",
    "city": "Queenstown",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "ROT",
    "name": "Rotorua Arpt",
    "citycode": "ROT",
    "city": "Rotorua",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "AKL",
    "name": "Auckland Arpt",
    "citycode": "AKL",
    "city": "Auckland",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "TUO",
    "name": "Taupo Arpt",
    "citycode": "TUO",
    "city": "Taupo",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "TRG",
    "name": "Tauranga Arpt",
    "citycode": "TRG",
    "city": "Tauranga",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "TEU",
    "name": "Manapouri Airport",
    "citycode": "TEU",
    "city": "Te Anau",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "TMZ",
    "name": "Thames Arpt",
    "citycode": "TMZ",
    "city": "Thames",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "TIU",
    "name": "Timaru Arpt",
    "citycode": "TIU",
    "city": "Timaru",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "WKA",
    "name": "Wanaka Arpt",
    "citycode": "WKA",
    "city": "Wanaka",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "WAG",
    "name": "Wanganui Arpt",
    "citycode": "WAG",
    "city": "Wanganui",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "WSZ",
    "name": "Westport Airport",
    "citycode": "WSZ",
    "city": "Westport",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "WHK",
    "name": "Whakatane Arpt",
    "citycode": "WHK",
    "city": "Whakatane",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "WRE",
    "name": "Whangarei Arpt",
    "citycode": "WRE",
    "city": "Whangarei",
    "country": "New Zealand",
    "countrycode": "NZ"
  },
  {
    "code": "MGA",
    "name": "Augusto C Sandino",
    "citycode": "MGA",
    "city": "Managua",
    "country": "Nicaragua",
    "countrycode": "NI"
  },
  {
    "code": "NIM",
    "name": "Niamey Airport",
    "citycode": "NIM",
    "city": "Niamey",
    "country": "Niger",
    "countrycode": "NE"
  },
  {
    "code": "ABV",
    "name": "Abuja Intl",
    "citycode": "ABV",
    "city": "Abuja",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "LOS",
    "name": "Murtala Muhammed Arpt",
    "citycode": "LOS",
    "city": "Lagos",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "QRW",
    "name": "Warri Airport",
    "citycode": "QRW",
    "city": "Warri",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "PHC",
    "name": "Port Harcourt Arpt",
    "citycode": "PHC",
    "city": "Port Harcourt",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "PHG",
    "name": "Port Harcourt City Arpt",
    "citycode": "PHC",
    "city": "Port Harcourt",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "QOW",
    "name": "Sam Mbakwe Airport",
    "citycode": "QOW",
    "city": "Owerri",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "MDI",
    "name": "Makurdi Arpt",
    "citycode": "MDI",
    "city": "Makurdi",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "KAN",
    "name": "Aminu Kano Intl Arpt",
    "citycode": "KAN",
    "city": "Kano",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "IBA",
    "name": "Ibadanairport",
    "citycode": "IBA",
    "city": "Ibadan",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "ENU",
    "name": "Emene Airport",
    "citycode": "ENU",
    "city": "Enugu",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "CBQ",
    "name": "CALABAR ARPT",
    "citycode": "CBQ",
    "city": "Calabar",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "BNI",
    "name": "Benin Airport",
    "citycode": "BNI",
    "city": "Benin City",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "ABB",
    "name": "Asaba International Arpt",
    "citycode": "ABB",
    "city": "Asaba",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "QUO",
    "name": "Akwa Ibom International Airport",
    "citycode": "QUO",
    "city": "Uyo",
    "country": "Nigeria",
    "countrycode": "NG"
  },
  {
    "code": "IUE",
    "name": "Hanan Arpt",
    "citycode": "IUE",
    "city": "Niue Island",
    "country": "Niue",
    "countrycode": "NU"
  },
  {
    "code": "NLK",
    "name": "Norfolk Island Intl Arpt",
    "citycode": "NLK",
    "city": "Norfolk Island",
    "country": "Norfolk Island",
    "countrycode": "NF"
  },
  {
    "code": "ROP",
    "name": "Rota Arpt",
    "citycode": "ROP",
    "city": "Rota",
    "country": "Northern Mariana Islands",
    "countrycode": "MP"
  },
  {
    "code": "SPN",
    "name": "Saipan Intl",
    "citycode": "SPN",
    "city": "Saipan",
    "country": "Northern Mariana Islands",
    "countrycode": "MP"
  },
  {
    "code": "TIQ",
    "name": "Tinian Arpt",
    "citycode": "TIQ",
    "city": "Tinian",
    "country": "Northern Mariana Islands",
    "countrycode": "MP"
  },
  {
    "code": "BGO",
    "name": "Flesland Airport",
    "citycode": "BGO",
    "city": "Bergen",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKI",
    "name": "Lillestrom Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "TRF",
    "name": "Sandefjord Arpt",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XXL",
    "name": "Lillehammer Rail Station",
    "citycode": "XXL",
    "city": "Lille Hammer",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "HFT",
    "name": "Hammerfest Arpt",
    "citycode": "HFT",
    "city": "Hammerfest",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "EVE",
    "name": "Evenes Arpt",
    "citycode": "EVE",
    "city": "Harstad Narvik",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "RVK",
    "name": "Ryumsjoen Arpt",
    "citycode": "RVK",
    "city": "Roervik",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "HMR",
    "name": "Hamar Arpt",
    "citycode": "HMR",
    "city": "Hamar",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZXX",
    "name": "Rade Rail Station",
    "citycode": "ZXX",
    "city": "Rade",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "RRS",
    "name": "Roros Arpt",
    "citycode": "RRS",
    "city": "Roros",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKF",
    "name": "Fredrikstad Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "RET",
    "name": "Rost Airport",
    "citycode": "RET",
    "city": "Rost, Norway",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZXU",
    "name": "Rygge Rail Station",
    "citycode": "ZXU",
    "city": "Rygge",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "AES",
    "name": "Vigra Airport",
    "citycode": "AES",
    "city": "Aalesund",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ALF",
    "name": "Elvebakken Arpt",
    "citycode": "ALF",
    "city": "Alta",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SDN",
    "name": "Anda Airport",
    "citycode": "SDN",
    "city": "Sandane",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "LYR",
    "name": "Svalbard Arpt",
    "citycode": "LYR",
    "city": "Longyearbyen",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKE",
    "name": "Rena Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ANX",
    "name": "Andenes Arpt",
    "citycode": "ANX",
    "city": "Andenes",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "BDU",
    "name": "Bardufoss Arpt",
    "citycode": "BDU",
    "city": "Bardufoss",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "BJF",
    "name": "Batsfjord Arpt",
    "citycode": "BJF",
    "city": "Batsfjord",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKN",
    "name": "Finse Rail Station",
    "citycode": "BGO",
    "city": "Bergen",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZYS",
    "name": "Sandejford Rail Station",
    "citycode": "ZYS",
    "city": "Sandefjord",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XZO",
    "name": "Oslo Central Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "OSL",
    "name": "Oslo Arpt",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XVK",
    "name": "Voss Rail Station",
    "citycode": "BGO",
    "city": "Bergen",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SSJ",
    "name": "Stokka Arpt",
    "citycode": "SSJ",
    "city": "Sandnessjoen",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZYW",
    "name": "Sandvika Rail Station",
    "citycode": "ZYW",
    "city": "Sandvika",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "QFV",
    "name": "Bergen Norway Railway Stattion",
    "citycode": "BGO",
    "city": "Bergen",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "BOO",
    "name": "Bodo Arpt",
    "citycode": "BOO",
    "city": "Bodo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZXM",
    "name": "Rognan Rail Station",
    "citycode": "BOO",
    "city": "Bodo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "BNN",
    "name": "Bronnoy Arpt",
    "citycode": "BNN",
    "city": "Bronnoysund",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKD",
    "name": "Halden Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKB",
    "name": "Kongsberg Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZVD",
    "name": "Drangedal Rail Station",
    "citycode": "ZVD",
    "city": "Drangedal",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "VDB",
    "name": "Valdres Arpt",
    "citycode": "VDB",
    "city": "Fagernes",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZXO",
    "name": "Fauske Rail Station",
    "citycode": "ZXO",
    "city": "Fauske",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "FRO",
    "name": "Flora Arpt",
    "citycode": "FRO",
    "city": "Floro",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKQ",
    "name": "Sarpsborg Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKM",
    "name": "Moss Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "FDE",
    "name": "Bringeland Arpt",
    "citycode": "FDE",
    "city": "Forde",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "DLD",
    "name": "Dagali Arpt",
    "citycode": "DLD",
    "city": "Geilo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XND",
    "name": "Drammen Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XGP",
    "name": "Dombas Rail Station",
    "citycode": "GLL",
    "city": "Gol City",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKZ",
    "name": "Vinstra Rail Station",
    "citycode": "GLL",
    "city": "Gol City",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "QFQ",
    "name": "Harbour Arpt",
    "citycode": "QFQ",
    "city": "Maloy",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "GLL",
    "name": "Klanten Arpt",
    "citycode": "GLL",
    "city": "Gol City",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKK",
    "name": "Larvik Rail Station",
    "citycode": "SKE",
    "city": "Skien",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XGU",
    "name": "Asker Rail Station",
    "citycode": "OSL",
    "city": "Oslo",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKP",
    "name": "Porsgrunn Rail Station",
    "citycode": "SKE",
    "city": "Skien",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SKE",
    "name": "Skien Arpt",
    "citycode": "SKE",
    "city": "Skien",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SOG",
    "name": "Haukasen Arpt",
    "citycode": "SOG",
    "city": "Sogndal",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZYY",
    "name": "Marnardal Rail Station",
    "citycode": "ZYY",
    "city": "Marnardal",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SVG",
    "name": "Sola Airport",
    "citycode": "SVG",
    "city": "Stavanger",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZWC",
    "name": "Stavanger Rail Station",
    "citycode": "SVG",
    "city": "Stavanger",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XOQ",
    "name": "Sira Rail Station",
    "citycode": "SVG",
    "city": "Stavanger",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKC",
    "name": "Sandnes Rail Station",
    "citycode": "SVG",
    "city": "Stavanger",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKG",
    "name": "Grong Rail Station",
    "citycode": "XKJ",
    "city": "Steinkjer",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKJ",
    "name": "Steinkjer Rail Station",
    "citycode": "XKJ",
    "city": "Steinkjer",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "HOV",
    "name": "Hovden Arpt",
    "citycode": "HOV",
    "city": "Orsta Volda",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "NTB",
    "name": "Notodden Arpt",
    "citycode": "NTB",
    "city": "Notodden",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "NVK",
    "name": "Framnes Arpt",
    "citycode": "NVK",
    "city": "Narvik",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "OSY",
    "name": "Namsos Arpt",
    "citycode": "OSY",
    "city": "Namsos",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SKN",
    "name": "Skagen Arpt",
    "citycode": "SKN",
    "city": "Stokmarknes",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SRP",
    "name": "Stord Arpt",
    "citycode": "SRP",
    "city": "Stord",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "MJF",
    "name": "Kjaerstad Arpt",
    "citycode": "MJF",
    "city": "Mosjoen",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SOJ",
    "name": "Sorkjosen",
    "citycode": "SOJ",
    "city": "Sorkjosen",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "SVJ",
    "name": "Helle",
    "citycode": "SVJ",
    "city": "Svolvaer",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "TOS",
    "name": "Tromso Langnes Arpt",
    "citycode": "TOS",
    "city": "Tromso",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "TRD",
    "name": "Trondheim Vaernes Arpt",
    "citycode": "TRD",
    "city": "Trondheim",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XOD",
    "name": "Oppdal Rail Station",
    "citycode": "TRD",
    "city": "Trondheim",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XZT",
    "name": "Trondheim Rail Station",
    "citycode": "TRD",
    "city": "Trondheim",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "VDS",
    "name": "Vadso",
    "citycode": "VDS",
    "city": "Vadso",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "VAW",
    "name": "Vardoe Luftan",
    "citycode": "VAW",
    "city": "Vardoe",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "ZYV",
    "name": "Vegarshei Rail Station",
    "citycode": "ZYV",
    "city": "Vegarshei",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "HAU",
    "name": "Karmoy Arpt",
    "citycode": "HAU",
    "city": "Haugesund",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "HVG",
    "name": "Valan Arpt",
    "citycode": "HVG",
    "city": "Honningsvag",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "BVG",
    "name": "Berlevag",
    "citycode": "BVG",
    "city": "Berlevag",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "KKN",
    "name": "Hoeybuktmoen Arpt",
    "citycode": "KKN",
    "city": "Kirkenes",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XZD",
    "name": "Kongsvinger Rail Station",
    "citycode": "XZD",
    "city": "Kongsvinger",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "KRS",
    "name": "Kjevik Airport",
    "citycode": "KRS",
    "city": "Kristiansand",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XGD",
    "name": "Arendal Rail Station",
    "citycode": "KRS",
    "city": "Kristiansand",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "MOL",
    "name": "Aro Arpt",
    "citycode": "MOL",
    "city": "Molde",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XKR",
    "name": "Kristiansand Rail Station",
    "citycode": "KRS",
    "city": "Kristiansand",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "MQN",
    "name": "Rossvoll",
    "citycode": "MQN",
    "city": "Mo I Rana",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "KSU",
    "name": "Kvernberget Arpt",
    "citycode": "KSU",
    "city": "Kristiansund",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "MEH",
    "name": "Mehamn Arpt",
    "citycode": "MEH",
    "city": "Mehamn",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "XGI",
    "name": "Andalsnes Rail Station",
    "citycode": "KSU",
    "city": "Kristiansund",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "LKL",
    "name": "Banak Airport",
    "citycode": "LKL",
    "city": "Lakselv",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "LKN",
    "name": "Leknes Arpt",
    "citycode": "LKN",
    "city": "Leknes",
    "country": "Norway",
    "countrycode": "NO"
  },
  {
    "code": "KHS",
    "name": "Khasab Airport",
    "citycode": "KHS",
    "city": "Al Khasab",
    "country": "Oman",
    "countrycode": "OM"
  },
  {
    "code": "SUH",
    "name": "Sur Arpt",
    "citycode": "SUH",
    "city": "Sur Om",
    "country": "Oman",
    "countrycode": "OM"
  },
  {
    "code": "OHS",
    "name": "Sohar Airport",
    "citycode": "OHS",
    "city": "Sohar",
    "country": "Oman",
    "countrycode": "OM"
  },
  {
    "code": "SLL",
    "name": "Salalah Arpt",
    "citycode": "SLL",
    "city": "Salalah",
    "country": "Oman",
    "countrycode": "OM"
  },
  {
    "code": "DQM",
    "name": "Duqm International Airport",
    "citycode": "DQM",
    "city": "Duqm, Oman",
    "country": "Oman",
    "countrycode": "OM"
  },
  {
    "code": "MCT",
    "name": "Muscat Internatonal Arpt",
    "citycode": "MCT",
    "city": "Muscat",
    "country": "Oman",
    "countrycode": "OM"
  },
  {
    "code": "UET",
    "name": "Quetta International Airport",
    "citycode": "UET",
    "city": "Quetta",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "LYP",
    "name": "Faisalabad International Arpt",
    "citycode": "LYP",
    "city": "Faisalabad",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "GIL",
    "name": "Gilgit Arpt",
    "citycode": "GIL",
    "city": "Gilgit",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "HDD",
    "name": "Hyderabad",
    "citycode": "HDD",
    "city": "Hyderabad",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "ISB",
    "name": "Islamabad Intl",
    "citycode": "ISB",
    "city": "Islamabad",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "LHE",
    "name": "Lahore Arpt",
    "citycode": "LHE",
    "city": "Lahore",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "MJD",
    "name": "Mohenjodaro Arpt",
    "citycode": "MJD",
    "city": "Mohenjodaro",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "WNS",
    "name": "Nawabshah Arpt",
    "citycode": "WNS",
    "city": "Nawabshah",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "RYK",
    "name": "Rahim Yar Khan airport",
    "citycode": "RYK",
    "city": "Rahim Yar Khan",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "SGI",
    "name": "Sargodha Arpt",
    "citycode": "SGI",
    "city": "Sargodha",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "BHW",
    "name": "Bhagatanwala Arpt",
    "citycode": "SGI",
    "city": "Sargodha",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "KDU",
    "name": "Skardu Airport",
    "citycode": "KDU",
    "city": "Skardu",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "TUK",
    "name": "Turbat Arpt",
    "citycode": "TUK",
    "city": "Turbat",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "CJL",
    "name": "Chitral Airport",
    "citycode": "CJL",
    "city": "Chitral",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "SKZ",
    "name": "Sukkur Airport",
    "citycode": "SKZ",
    "city": "Sukkur",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "MUX",
    "name": "Multan Airport",
    "citycode": "MUX",
    "city": "Multan",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "SKT",
    "name": "Sialkot Arpt",
    "citycode": "SKT",
    "city": "Sialkot",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "PEW",
    "name": "Peshawar Arpt",
    "citycode": "PEW",
    "city": "Peshawar",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "KHI",
    "name": "Quaid E Azam International",
    "citycode": "KHI",
    "city": "Karachi",
    "country": "Pakistan",
    "countrycode": "PK"
  },
  {
    "code": "ROR",
    "name": "Airai Airport",
    "citycode": "ROR",
    "city": "Koror",
    "country": "Palau",
    "countrycode": "PW"
  },
  {
    "code": "GZA",
    "name": "Gaza International Arpt",
    "citycode": "GZA",
    "city": "Gaza",
    "country": "Palestine",
    "countrycode": "PS"
  },
  {
    "code": "BOC",
    "name": "Bocas Del Toro Arpt",
    "citycode": "BOC",
    "city": "Bocas Del Toro",
    "country": "Panama",
    "countrycode": "PA"
  },
  {
    "code": "CTD",
    "name": "Chitre Airfield",
    "citycode": "CTD",
    "city": "Chitre",
    "country": "Panama",
    "countrycode": "PA"
  },
  {
    "code": "DAV",
    "name": "Enrique Malek Arpt",
    "citycode": "DAV",
    "city": "David",
    "country": "Panama",
    "countrycode": "PA"
  },
  {
    "code": "CHX",
    "name": "Changuinola Arpt",
    "citycode": "CHX",
    "city": "Changuinola",
    "country": "Panama",
    "countrycode": "PA"
  },
  {
    "code": "PAC",
    "name": "Paitilla Arpt",
    "citycode": "PTY",
    "city": "Panama City",
    "country": "Panama",
    "countrycode": "PA"
  },
  {
    "code": "PTY",
    "name": "Tocumen Intl Arpt",
    "citycode": "PTY",
    "city": "Panama City",
    "country": "Panama",
    "countrycode": "PA"
  },
  {
    "code": "OPU",
    "name": "Balimo Airport",
    "citycode": "OPU",
    "city": "Balimo",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "VMU",
    "name": "BALIMO AIRPORT",
    "citycode": "VMU",
    "city": "Balimuru",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "BUA",
    "name": "Buka Airport",
    "citycode": "BUA",
    "city": "Buka Island",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "BUL",
    "name": "Bulolo Airport",
    "citycode": "BUL",
    "city": "Bulolo",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "DAU",
    "name": "Daru Airport",
    "citycode": "DAU",
    "city": "Daru",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "EFG",
    "name": "EFOGI AIRPORT",
    "citycode": "EFG",
    "city": "Efogi",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "FNE",
    "name": "FANE AIRPORT",
    "citycode": "FNE",
    "city": "Fane",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "GAR",
    "name": "Garaina Arpt",
    "citycode": "GAR",
    "city": "Garaina",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "GKA",
    "name": "Goroka Arpt",
    "citycode": "GKA",
    "city": "Goroka",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "HKN",
    "name": "Hoskins Arpt",
    "citycode": "HKN",
    "city": "Hoskins",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "ITK",
    "name": "ITOKAMA AIRPORT",
    "citycode": "ITK",
    "city": "Itokama",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "KGW",
    "name": "KAGI AIRPORT",
    "citycode": "KGW",
    "city": "Kagi",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "KVG",
    "name": "Kavieng Arpt",
    "citycode": "KVG",
    "city": "Kavieng",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "KMA",
    "name": "Kerema Airport",
    "citycode": "KMA",
    "city": "Kerema",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "KOR",
    "name": "Kokoro Arpt",
    "citycode": "KOR",
    "city": "Kokoro",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "LAE",
    "name": "Nadzab Arpt",
    "citycode": "LAE",
    "city": "Lae Pg",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "LNV",
    "name": "Lihir Island Arpt",
    "citycode": "LNV",
    "city": "Lihir Island",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "LSA",
    "name": "Kiriwina Airport",
    "citycode": "LSA",
    "city": "Losuia",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "MAG",
    "name": "Madang Arpt",
    "citycode": "MAG",
    "city": "Madang",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "MAS",
    "name": "Momote Arpt",
    "citycode": "MAS",
    "city": "Manus Island",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "MDU",
    "name": "Mendi Arpt",
    "citycode": "MDU",
    "city": "Mendi",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "MIS",
    "name": "Misima Island Airport",
    "citycode": "MIS",
    "city": "Misima Island",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "HGU",
    "name": "Kagamuga Arpt",
    "citycode": "HGU",
    "city": "Mt Hagen",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "PNP",
    "name": "Girua Arpt",
    "citycode": "PNP",
    "city": "Popondetta",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "POM",
    "name": "Jackson Field",
    "citycode": "POM",
    "city": "Port Moresby",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "RAB",
    "name": "Tokua Arpt",
    "citycode": "RAB",
    "city": "Rabaul",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "TIZ",
    "name": "Tari Arpt",
    "citycode": "TIZ",
    "city": "Tari",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "TIG",
    "name": "Tingwon Arpt",
    "citycode": "TIG",
    "city": "Tingwon",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "TBG",
    "name": "Tabubil Arpt",
    "citycode": "TBG",
    "city": "Tububil",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "TFI",
    "name": "Tufi Airport",
    "citycode": "TFI",
    "city": "Tufi",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "VAI",
    "name": "Vanimo Arpt",
    "citycode": "VAI",
    "city": "Vanimo",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "WBM",
    "name": "Wapenamanda Airport",
    "citycode": "WBM",
    "city": "Wapenamanda",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "WWK",
    "name": "Boram Arpt",
    "citycode": "WWK",
    "city": "Wewak",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "SAM",
    "name": "Salamo Arpt",
    "citycode": "SAM",
    "city": "Salamo",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "AWB",
    "name": "AWABA AIRPORT",
    "citycode": "AWB",
    "city": "AWABA",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "TAJ",
    "name": "Tadji Airport",
    "citycode": "ATP",
    "city": "Aitape",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "KIE",
    "name": "Aropa Airport",
    "citycode": "KIE",
    "city": "Kieta, Papua New Guinea",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "ATP",
    "name": "Aitape Airport",
    "citycode": "ATP",
    "city": "Aitape",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "GUR",
    "name": "Gurney Arpt",
    "citycode": "GUR",
    "city": "Alotau",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "AUI",
    "name": "Aua Island Arpt",
    "citycode": "AUI",
    "city": "Aua Island",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "BOT",
    "name": "BOSSET AIRPORT",
    "citycode": "BOT",
    "city": "BOSSET",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "WPM",
    "name": "Wipim Airport",
    "citycode": "WPM",
    "city": "Wipim",
    "country": "Papua New Guinea",
    "countrycode": "PG"
  },
  {
    "code": "VMI",
    "name": "Inc Arpt",
    "citycode": "VMI",
    "city": "Vallemi",
    "country": "Paraguay",
    "countrycode": "PY"
  },
  {
    "code": "ASU",
    "name": "Salvio Pettirosse Arpt",
    "citycode": "ASU",
    "city": "Asuncion",
    "country": "Paraguay",
    "countrycode": "PY"
  },
  {
    "code": "AGT",
    "name": "Alejo Garcia Arpt",
    "citycode": "AGT",
    "city": "Ciudad Del Este",
    "country": "Paraguay",
    "countrycode": "PY"
  },
  {
    "code": "CIO",
    "name": "Mcal Lopez Arpt",
    "citycode": "CIO",
    "city": "Concepcion",
    "country": "Paraguay",
    "countrycode": "PY"
  },
  {
    "code": "OLK",
    "name": "Fuerte Olimpo Arpt",
    "citycode": "OLK",
    "city": "Fuerte Olimpo",
    "country": "Paraguay",
    "countrycode": "PY"
  },
  {
    "code": "PCJ",
    "name": "Puerto La Victoria Arpt",
    "citycode": "PCJ",
    "city": "Puerto La Victoria",
    "country": "Paraguay",
    "countrycode": "PY"
  },
  {
    "code": "TCQ",
    "name": "Tacna Airport",
    "citycode": "TCQ",
    "city": "Tacna",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "AQP",
    "name": "Rodriguez Ballon Arpt",
    "citycode": "AQP",
    "city": "Arequipa",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "AYP",
    "name": "Yanamilla Arpt",
    "citycode": "AYP",
    "city": "Ayacucho",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "CJA",
    "name": "Cajamarca Airport",
    "citycode": "CJA",
    "city": "Cajamarca",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "CIX",
    "name": "Cornel Ruiz Arpt",
    "citycode": "CIX",
    "city": "Chiclayo",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "CUZ",
    "name": "Tte Velazco Astete Arpt",
    "citycode": "CUZ",
    "city": "Cuzco",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "HUU",
    "name": "Huanuco Arpt",
    "citycode": "HUU",
    "city": "Huanuco",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "IQT",
    "name": "C F Secada Arpt",
    "citycode": "IQT",
    "city": "Iquitos",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "JUL",
    "name": "Juliaca Arpt",
    "citycode": "JUL",
    "city": "Juliaca",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "MFT",
    "name": "Machu Picchu Arpt",
    "citycode": "MFT",
    "city": "Machu Picchu",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "PIO",
    "name": "Pisco Airport",
    "citycode": "PIO",
    "city": "Pisco",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "PIU",
    "name": "Piura Arpt",
    "citycode": "PIU",
    "city": "Piura",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "PCL",
    "name": "Capitan Rolden Arpt",
    "citycode": "PCL",
    "city": "Pucallpa",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "PEM",
    "name": "Puerto Maldonado Arpt",
    "citycode": "PEM",
    "city": "Puerto Maldonado",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "TRU",
    "name": "Trujillo Arpt",
    "citycode": "TRU",
    "city": "Trujillo",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "TBP",
    "name": "Tumbes Arpt",
    "citycode": "TBP",
    "city": "Tumbes",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "LIM",
    "name": "Jorge Chavez International Arpt",
    "citycode": "LIM",
    "city": "Lima",
    "country": "Peru",
    "countrycode": "PE"
  },
  {
    "code": "BAG",
    "name": "Loakan Arpt",
    "citycode": "BAG",
    "city": "Baguio",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "USU",
    "name": "Busuangaarpt",
    "citycode": "USU",
    "city": "Busuanga",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "BXU",
    "name": "Butuan Arpt",
    "citycode": "BXU",
    "city": "Butuan",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "CGY",
    "name": "Lumbia Arpt",
    "citycode": "CGY",
    "city": "Cagayan",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "CRM",
    "name": "National Airport",
    "citycode": "CRM",
    "city": "Catarman",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "CBO",
    "name": "Awang Arpt",
    "citycode": "CBO",
    "city": "Cotabato",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "DPL",
    "name": "Dipolog Arpt",
    "citycode": "DPL",
    "city": "Dipolog",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "DGT",
    "name": "Dumaguete Arpt",
    "citycode": "DGT",
    "city": "Dumaguete",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "MPH",
    "name": "Malay Arpt",
    "citycode": "MPH",
    "city": "Caticlan",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "GES",
    "name": "General Santos Intl",
    "citycode": "GES",
    "city": "General Santos",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "ILO",
    "name": "Mandurriao Arpt",
    "citycode": "ILO",
    "city": "Iloilo",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "MNL",
    "name": "Ninoy Aquino Intl",
    "citycode": "MNL",
    "city": "Manila",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "KLO",
    "name": "Kalibo Arpt",
    "citycode": "KLO",
    "city": "Kalibo",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "LAO",
    "name": "Laoag Arpt",
    "citycode": "LAO",
    "city": "Laoag",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "DVO",
    "name": "Francisco Bangoy Intl",
    "citycode": "DVO",
    "city": "Davao",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "IAO",
    "name": "Sayak",
    "citycode": "IAO",
    "city": "Siargao",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "LGP",
    "name": "Legaspi Arpt",
    "citycode": "LGP",
    "city": "Legaspi",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "NCP",
    "name": "Cubi Pt NAS",
    "citycode": "CRK",
    "city": "Luzon Island",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "CRK",
    "name": "Clark Field Arpt",
    "citycode": "CRK",
    "city": "Luzon Island",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "SGL",
    "name": "Sangley Point NAS",
    "citycode": "MNL",
    "city": "Manila",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "MBT",
    "name": "Murfreesboro Municipal Arpt",
    "citycode": "MBT",
    "city": "Masbate",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "WNP",
    "name": "Naga Arpt",
    "citycode": "WNP",
    "city": "Naga",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "OZC",
    "name": "Labo Airport",
    "citycode": "OZC",
    "city": "Ozamis City",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "RXS",
    "name": "Roxas City Arpt",
    "citycode": "RXS",
    "city": "Roxas City",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "SFE",
    "name": "San Fernando Arpt",
    "citycode": "SFE",
    "city": "San Fernando",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "CEB",
    "name": "Cebu Intl",
    "citycode": "CEB",
    "city": "Cebu",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "SFS",
    "name": "Subic Bay Intl Arpt",
    "citycode": "SFS",
    "city": "Subic Bay",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "PPS",
    "name": "Puerto Princesa Arpt",
    "citycode": "PPS",
    "city": "Puerto Princesa",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "SUG",
    "name": "Surigao Airport",
    "citycode": "SUG",
    "city": "Surigao",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "TAC",
    "name": "D Z Romualdez Arpt",
    "citycode": "TAC",
    "city": "Tacloban",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "MLP",
    "name": "Malabang Airport",
    "citycode": "MLP",
    "city": "Malabang",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "TAG",
    "name": "Tagbilaran Arpt",
    "citycode": "TAG",
    "city": "Tagbilaran",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "TUG",
    "name": "Tuguegarao Arpt",
    "citycode": "TUG",
    "city": "Tuguegarao",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "ZAM",
    "name": "Zamboanga Airport",
    "citycode": "ZAM",
    "city": "Zamboanga",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "BCD",
    "name": "Bacolod Arpt",
    "citycode": "BCD",
    "city": "Bacolod",
    "country": "Philippines",
    "countrycode": "PH"
  },
  {
    "code": "RZE",
    "name": "Jasionka Arpt",
    "citycode": "RZE",
    "city": "Rzeszow",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "WAW",
    "name": "Warsaw Intl Arpt",
    "citycode": "WAW",
    "city": "Warsaw",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "BZG",
    "name": "Bydgoszcz Arpt",
    "citycode": "BZG",
    "city": "Bydgoszcz",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "ZBG",
    "name": "Elblag Airport",
    "citycode": "ZBG",
    "city": "Elblag",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "GDN",
    "name": "Rebiechowo",
    "citycode": "GDN",
    "city": "Gdansk",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "KTW",
    "name": "Pyrzowice",
    "citycode": "KTW",
    "city": "Katowice",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "KRK",
    "name": "John Paul II International",
    "citycode": "KRK",
    "city": "Krakow",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "LCJ",
    "name": "Lodz Lublinek Arpt",
    "citycode": "LCJ",
    "city": "Lodz",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "LUZ",
    "name": "Swidnik Arpt",
    "citycode": "LUZ",
    "city": "Lublin",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "QYO",
    "name": "Olsztyn Arpt",
    "citycode": "QYO",
    "city": "Olsztyn",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "POZ",
    "name": "Lawica Arpt",
    "citycode": "POZ",
    "city": "Poznan",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "SZZ",
    "name": "Goleniow Arpt",
    "citycode": "SZZ",
    "city": "Szczecin",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "SZY",
    "name": "Mazury Arpt",
    "citycode": "SZY",
    "city": "Szymany",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "WMI",
    "name": "Warsaw Modlin Airport",
    "citycode": "WAW",
    "city": "Warsaw",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "WRO",
    "name": "Strachowice",
    "citycode": "WRO",
    "city": "Wroclaw",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "IEG",
    "name": "Babimost Arpt",
    "citycode": "IEG",
    "city": "Zielona",
    "country": "Poland",
    "countrycode": "PL"
  },
  {
    "code": "TER",
    "name": "Lajes Arpt",
    "citycode": "TER",
    "city": "Terceira",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "CBP",
    "name": "Coimbra Arpt",
    "citycode": "CBP",
    "city": "Coimbra",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "CVU",
    "name": "Corvo Arpt",
    "citycode": "CVU",
    "city": "Corvo Island",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "FAO",
    "name": "Faro Airport",
    "citycode": "FAO",
    "city": "Faro",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "CHV",
    "name": "Chaves Arpt",
    "citycode": "CHV",
    "city": "Chaves",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "FNC",
    "name": "Madeira Arpt",
    "citycode": "FNC",
    "city": "Funchal",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "GRW",
    "name": "Graciosa Arpt",
    "citycode": "GRW",
    "city": "Graciosa Island",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "BYJ",
    "name": "Beja International Airport",
    "citycode": "BYJ",
    "city": "Beja",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "SJZ",
    "name": "Sao Jorge Arpt",
    "citycode": "SJZ",
    "city": "Sao Jorge Island",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "SMA",
    "name": "Vilo Do Porto Arpt",
    "citycode": "SMA",
    "city": "Santa Maria",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "HOR",
    "name": "Horta Arpt",
    "citycode": "HOR",
    "city": "Horta",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "PIX",
    "name": "Pico Arpt",
    "citycode": "PIX",
    "city": "Pico Island",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "PDL",
    "name": "Nordela Arpt",
    "citycode": "PDL",
    "city": "Ponta Delgada",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "PRM",
    "name": "Portimao Airport",
    "citycode": "PRM",
    "city": "Portimao",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "OPO",
    "name": "Porto Airport",
    "citycode": "OPO",
    "city": "Porto",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "PXO",
    "name": "Porto Santo Arpt",
    "citycode": "PXO",
    "city": "Porto Santo",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "VRL",
    "name": "Vila Real Arpt",
    "citycode": "VRL",
    "city": "Vila Real",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "FLW",
    "name": "Aerodromo Das Flores",
    "citycode": "FLW",
    "city": "Santa Cruz Flores",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "LIS",
    "name": "Lisboa",
    "citycode": "LIS",
    "city": "Lisbon",
    "country": "Portugal",
    "countrycode": "PT"
  },
  {
    "code": "DOH",
    "name": "Doha International Arpt",
    "citycode": "DOH",
    "city": "Doha",
    "country": "Qatar",
    "countrycode": "QA"
  },
  {
    "code": "RUN",
    "name": "Gillot Airport",
    "citycode": "RUN",
    "city": "Reunion Island",
    "country": "Réunion",
    "countrycode": "RE"
  },
  {
    "code": "ZSE",
    "name": "St Pierre Dela Reunion Arpt",
    "citycode": "ZSE",
    "city": "St Pierre Dela Reunion",
    "country": "Réunion",
    "countrycode": "RE"
  },
  {
    "code": "TGM",
    "name": "Tirgu Mures Arpt",
    "citycode": "TGM",
    "city": "Tirgu Mures",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "OTP",
    "name": "Henri Coanda Arpt",
    "citycode": "BUH",
    "city": "Bucharest",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "TCE",
    "name": "Tulcea Arpt",
    "citycode": "TCE",
    "city": "Tulcea",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "CND",
    "name": "Kogalniceanu Arpt",
    "citycode": "CND",
    "city": "Constanta",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "CRA",
    "name": "Craiova Arpt",
    "citycode": "CRA",
    "city": "Craiova",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "IAS",
    "name": "Iasi Arpt",
    "citycode": "IAS",
    "city": "Iasi",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "OMR",
    "name": "Oradea Arpt",
    "citycode": "OMR",
    "city": "Oradea",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "SUJ",
    "name": "Satu Mare Arpt",
    "citycode": "SUJ",
    "city": "Satu Mare",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "SBZ",
    "name": "Sibiu Arpt",
    "citycode": "SBZ",
    "city": "Sibiu",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "SCV",
    "name": "Salcea Arpt",
    "citycode": "SCV",
    "city": "Suceava",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "TSR",
    "name": "Timisoara Arpt",
    "citycode": "TSR",
    "city": "Timisoara",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "BCM",
    "name": "Bacau Arpt",
    "citycode": "BCM",
    "city": "Bacau",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "BAY",
    "name": "Baia Mare Arpt",
    "citycode": "BAY",
    "city": "Baia Mare",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "BBU",
    "name": "Baneasa Airport",
    "citycode": "BUH",
    "city": "Bucharest",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "ARW",
    "name": "Arad Arpt",
    "citycode": "ARW",
    "city": "Arad",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "CLJ",
    "name": "Napoca Arpt",
    "citycode": "CLJ",
    "city": "Cluj",
    "country": "Romania",
    "countrycode": "RO"
  },
  {
    "code": "MCX",
    "name": "Makhachkala International Airport",
    "citycode": "MCX",
    "city": "Makhachkala",
    "country": "Russia",
    "countrycode": "RU"
  },
  {
    "code": "MOW",
    "name": "Moscow",
    "citycode": "MOW",
    "city": "Moscow",
    "country": "Russia",
    "countrycode": "RU"
  },
  {
    "code": "CEE",
    "name": "Cherepovets Airport",
    "citycode": "CEE",
    "city": "Botovo",
    "country": "Russia",
    "countrycode": "RU"
  },
  {
    "code": "ZIA",
    "name": "Zhukovsky International Airport",
    "citycode": "ZIA",
    "city": "Zhukovsky",
    "country": "Russia",
    "countrycode": "RU"
  },
  {
    "code": "NNM",
    "name": "Naryan-Mar",
    "citycode": "NNM",
    "city": "Naryan-Mar",
    "country": "Russia",
    "countrycode": "RU"
  },
  {
    "code": "CSY",
    "name": "Cheboksary",
    "citycode": "CSY",
    "city": "Cheboksary",
    "country": "Russia",
    "countrycode": "RU"
  },
  {
    "code": "NYM",
    "name": "Nadym Airport",
    "citycode": "NYM",
    "city": "Nadym",
    "country": "Russia",
    "countrycode": "RU"
  },
  {
    "code": "SKX",
    "name": "Saransk Airport",
    "citycode": "SKX",
    "city": "Saransk",
    "country": "Russia",
    "countrycode": "RU"
  },
  {
    "code": "IJK",
    "name": "Izhevsk Arpt",
    "citycode": "IJK",
    "city": "Izhevsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KGD",
    "name": "Kaliningrad Arpt",
    "citycode": "KGD",
    "city": "Kaliningrad",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KLF",
    "name": "Kaluga Arpt",
    "citycode": "KLF",
    "city": "Kaluga",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "REN",
    "name": "Orenburg Arpt",
    "citycode": "REN",
    "city": "Orenburg",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KZN",
    "name": "Kazan Arpt",
    "citycode": "KZN",
    "city": "Kazan",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KEJ",
    "name": "Kemerovo Arpt",
    "citycode": "KEJ",
    "city": "Kemerovo",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KHV",
    "name": "Novyy Arpt",
    "citycode": "KHV",
    "city": "Khabarovsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "HMA",
    "name": "Khanty Mansiysk Arpt",
    "citycode": "HMA",
    "city": "Khanty Mansiysk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KVX",
    "name": "KIROV ARPT",
    "citycode": "KVX",
    "city": "Kirov Pobedilovo",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KGP",
    "name": "Kogalym International Airport",
    "citycode": "KGP",
    "city": "Kogalym",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KXK",
    "name": "Komsomolsk Na Amure Arpt",
    "citycode": "KXK",
    "city": "Komsomolsk Na Amure",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KMW",
    "name": "Kostroma Arpt",
    "citycode": "KMW",
    "city": "Kostroma",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KRR",
    "name": "Krasnodar Arpt",
    "citycode": "KRR",
    "city": "Krasnodar",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KJA",
    "name": "Krasnojarsk Arpt",
    "citycode": "KJA",
    "city": "Krasnoyarsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KRO",
    "name": "Kurgan Airport",
    "citycode": "KRO",
    "city": "Kurgan",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "URS",
    "name": "Kursk Arpt",
    "citycode": "URS",
    "city": "Kursk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "LPK",
    "name": "Lipetsk Arpt",
    "citycode": "LPK",
    "city": "Lipetsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "SVO",
    "name": "Sheremetyevo Arpt",
    "citycode": "MOW",
    "city": "Moscow",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "SVX",
    "name": "Koltsovo Arpt",
    "citycode": "SVX",
    "city": "Ekaterinburg",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "GDX",
    "name": "Magadan Arpt",
    "citycode": "GDX",
    "city": "Magadan",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "MQF",
    "name": "Magnitogorsk Arpt",
    "citycode": "MQF",
    "city": "Magnitogorsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "MRV",
    "name": "Mineralnye Vody Arpt",
    "citycode": "MRV",
    "city": "Mineralnye Vody",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ZKD",
    "name": "Leningradskiy Rail Station",
    "citycode": "MOW",
    "city": "Moscow",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "XRK",
    "name": "Paveletskiy Rail Station",
    "citycode": "MOW",
    "city": "Moscow",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "BKA",
    "name": "Bykovo Arpt",
    "citycode": "MOW",
    "city": "Moscow",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "MMK",
    "name": "Murmansk Arpt",
    "citycode": "MMK",
    "city": "Murmansk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NBC",
    "name": "Nijnekamsk Arpt",
    "citycode": "NBC",
    "city": "Naberevnye Chelny",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NAL",
    "name": "Nalchik Arpt",
    "citycode": "NAL",
    "city": "Nalchik",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NFG",
    "name": "Nefteyugansk Arpt",
    "citycode": "NFG",
    "city": "Nefteyugansk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NJC",
    "name": "Nizhnevartovsk Arpt",
    "citycode": "NJC",
    "city": "Nizhnevartovsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "GOJ",
    "name": "Nizhniy Novgorod Arpt",
    "citycode": "GOJ",
    "city": "Nizhniy Novgorod",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NOJ",
    "name": "Nojabrxsk Arpt",
    "citycode": "NOJ",
    "city": "Nojabrxsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NSK",
    "name": "Norilsk Arpt",
    "citycode": "NSK",
    "city": "Norilsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NOZ",
    "name": "Novokuznetsk Arpt",
    "citycode": "NOZ",
    "city": "Novokuznetsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "OVB",
    "name": "Tolmachevo Arpt",
    "citycode": "OVB",
    "city": "Novosibirsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "UFA",
    "name": "Ufa Arpt",
    "citycode": "UFA",
    "city": "Ufa RU",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NUX",
    "name": "Novy Urengoy Arpt",
    "citycode": "NUX",
    "city": "Novy Urengoy",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "NYA",
    "name": "Nyagan Arpt",
    "citycode": "NYA",
    "city": "Nyagan",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "OMS",
    "name": "Omsk Arpt",
    "citycode": "OMS",
    "city": "Omsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "OSW",
    "name": "ORSK ARPT",
    "citycode": "OSW",
    "city": "Orsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "VKO",
    "name": "Vnukovo Arpt",
    "citycode": "MOW",
    "city": "Moscow",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "PEZ",
    "name": "Penza Arpt",
    "citycode": "PEZ",
    "city": "Penza",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "PEE",
    "name": "Perm Arpt",
    "citycode": "PEE",
    "city": "Perm",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "DME",
    "name": "Domodedovo Arpt",
    "citycode": "MOW",
    "city": "Moscow",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "PKC",
    "name": "Petropavlovsk Kamchatskiy Arpt",
    "citycode": "PKC",
    "city": "Petropavlovsk Kamchatskiy",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "PES",
    "name": "Petrozavodsk Arpt",
    "citycode": "PES",
    "city": "Petrozavodsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "PKV",
    "name": "Pskov Arpt",
    "citycode": "PKV",
    "city": "Pskov",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ROV",
    "name": "Rostov Arpt",
    "citycode": "ROV",
    "city": "Rostov",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "SLY",
    "name": "Salekhard Airport",
    "citycode": "SLY",
    "city": "Salekhard",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KUF",
    "name": "Samara Arpt",
    "citycode": "KUF",
    "city": "Samara",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "RTW",
    "name": "Saratov Arpt",
    "citycode": "RTW",
    "city": "Saratov",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "OVS",
    "name": "Sovetsky Arpt",
    "citycode": "OVS",
    "city": "Sovetsky",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "RVH",
    "name": "Rzhevka Arpt",
    "citycode": "LED",
    "city": "St Petersburg",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ZLK",
    "name": "Moskocskiy Railway Station",
    "citycode": "LED",
    "city": "St Petersburg",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "STW",
    "name": "Stavropol Arpt",
    "citycode": "STW",
    "city": "Stavropol",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "SGC",
    "name": "Surgut Arpt",
    "citycode": "SGC",
    "city": "Surgut",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "SCW",
    "name": "Syktyvkar Arpt",
    "citycode": "SCW",
    "city": "Syktyvkar",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "TBW",
    "name": "Tambov Arpt",
    "citycode": "TBW",
    "city": "Tambov",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "TOX",
    "name": "Tobolsk Arpt",
    "citycode": "TOX",
    "city": "Tobolsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "TOF",
    "name": "Tomsk Arpt",
    "citycode": "TOF",
    "city": "Tomsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "KLD",
    "name": "Migalovo Arpt",
    "citycode": "KLD",
    "city": "Tver",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "TJM",
    "name": "Roshchino Tyumen Intl Arpt",
    "citycode": "TJM",
    "city": "Tyumen",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "UUD",
    "name": "Ulan Ude Arpt",
    "citycode": "UUD",
    "city": "Ulan Ude",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ULV",
    "name": "Ulyanovsk Tsentralny Arpt",
    "citycode": "ULY",
    "city": "Ulyanovsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ULY",
    "name": "Ulyanovsk Arpt",
    "citycode": "ULY",
    "city": "Ulyanovsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "USK",
    "name": "Usinsk Arpt",
    "citycode": "USK",
    "city": "Usinsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "OGZ",
    "name": "Beslan Airport",
    "citycode": "OGZ",
    "city": "Vladikavkaz",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "VVO",
    "name": "Vladivostok Arpt",
    "citycode": "VVO",
    "city": "Vladivostok",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "VOG",
    "name": "Volgograd Arpt",
    "citycode": "VOG",
    "city": "Volgograd",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "VGD",
    "name": "Vologda Arpt",
    "citycode": "VGD",
    "city": "Vologda",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "VOZ",
    "name": "Voronezh Arpt",
    "citycode": "VOZ",
    "city": "Voronezh",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "JOK",
    "name": "Yoshkar Ola Arpt",
    "citycode": "JOK",
    "city": "YOSHKAR OLA",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "YKS",
    "name": "Yakutsk Arpt",
    "citycode": "YKS",
    "city": "Yakutsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "IAR",
    "name": "Yaroslavl Arpt",
    "citycode": "IAR",
    "city": "Yaroslavl",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "UUS",
    "name": "Yuzhno Sakhalinsk Arpt",
    "citycode": "UUS",
    "city": "Yuzhno Sakhalinsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "UCT",
    "name": "Ukhta Airport",
    "citycode": "UCT",
    "city": "Ukhta",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "LED",
    "name": "Pulkovo Airport",
    "citycode": "LED",
    "city": "St Petersburg",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ABA",
    "name": "Abakan Arpt",
    "citycode": "ABA",
    "city": "Abakan",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "DYR",
    "name": "Anadyr Arpt",
    "citycode": "DYR",
    "city": "Anadyr",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "AAQ",
    "name": "Anapa Arpt",
    "citycode": "AAQ",
    "city": "Anapa",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ARH",
    "name": "Arkhangelsk Arpt",
    "citycode": "ARH",
    "city": "Arkhangelsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ASF",
    "name": "Astrakhan Arpt",
    "citycode": "ASF",
    "city": "Astrakhan",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "EZV",
    "name": "BEREZOVO AIRPORT",
    "citycode": "EZV",
    "city": "BEREZOVO",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "BAX",
    "name": "Barnaul Arpt",
    "citycode": "BAX",
    "city": "Barnaul",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "EGO",
    "name": "Belgorod Arpt",
    "citycode": "EGO",
    "city": "Belgorod",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "JQO",
    "name": "Belorussky Rail Station",
    "citycode": "JQO",
    "city": "Belorussky Rail Station",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "EYK",
    "name": "Beloyarsky Arpt",
    "citycode": "EYK",
    "city": "Beloyarsky",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "BQS",
    "name": "Blagoveshchensk Arpt",
    "citycode": "BQS",
    "city": "Blagoveshchensk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "BTK",
    "name": "Bratsk Arpt",
    "citycode": "BTK",
    "city": "Bratsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "BZK",
    "name": "Bryansk Airport",
    "citycode": "BZK",
    "city": "Bryansk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "CEK",
    "name": "Chelyabinsk Arpt",
    "citycode": "CEK",
    "city": "Chelyabinsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "HTA",
    "name": "Chita Arpt",
    "citycode": "HTA",
    "city": "Chita",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "ESL",
    "name": "Elista Arpt",
    "citycode": "ESL",
    "city": "Elista",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "GRV",
    "name": "GROZNY ARPT",
    "citycode": "GRV",
    "city": "GROZNY",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "GDZ",
    "name": "Gelendzik Airport",
    "citycode": "GDZ",
    "city": "Gelendzhik",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "RGK",
    "name": "Gorno Altaysk Airport",
    "citycode": "RGK",
    "city": "Gorno Altaysk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "IRM",
    "name": "IGRIM ARPT",
    "citycode": "IRM",
    "city": "IGRIM",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "IKT",
    "name": "Irkutsk Airport",
    "citycode": "IKT",
    "city": "Irkutsk",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "IWA",
    "name": "Ivanovo Arpt",
    "citycode": "IWA",
    "city": "Ivanovo",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "AER",
    "name": "Sochi Intl Arpt",
    "citycode": "AER",
    "city": "Sochi",
    "country": "Russian Federation",
    "countrycode": "RU"
  },
  {
    "code": "GYI",
    "name": "Gisenyi Arpt",
    "citycode": "GYI",
    "city": "Gisenyi",
    "country": "Rwanda",
    "countrycode": "RW"
  },
  {
    "code": "KME",
    "name": "Kamembe Airport",
    "citycode": "KME",
    "city": "Cyangugu",
    "country": "Rwanda",
    "countrycode": "RW"
  },
  {
    "code": "KGL",
    "name": "Kigali Intl Arpt",
    "citycode": "KGL",
    "city": "Kigali",
    "country": "Rwanda",
    "countrycode": "RW"
  },
  {
    "code": "NEV",
    "name": "Nevis Airport",
    "citycode": "NEV",
    "city": "Nevis",
    "country": "Saint Kitts and Nevis",
    "countrycode": "KN"
  },
  {
    "code": "SKB",
    "name": "Robert L Bradshaw Arpt",
    "citycode": "SKB",
    "city": "St Kitts",
    "country": "Saint Kitts and Nevis",
    "countrycode": "KN"
  },
  {
    "code": "SLU",
    "name": "Vigie Field Arpt",
    "citycode": "SLU",
    "city": "St Lucia",
    "country": "Saint Lucia",
    "countrycode": "LC"
  },
  {
    "code": "UVF",
    "name": "Hewanorra Arpt",
    "citycode": "UVF",
    "city": "Vieux Fort St Lucia",
    "country": "Saint Lucia",
    "countrycode": "LC"
  },
  {
    "code": "SVD",
    "name": "Arnos Vale Arpt",
    "citycode": "SVD",
    "city": "St Vincent",
    "country": "Saint Vincent and the Grenadines",
    "countrycode": "VC"
  },
  {
    "code": "UNI",
    "name": "Union Island Arpt",
    "citycode": "UNI",
    "city": "Union Island",
    "country": "Saint Vincent and the Grenadines",
    "countrycode": "VC"
  },
  {
    "code": "MXS",
    "name": "Maota Arpt",
    "citycode": "MXS",
    "city": "Maota",
    "country": "Samoa",
    "countrycode": "WS"
  },
  {
    "code": "FGI",
    "name": "Fagali Arpt",
    "citycode": "APW",
    "city": "Apia",
    "country": "Samoa",
    "countrycode": "WS"
  },
  {
    "code": "APW",
    "name": "Apia Airport",
    "citycode": "APW",
    "city": "Apia",
    "country": "Samoa",
    "countrycode": "WS"
  },
  {
    "code": "TMS",
    "citycode": "TMS",
    "city": "Sao Tome Is",
    "country": "Sao Tome and Principe",
    "countrycode": "ST"
  },
  {
    "code": "DWD",
    "name": "King Salman Abdulaziz",
    "citycode": "DWD",
    "city": "Dawadmi",
    "country": "Saudi",
    "countrycode": "SA"
  },
  {
    "code": "BHH",
    "name": "Bisha Airport",
    "citycode": "BHH",
    "city": "Bisha",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "ABT",
    "name": "Al Aqiq",
    "citycode": "ABT",
    "city": "Al Baha",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "DHA",
    "name": "Dhahran Intl",
    "citycode": "DHA",
    "city": "Dhahran",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "URY",
    "name": "Gurayat Arpt",
    "citycode": "URY",
    "city": "Gurayat",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "HBT",
    "name": "Hafr Albatin Arpt",
    "citycode": "HBT",
    "city": "Hafr Albatin",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "HOF",
    "name": "Alahsa Arpt",
    "citycode": "HOF",
    "city": "Hofuf",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "KMX",
    "name": "Khamis Mushait Arpt",
    "citycode": "KMX",
    "city": "Khamis Mushait",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "KMC",
    "name": "King Khalid Military Airport",
    "citycode": "KMC",
    "city": "King Khalid Military City",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "EAM",
    "name": "Nejran Arpt",
    "citycode": "EAM",
    "city": "Nejran",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "AQI",
    "name": "Qaisumah Arpt",
    "citycode": "AQI",
    "city": "Qaisumah",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "TUI",
    "name": "Turaif Arpt",
    "citycode": "TUI",
    "city": "Turaif",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "WAE",
    "name": "Wadi Al Dawaser Airport",
    "citycode": "WAE",
    "city": "Wadi Al Dawaser",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "AHB",
    "name": "Abha Airport",
    "citycode": "AHB",
    "city": "Abha",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "AJF",
    "name": "Jouf Airport",
    "citycode": "AJF",
    "city": "Al Jouf",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "DMM",
    "name": "King Fahad Arpt",
    "citycode": "DMM",
    "city": "Dammam",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "DMS",
    "name": "SABTCO BUS STATION",
    "citycode": "DMM",
    "city": "Dammam",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "ELQ",
    "name": "Gassim Arpt",
    "citycode": "ELQ",
    "city": "Gassim",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "GIZ",
    "name": "Gizan Aprt",
    "citycode": "GIZ",
    "city": "Gizan",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "HAS",
    "name": "Hail Arpt",
    "citycode": "HAS",
    "city": "Hail",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "JED",
    "name": "Jeddah Intl",
    "citycode": "JED",
    "city": "Jeddah",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "MED",
    "name": "Prince Mohammad Bin Abdulaziz Arpt",
    "citycode": "MED",
    "city": "Madinah",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "RUH",
    "name": "King Khaled Intl",
    "citycode": "RUH",
    "city": "Riyadh",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "SHW",
    "name": "Sharurah Arpt",
    "citycode": "SHW",
    "city": "Sharurah",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "TIF",
    "name": "Taif Airport",
    "citycode": "TIF",
    "city": "Taif",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "TUU",
    "name": "Tabuk Arpt",
    "citycode": "TUU",
    "city": "Tabuk",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "YNB",
    "name": "Yanbo Arpt",
    "citycode": "YNB",
    "city": "Yanbo",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "ULH",
    "name": "Majeed Bin Abdulaziz",
    "citycode": "ULH",
    "city": "Al Ula",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "RAE",
    "name": "Arar",
    "citycode": "RAE",
    "city": "Arar",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "RAH",
    "name": "Rafha Domestic Airport",
    "citycode": "RAH",
    "city": "Rafha",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "EJH",
    "name": "Al Wajh Domestic Airport",
    "citycode": "EJH",
    "city": "Al Wajh",
    "country": "Saudi Arabia",
    "countrycode": "SA"
  },
  {
    "code": "DKR",
    "name": "Leopold Sedar Senghor Arpt",
    "citycode": "DKR",
    "city": "Dakar",
    "country": "Senegal",
    "countrycode": "SN"
  },
  {
    "code": "ZIG",
    "name": "Ziguinchor Arpt",
    "citycode": "ZIG",
    "city": "Ziguinchor",
    "country": "Senegal",
    "countrycode": "SN"
  },
  {
    "code": "XLS",
    "name": "St Louis Airport",
    "citycode": "XLS",
    "city": "St Louis",
    "country": "Senegal",
    "countrycode": "SN"
  },
  {
    "code": "BJY",
    "name": "Batajnica Arpt",
    "citycode": "BEG",
    "city": "Belgrade",
    "country": "Serbia",
    "countrycode": "RS"
  },
  {
    "code": "BEG",
    "name": "Belgrade Beograd Arpt",
    "citycode": "BEG",
    "city": "Belgrade",
    "country": "Serbia",
    "countrycode": "RS"
  },
  {
    "code": "INI",
    "name": "Nis Arpt",
    "citycode": "INI",
    "city": "Nis Rs",
    "country": "Serbia",
    "countrycode": "RS"
  },
  {
    "code": "UZC",
    "name": "Ponikvearpt",
    "citycode": "UZC",
    "city": "UZICE",
    "country": "Serbia",
    "countrycode": "RS"
  },
  {
    "code": "PRN",
    "name": "Pristina Arpt",
    "citycode": "PRN",
    "city": "Pristina",
    "country": "Servbia",
    "countrycode": "XK"
  },
  {
    "code": "SEZ",
    "name": "Seychelles Intl Arpt",
    "citycode": "SEZ",
    "city": "Mahe Island",
    "country": "Seychelles",
    "countrycode": "SC"
  },
  {
    "code": "PRI",
    "name": "Praslin Island Arpt",
    "citycode": "PRI",
    "city": "Praslin Island",
    "country": "Seychelles",
    "countrycode": "SC"
  },
  {
    "code": "JMY",
    "name": "Mammy Yoko Heliport",
    "citycode": "FNA",
    "city": "Freetown",
    "country": "Sierra Leone",
    "countrycode": "SL"
  },
  {
    "code": "FNA",
    "name": "Lungi Intl Arpt",
    "citycode": "FNA",
    "city": "Freetown",
    "country": "Sierra Leone",
    "countrycode": "SL"
  },
  {
    "code": "HGS",
    "name": "Hastings Airport",
    "citycode": "FNA",
    "city": "Freetown",
    "country": "Sierra Leone",
    "countrycode": "SL"
  },
  {
    "code": "GBK",
    "name": "Gbangbatok Arpt",
    "citycode": "GBK",
    "city": "Gbangbatok",
    "country": "Sierra Leone",
    "countrycode": "SL"
  },
  {
    "code": "SIN",
    "name": "Changi Intl Arpt",
    "citycode": "SIN",
    "city": "Singapore",
    "country": "Singapore",
    "countrycode": "SG"
  },
  {
    "code": "QPG",
    "name": "Paya Lebar Arpt",
    "citycode": "SIN",
    "city": "Singapore",
    "country": "Singapore",
    "countrycode": "SG"
  },
  {
    "code": "XSP",
    "name": "Seletar Airport",
    "citycode": "SIN",
    "city": "Singapore",
    "country": "Singapore",
    "countrycode": "SG"
  },
  {
    "code": "SXM",
    "name": "Princ Juliana Arpt",
    "citycode": "SXM",
    "city": "St Maarten",
    "country": "Sint Maarten (Dutch part)",
    "countrycode": "SX"
  },
  {
    "code": "KSC",
    "name": "Barca Arpt",
    "citycode": "KSC",
    "city": "Kosice",
    "country": "Slovakia",
    "countrycode": "SK"
  },
  {
    "code": "ZRG",
    "name": "Bratislava Bus Station",
    "citycode": "BTS",
    "city": "Bratislava",
    "country": "Slovakia",
    "countrycode": "SK"
  },
  {
    "code": "BTS",
    "name": "Ivanka Arpt",
    "citycode": "BTS",
    "city": "Bratislava",
    "country": "Slovakia",
    "countrycode": "SK"
  },
  {
    "code": "ILZ",
    "name": "Zilina Arpt",
    "citycode": "ILZ",
    "city": "Zilina",
    "country": "Slovakia",
    "countrycode": "SK"
  },
  {
    "code": "SLD",
    "name": "Sliac Arpt",
    "citycode": "SLD",
    "city": "Sliac",
    "country": "Slovakia",
    "countrycode": "SK"
  },
  {
    "code": "TAT",
    "name": "Poprad Tatry Arpt",
    "citycode": "TAT",
    "city": "Poprad Tatry",
    "country": "Slovakia",
    "countrycode": "SK"
  },
  {
    "code": "PZY",
    "name": "Piestany Arpt",
    "citycode": "PZY",
    "city": "Piestany",
    "country": "Slovakia",
    "countrycode": "SK"
  },
  {
    "code": "POW",
    "name": "Portoroz Airport",
    "citycode": "POW",
    "city": "Portoroz",
    "country": "Slovenia",
    "countrycode": "SI"
  },
  {
    "code": "LJU",
    "name": "Brnik Airport",
    "citycode": "LJU",
    "city": "Ljubljana",
    "country": "Slovenia",
    "countrycode": "SI"
  },
  {
    "code": "MBX",
    "name": "Maribor Arpt",
    "citycode": "MBX",
    "city": "Maribor",
    "country": "Slovenia",
    "countrycode": "SI"
  },
  {
    "code": "BAS",
    "name": "Balalae Arpt",
    "citycode": "BAS",
    "city": "Balalae",
    "country": "Solomon Islands",
    "countrycode": "SB"
  },
  {
    "code": "MUA",
    "name": "Munda Arpt",
    "citycode": "MUA",
    "city": "Munda",
    "country": "Solomon Islands",
    "countrycode": "SB"
  },
  {
    "code": "GZO",
    "name": "Gizo Arpt",
    "citycode": "GZO",
    "city": "Gizo",
    "country": "Solomon Islands",
    "countrycode": "SB"
  },
  {
    "code": "GTA",
    "name": "Gatokae Airport",
    "citycode": "GTA",
    "city": "Gatokae",
    "country": "Solomon Islands",
    "countrycode": "SB"
  },
  {
    "code": "EGM",
    "name": "Sege Arpt",
    "citycode": "EGM",
    "city": "Sege",
    "country": "Solomon Islands",
    "countrycode": "SB"
  },
  {
    "code": "HIR",
    "name": "Henderson Intl Arpt",
    "citycode": "HIR",
    "city": "Honiara",
    "country": "Solomon Islands",
    "countrycode": "SB"
  },
  {
    "code": "HGA",
    "name": "Hargeisa Arpt",
    "citycode": "HGA",
    "city": "Hargeisa",
    "country": "Somalia",
    "countrycode": "SO"
  },
  {
    "code": "BBO",
    "name": "Berbera Arpt",
    "citycode": "BBO",
    "city": "Berbera",
    "country": "Somalia",
    "countrycode": "SO"
  },
  {
    "code": "ALU",
    "name": "Alula Airport",
    "citycode": "ALU",
    "city": "Alula",
    "country": "Somalia",
    "countrycode": "SO"
  },
  {
    "code": "MGQ",
    "name": "Aden Adde International Airport",
    "citycode": "SO",
    "city": "Mogadishu",
    "country": "Somalia",
    "countrycode": "KG"
  },
  {
    "code": "UTT",
    "name": "Umtata Arpt",
    "citycode": "UTT",
    "city": "Umtata",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "MEZ",
    "name": "Messina Arpt",
    "citycode": "MEZ",
    "city": "Messina",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "GRJ",
    "name": "George Arpt",
    "citycode": "GRJ",
    "city": "George",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "VYD",
    "name": "Vryheid Arpt",
    "citycode": "VYD",
    "city": "Vryheid",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "ALJ",
    "name": "Kortdoorn Arpt",
    "citycode": "ALJ",
    "city": "Alexander Bay",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "BIY",
    "name": "Bisho Arpt",
    "citycode": "BIY",
    "city": "Bisho",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "BFN",
    "name": "Bloemfontein International",
    "citycode": "BFN",
    "city": "Bloemfontein",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "VIR",
    "name": "Virginia Arpt",
    "citycode": "DUR",
    "city": "Durban",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "ELS",
    "name": "East London Arpt",
    "citycode": "ELS",
    "city": "East London",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "FCB",
    "name": "Ficksburg Sentra Oes",
    "citycode": "FCB",
    "city": "Ficksburg",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "HRS",
    "name": "Harrismith Arpt",
    "citycode": "HRS",
    "city": "Harrismith",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "HZV",
    "name": "Hazyview Airport",
    "citycode": "HZV",
    "city": "Hazyview",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "HLW",
    "name": "Hluhluwe Arpt",
    "citycode": "HLW",
    "city": "Hluhluwe",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "HDS",
    "name": "Hoedspruit Arpt",
    "citycode": "HDS",
    "city": "Hoedspruit",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "QRA",
    "name": "Randgermiston Arpt",
    "citycode": "JNB",
    "city": "Johannesburg",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "GCJ",
    "name": "Grand Central Arpt",
    "citycode": "JNB",
    "city": "Johannesburg",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "HLA",
    "name": "Lanseria International Arpt",
    "citycode": "JNB",
    "city": "Johannesburg",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "WKF",
    "name": "Waterkloof Airport Fawk",
    "citycode": "WKF",
    "city": "Waterkloof",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "WEL",
    "name": "Welkom Arpt",
    "citycode": "WEL",
    "city": "Welkom",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "HCS",
    "name": "Randburg Heliport",
    "citycode": "JNB",
    "city": "Johannesburg",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "KOF",
    "name": "KOMATIPOORT AIRPORT",
    "citycode": "KOF",
    "city": "KOMATIPOORT",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "PLZ",
    "name": "Port Elizabeth Airport",
    "citycode": "PLZ",
    "city": "Port Elizabeth",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "KIM",
    "name": "Kimberley Arpt",
    "citycode": "KIM",
    "city": "Kimberley",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "KMH",
    "name": "Kuruman Arpt",
    "citycode": "KMH",
    "city": "Kuruman",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "LAY",
    "name": "Ladysmith Arpt",
    "citycode": "LAY",
    "city": "Ladysmith",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "AAM",
    "name": "Mala Mala Arpt",
    "citycode": "AAM",
    "city": "Mala Mala",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "LLE",
    "name": "Municipal Arpt",
    "citycode": "LLE",
    "city": "Malelane",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "ASS",
    "name": "Arathusa Safari Lodge",
    "citycode": "ASS",
    "city": "Arathusa Safari Lodge",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "ULX",
    "name": "Ulusaba",
    "citycode": "ULX",
    "city": "Ulusaba",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "LDZ",
    "name": "Londolozi",
    "citycode": "LDZ",
    "city": "Londolozi",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "UTN",
    "name": "Upington Airport",
    "citycode": "UTN",
    "city": "Upington",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "MQP",
    "name": "Kruger Mpumalanga Intl Arpt",
    "citycode": "NLP",
    "city": "Nelspruit",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "MBD",
    "name": "Mmabatho International Arpt",
    "citycode": "MBD",
    "city": "Mmabatho",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "LTA",
    "name": "Letaba Aprt",
    "citycode": "LTA",
    "city": "Tzaneen",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "THY",
    "name": "P R Mphephu Airport",
    "citycode": "THY",
    "city": "Thohoyandou",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "TCU",
    "name": "Thaba Nchu Arpt",
    "citycode": "TCU",
    "city": "Thaba Nchu",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "NTY",
    "name": "Pilansberg Arpt",
    "citycode": "NTY",
    "city": "Sun City",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "SBU",
    "name": "Springbok Arpt",
    "citycode": "SBU",
    "city": "Springbok",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "SZK",
    "name": "Skukuza Arpt",
    "citycode": "SZK",
    "city": "Skukuza",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "CPT",
    "name": "Cape Town International",
    "citycode": "CPT",
    "city": "Cape Town",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "ZEC",
    "name": "Secunda Arpt",
    "citycode": "ZEC",
    "city": "Secunda",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "SDB",
    "name": "Langebaanweg Arpt",
    "citycode": "SDB",
    "city": "Saldanha Bay",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "RCB",
    "name": "Richards Bay Arpt",
    "citycode": "RCB",
    "city": "Richards Bay",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "UTW",
    "name": "Queenstown Airport",
    "citycode": "UTW",
    "city": "Queenstown",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "HPR",
    "name": "Central Hpr Arpt",
    "citycode": "PRY",
    "city": "Pretoria",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "MGH",
    "name": "Margate Arpt",
    "citycode": "MGH",
    "city": "Margate",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "HIC",
    "name": "Iscor Heliport",
    "citycode": "PRY",
    "city": "Pretoria",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "PRY",
    "name": "Wonderboom Arpt",
    "citycode": "PRY",
    "city": "Pretoria",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "PBZ",
    "name": "Plettenberg Bay Arpt",
    "citycode": "PBZ",
    "city": "Plettenberg Bay",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "PTG",
    "name": "Pietersburg Arpt",
    "citycode": "PTG",
    "city": "Pietersburg",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "PZB",
    "name": "Pietermaritzburg Arpt",
    "citycode": "PZB",
    "city": "Pietermaritzburg",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "PHW",
    "name": "Phalaborwa Arpt",
    "citycode": "PHW",
    "city": "Phalaborwa",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "NLP",
    "name": "Nelspruit Airport",
    "citycode": "NLP",
    "city": "Nelspruit",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "NCS",
    "name": "Newcastle Intl Arpt",
    "citycode": "NCS",
    "city": "Newcastle",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "OUH",
    "name": "Oudtshoorn Arpt",
    "citycode": "OUH",
    "city": "Oudtshoorn",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "JNB",
    "name": "O R Tambo International Arpt",
    "citycode": "JNB",
    "city": "Johannesburg",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "DUR",
    "name": "King Shaka International",
    "citycode": "DUR",
    "city": "Durban",
    "country": "South Africa",
    "countrycode": "ZA"
  },
  {
    "code": "MWX",
    "name": "Muan International",
    "citycode": "MWX",
    "city": "Muan",
    "country": "South Korea",
    "countrycode": "KR"
  },
  {
    "code": "WUU",
    "name": "Wau Arpt",
    "citycode": "WUU",
    "city": "Wau City",
    "country": "South Sudan",
    "countrycode": "SS"
  },
  {
    "code": "JUB",
    "name": "Juba Arpt",
    "citycode": "JUB",
    "city": "Juba",
    "country": "South Sudan",
    "countrycode": "SS"
  },
  {
    "code": "MAK",
    "name": "Malakal Arpt",
    "citycode": "MAK",
    "city": "Malakal",
    "country": "South Sudan",
    "countrycode": "SS"
  },
  {
    "code": "SCQ",
    "name": "Santiago Airport",
    "citycode": "SCQ",
    "city": "Santiago De Compostela",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "TFN",
    "name": "Tenerife Norte Los Rodeos Arpt",
    "citycode": "TCI",
    "city": "Tenerife",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "TFS",
    "name": "Reina Sofia Arpt",
    "citycode": "TCI",
    "city": "Tenerife",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "VLL",
    "name": "Valladolid Arpt",
    "citycode": "VLL",
    "city": "Valladolid",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "VDE",
    "name": "Hierro Arpt",
    "citycode": "VDE",
    "city": "Valverde",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "VGO",
    "name": "Vigo Airport",
    "citycode": "VGO",
    "city": "Vigo",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "IBZ",
    "name": "Ibiza Airport",
    "citycode": "IBZ",
    "city": "Ibiza",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "VIT",
    "name": "Vitoria Arpt",
    "citycode": "VIT",
    "city": "Vitoria",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "ZAZ",
    "name": "Zaragoza Airport",
    "citycode": "ZAZ",
    "city": "Zaragoza",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "OVD",
    "name": "Asturias Airport",
    "citycode": "OVD",
    "city": "Asturias",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "LEI",
    "name": "Almeria Arpt",
    "citycode": "LEI",
    "city": "Almeria",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "TEV",
    "name": "Teruel Airport",
    "citycode": "TEV",
    "city": "Teruel",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "ALC",
    "name": "Alicante Arpt",
    "citycode": "ALC",
    "city": "Alicante",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "SVQ",
    "name": "San Pablo Arpt",
    "citycode": "SVQ",
    "city": "Sevilla",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "AEI",
    "name": "Algeciras Arpt",
    "citycode": "AEI",
    "city": "Algeciras",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "YJV",
    "name": "Valencia Railway Station",
    "citycode": "YJV",
    "city": "Valencia",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "GRX",
    "name": "Granada Arpt",
    "citycode": "GRX",
    "city": "Granada",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "AGP",
    "name": "Malaga Arpt",
    "citycode": "AGP",
    "city": "Malaga",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "ABC",
    "name": "Los Llanos Arpt",
    "citycode": "ABC",
    "city": "Albacete",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "BIO",
    "name": "Bilbao Arpt",
    "citycode": "BIO",
    "city": "Bilbao",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "RGS",
    "name": "Burgos Arpt",
    "citycode": "RGS",
    "city": "Burgos",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "CQM",
    "name": "Ciudad Real Central Arpt",
    "citycode": "CQM",
    "city": "Ciudad Real",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "CJI",
    "name": "Ciudad Real City Arpt",
    "citycode": "CJI",
    "city": "Ciudad Real City",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "XOC",
    "name": "Atocha Railway St.",
    "citycode": "XOC",
    "city": "Atocha",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "ODB",
    "name": "Cordoba Airport",
    "citycode": "ODB",
    "city": "Cordoba",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "GRO",
    "name": "Costa Brava Arpt",
    "citycode": "GRO",
    "city": "Gerona",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "LPA",
    "name": "Aeropuerto De Gran Canaria",
    "citycode": "LPA",
    "city": "Gran Canaria",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "BCN",
    "name": "Barcelona Arpt",
    "citycode": "BCN",
    "city": "Barcelona",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "HSK",
    "name": "Pirineos Airport",
    "citycode": "HSK",
    "city": "Huesca",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "BJZ",
    "name": "Talaveral La Real Arpt",
    "citycode": "BJZ",
    "city": "Badajoz",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "XRY",
    "name": "La Parra Arpt",
    "citycode": "XRY",
    "city": "Jerez De La Frontera",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "LCG",
    "name": "La Coruna Arpt",
    "citycode": "LCG",
    "city": "La Coruna",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "ACE",
    "name": "Lanzarote Airport",
    "citycode": "ACE",
    "city": "Lanzarote",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "LEN",
    "name": "Leon Arpt",
    "citycode": "LEN",
    "city": "Leon",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "ILD",
    "name": "Alguaire",
    "citycode": "ILD",
    "city": "Lleida",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "RJL",
    "name": "Agoncillo Arpt",
    "citycode": "RJL",
    "city": "Logrono",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "TOJ",
    "name": "Torrejon AFB",
    "citycode": "MAD",
    "city": "Madrid",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "MLN",
    "name": "Melilla Arpt",
    "citycode": "MLN",
    "city": "Melilla",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "MAH",
    "name": "Aerop De Menorca",
    "citycode": "MAH",
    "city": "Menorca",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "MJV",
    "name": "San Javier Airport",
    "citycode": "MJV",
    "city": "Murcia",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "PNA",
    "name": "Pamplona Noain Arpt",
    "citycode": "PNA",
    "city": "Pamplona",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "FUE",
    "name": "Fuerteventura Arpt",
    "citycode": "FUE",
    "city": "Puerto Del Rosario",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "REU",
    "name": "Reus Arpt",
    "citycode": "REU",
    "city": "Reus",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "MAD",
    "name": "Barajas Arpt",
    "citycode": "MAD",
    "city": "Madrid",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "PMI",
    "name": "Palma Mallorca Arpt",
    "citycode": "PMI",
    "city": "Palma Mallorca",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "SLM",
    "name": "Matacan Arpt",
    "citycode": "SLM",
    "city": "Salamanca",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "YJB",
    "name": "Sants Railway Station",
    "citycode": "YJB",
    "city": "Sants",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "GMZ",
    "name": "La Gomera Arpt",
    "citycode": "GMZ",
    "city": "San Sebastian De La Gomera",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "EAS",
    "name": "San Sebastian Arpt",
    "citycode": "EAS",
    "city": "San Sebastian",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "VLC",
    "name": "Valencia Arpt",
    "citycode": "VLC",
    "city": "Valencia",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "SPC",
    "name": "La Palma Arpt",
    "citycode": "SPC",
    "city": "Santa Cruz",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "SDR",
    "name": "Santander Airport",
    "citycode": "SDR",
    "city": "Santander",
    "country": "Spain",
    "countrycode": "ES"
  },
  {
    "code": "RML",
    "name": "Ratmalana Airport",
    "citycode": "CMB",
    "city": "Colombo",
    "country": "Sri Lanka",
    "countrycode": "LK"
  },
  {
    "code": "JAF",
    "name": "Jaffna International Airport",
    "citycode": "JAF",
    "city": "Palaly",
    "country": "Sri Lanka",
    "countrycode": "LK"
  },
  {
    "code": "HRI",
    "name": "Mattala Rajapaksa International Airport",
    "citycode": "HRI",
    "city": "Mattala",
    "country": "Sri Lanka",
    "countrycode": "LK"
  },
  {
    "code": "AFK",
    "name": "Kondavattavan Tank Arpt",
    "citycode": "AFK",
    "city": "Ampara",
    "country": "Sri Lanka",
    "countrycode": "LK"
  },
  {
    "code": "BJT",
    "name": "Bentota River Airport",
    "citycode": "BJT",
    "city": "Bentota",
    "country": "Sri Lanka",
    "countrycode": "LK"
  },
  {
    "code": "KCT",
    "name": "Koggala Airport",
    "citycode": "KCT",
    "city": "Koggala",
    "country": "Sri Lanka",
    "countrycode": "LK"
  },
  {
    "code": "NUA",
    "name": "Gregorys Lake Airport",
    "citycode": "NUA",
    "city": "Nuwara Eliya",
    "country": "Sri Lanka",
    "countrycode": "LK"
  },
  {
    "code": "CMB",
    "name": "Bandaranaike Intl Arpt",
    "citycode": "CMB",
    "city": "Colombo",
    "country": "Sri Lanka",
    "countrycode": "LK"
  },
  {
    "code": "PZU",
    "name": "Port Sudan New intl Arpt",
    "citycode": "PZU",
    "city": "Port Sudan",
    "country": "Sudan",
    "countrycode": "SD"
  },
  {
    "code": "KRT",
    "name": "Civil Arpt",
    "citycode": "KRT",
    "city": "Khartoum",
    "country": "Sudan",
    "countrycode": "SD"
  },
  {
    "code": "ORG",
    "name": "Zorg En Hoop Arpt",
    "citycode": "PBM",
    "city": "Paramaribo",
    "country": "Suriname",
    "countrycode": "SR"
  },
  {
    "code": "PBM",
    "name": "Zanderij Intl Arpt",
    "citycode": "PBM",
    "city": "Paramaribo",
    "country": "Suriname",
    "countrycode": "SR"
  },
  {
    "code": "MTS",
    "name": "Matsapha Intl Arpt",
    "citycode": "MTS",
    "city": "Manzini",
    "country": "Swaziland",
    "countrycode": "SZ"
  },
  {
    "code": "HAD",
    "name": "Halmstad Arpt",
    "citycode": "HAD",
    "city": "Halmstad",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYM",
    "name": "Falkenberg Rail Station",
    "citycode": "HAD",
    "city": "Halmstad",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XWP",
    "name": "Hassleholm Rail Station",
    "citycode": "XWP",
    "city": "Hassleholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "JHE",
    "name": "Helsingborg Heliport",
    "citycode": "JHE",
    "city": "Helsingborg",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "STO",
    "name": "Metropolitan Area",
    "citycode": "STO",
    "city": "Stockholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYH",
    "name": "Helsingborg Railway service",
    "citycode": "JHE",
    "city": "Helsingborg",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "HMV",
    "name": "Hemavan Flyg",
    "citycode": "HMV",
    "city": "Hemavan",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "HUV",
    "name": "Hudiksvall Arpt",
    "citycode": "HUV",
    "city": "Hudiksvall",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "HLF",
    "name": "Hultsfred Arpt",
    "citycode": "HLF",
    "city": "Hultsfred",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "JKG",
    "name": "Axamo Airport",
    "citycode": "JKG",
    "city": "Jonkoping",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYC",
    "name": "Herrljunga Rail Station",
    "citycode": "JKG",
    "city": "Jonkoping",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYF",
    "name": "Falkoping Rail Station",
    "citycode": "JKG",
    "city": "Jonkoping",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "GEV",
    "name": "Gallivare Arpt",
    "citycode": "GEV",
    "city": "Gallivare",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "KLR",
    "name": "Kalmar Arpt",
    "citycode": "KLR",
    "city": "Kalmar",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "KSD",
    "name": "Karlstad Arpt",
    "citycode": "KSD",
    "city": "Karlstad",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XXK",
    "name": "Katrineholm C Rail Station",
    "citycode": "XXK",
    "city": "Katrineholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "GOT",
    "name": "Landvetter Arpt",
    "citycode": "GOT",
    "city": "Gothenburg",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XJF",
    "name": "Falun Bus Service",
    "citycode": "XWF",
    "city": "Falun",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XWF",
    "name": "Falun Railway Service",
    "citycode": "XWF",
    "city": "Falun",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "KRN",
    "name": "Kiruna Airport",
    "citycode": "KRN",
    "city": "Kiruna",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "KRF",
    "name": "Kramfors Arpt",
    "citycode": "KRF",
    "city": "Kramfors",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "KID",
    "name": "Kristianstad Arpt",
    "citycode": "KID",
    "city": "Kristianstad",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYU",
    "name": "Solvesborg Rail Station",
    "citycode": "KID",
    "city": "Kristianstad",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYN",
    "name": "Kristinehamn Rail Station",
    "citycode": "XYN",
    "city": "Kristinehamn",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XFJ",
    "name": "Eskilstuna Rail Station",
    "citycode": "EKT",
    "city": "Eskilstuna",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "GVX",
    "name": "Sandviken Arpt",
    "citycode": "GVX",
    "city": "Gavle",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "LDK",
    "name": "Hovby Airport",
    "citycode": "LDK",
    "city": "Lidkoping",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "LPI",
    "name": "Saab Airport",
    "citycode": "LPI",
    "city": "Linkoping",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "LLA",
    "name": "Kallax Airport",
    "citycode": "LLA",
    "city": "Lulea",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "EKT",
    "name": "Eskilstuna Arpt",
    "citycode": "EKT",
    "city": "Eskilstuna",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XGC",
    "name": "Lund C Rail Station",
    "citycode": "XGC",
    "city": "Lund C",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "LYC",
    "name": "Hedlunda Arpt",
    "citycode": "LYC",
    "city": "Lycksele",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "JMM",
    "name": "Malmo Harbour Heliport",
    "citycode": "MMA",
    "city": "Malmo",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XFP",
    "name": "Malmo Railway Service",
    "citycode": "MMA",
    "city": "Malmo",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XFR",
    "name": "Malmo South Railway Service",
    "citycode": "MMA",
    "city": "Malmo",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "MMX",
    "name": "Sturup Arpt",
    "citycode": "MMA",
    "city": "Malmo",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XXD",
    "name": "Degerfors Rail Station",
    "citycode": "XXD",
    "city": "Degerfors",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "MMA",
    "name": "Malmo Metropolitan Area Arpt",
    "citycode": "MMA",
    "city": "Malmo",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XXM",
    "name": "Mjolby Rail Station",
    "citycode": "XXM",
    "city": "Mjolby",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "MXX",
    "name": "Mora Arpt",
    "citycode": "MXX",
    "city": "Mora",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XXU",
    "name": "Hedemora Rail Station",
    "citycode": "BLE",
    "city": "Borlange",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYK",
    "name": "Norrkoping Railway Service",
    "citycode": "NRK",
    "city": "Norrkoping",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "NRK",
    "name": "Kungsangen Arpt",
    "citycode": "NRK",
    "city": "Norrkoping",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XWM",
    "name": "Hallsberg Rail Station",
    "citycode": "ORB",
    "city": "Orebro Bofors",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "ORB",
    "name": "Orebro Bofors Arpt",
    "citycode": "ORB",
    "city": "Orebro Bofors",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XWR",
    "name": "Orebro Bofors Railway Service",
    "citycode": "ORB",
    "city": "Orebro Bofors",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "OER",
    "name": "Ornskoldsvik Arpt",
    "citycode": "OER",
    "city": "Ornskoldsvik",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "OSK",
    "name": "Oskarshamn",
    "citycode": "OSK",
    "city": "Oskarshamn",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "OSD",
    "name": "Froesoe Airport",
    "citycode": "OSD",
    "city": "Ostersund",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "PJA",
    "name": "Pajala Arpt",
    "citycode": "PJA",
    "city": "Pajala",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XWK",
    "name": "Karlskrona Railway Station",
    "citycode": "RNB",
    "city": "Ronneby",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XXY",
    "name": "Ronneby Railway Service",
    "citycode": "RNB",
    "city": "Ronneby",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYO",
    "name": "Karlshamn Rail Station",
    "citycode": "RNB",
    "city": "Ronneby",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "RNB",
    "name": "Kallinge Arpt",
    "citycode": "RNB",
    "city": "Ronneby",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "SFT",
    "name": "Skelleftea Arpt",
    "citycode": "SFT",
    "city": "Skelleftea",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "KVB",
    "name": "Skovde Arpt",
    "citycode": "KVB",
    "city": "Skovde",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "SOO",
    "name": "Soderhamn Arpt",
    "citycode": "SOO",
    "city": "Soderhamn",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "BLE",
    "name": "Dala Airport",
    "citycode": "BLE",
    "city": "Borlange",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "JSO",
    "name": "Sodertalje Heliport",
    "citycode": "JSO",
    "city": "Sodertalje",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XEZ",
    "name": "Sodertalje S Rail Station",
    "citycode": "JSO",
    "city": "Sodertalje",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "BMA",
    "name": "Bromma Airport",
    "citycode": "STO",
    "city": "Stockholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "NYO",
    "name": "Skavsta Airport",
    "citycode": "STO",
    "city": "Stockholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYB",
    "name": "Borlange Railway Service",
    "citycode": "BLE",
    "city": "Borlange",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XXO",
    "name": "Leksand Rail Station",
    "citycode": "BLE",
    "city": "Borlange",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XEW",
    "name": "Flemingsberg Rail Station",
    "citycode": "STO",
    "city": "Stockholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XEV",
    "name": "Stockholm Rail Station",
    "citycode": "STO",
    "city": "Stockholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "VST",
    "name": "Hasslo Airport",
    "citycode": "STO",
    "city": "Stockholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "SQO",
    "name": "Gunnarn Arpt",
    "citycode": "SQO",
    "city": "Storuman",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XXZ",
    "name": "Sundsvall Rail Service",
    "citycode": "SDL",
    "city": "Sundsvall",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "SDL",
    "name": "Sundsvall Arpt",
    "citycode": "SDL",
    "city": "Sundsvall",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "EVG",
    "name": "Sveg Arpt",
    "citycode": "EVG",
    "city": "Sveg",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "TYF",
    "name": "Torsby Airport",
    "citycode": "TYF",
    "city": "Torsby",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "THN",
    "name": "Trollhattan Arpt",
    "citycode": "THN",
    "city": "Trollhattan",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "QYX",
    "name": "Uppsala Railway Service",
    "citycode": "QYX",
    "city": "Uppsala",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYX",
    "name": "Sala Rail Station",
    "citycode": "VST",
    "city": "Vasteras",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "VXO",
    "name": "Vaxjo Airport",
    "citycode": "VXO",
    "city": "Vaxjo",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYY",
    "name": "Arvika Rail Station",
    "citycode": "XYY",
    "city": "Arvika",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "VHM",
    "name": "Vilhelmina Arpt",
    "citycode": "VHM",
    "city": "Vilhelmina",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "VBY",
    "name": "Visby Airport",
    "citycode": "VBY",
    "city": "Visby",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "AJR",
    "name": "Arvidsjaur Arpt",
    "citycode": "AJR",
    "city": "Arvidsjaur",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "JLD",
    "name": "Landskrona Heliport",
    "citycode": "JLD",
    "city": "Landskrona",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XFU",
    "name": "Tierp Rail Station",
    "citycode": "GVX",
    "city": "Gavle",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "QYU",
    "name": "Gavle Rail Station",
    "citycode": "GVX",
    "city": "Gavle",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XWL",
    "name": "Gothenburg Rail",
    "citycode": "GOT",
    "city": "Gothenburg",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "GSE",
    "name": "Saeve Arpt",
    "citycode": "GOT",
    "city": "Gothenburg",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "UME",
    "name": "Umea Airport",
    "citycode": "UME",
    "city": "Umea",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "AGH",
    "name": "Angelholm Helsingborg Arpt",
    "citycode": "AGH",
    "city": "Angelholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XYQ",
    "name": "Angelholm Railway Station",
    "citycode": "AGH",
    "city": "Angelholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "XXA",
    "name": "Alvesta Railway Service",
    "citycode": "XXA",
    "city": "Alvesta",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "ARN",
    "name": "Arlanda Arpt",
    "citycode": "STO",
    "city": "Stockholm",
    "country": "Sweden",
    "countrycode": "SE"
  },
  {
    "code": "ZDJ",
    "name": "Berne Railroad Station",
    "citycode": "BRN",
    "city": "Berne",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZDO",
    "name": "Buchs SG Rail Station",
    "citycode": "ZDO",
    "city": "Buch Sg",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "BXO",
    "name": "Buochs airport",
    "citycode": "BXO",
    "city": "Buochs",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZDX",
    "name": "Dietikon Rail Station",
    "citycode": "ZDX",
    "city": "Dietikon",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZHE",
    "name": "Frauenfeld Rail Station",
    "citycode": "ZHE",
    "city": "Frauenfeld",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZHT",
    "name": "Geneva Cornavin Railway Stn",
    "citycode": "GVA",
    "city": "Geneva",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "LUG",
    "name": "Agno Airport",
    "citycode": "LUG",
    "city": "Lugano",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZKJ",
    "name": "Schaffhausen Rail Station",
    "citycode": "ZKJ",
    "city": "Schaffhausen",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "SIR",
    "name": "Sion Arpt",
    "citycode": "SIR",
    "city": "Sion",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "SMV",
    "name": "Samedan Arpt",
    "citycode": "SMV",
    "city": "St Moritz",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZLQ",
    "name": "Zurich Railway Station",
    "citycode": "ZRH",
    "city": "Zurich",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZLP",
    "name": "Zurich Railway Station",
    "citycode": "ZRH",
    "city": "Zurich",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZRH",
    "name": "Zurich Airport",
    "citycode": "ZRH",
    "city": "Zurich",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "GVA",
    "name": "Geneve Cointrin",
    "citycode": "GVA",
    "city": "Geneva",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "BSL",
    "name": "Basel EuroAirport Swiss",
    "citycode": "BSL",
    "city": "Basel",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ACO",
    "name": "Ascona Arpt",
    "citycode": "ACO",
    "city": "Ascona",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ACH",
    "name": "Altenrhein Arpt",
    "citycode": "ACH",
    "city": "Altenrhein",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "ZDI",
    "name": "Bellinzona Rail Station",
    "citycode": "ZDI",
    "city": "Bellinzona",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "BRN",
    "name": "Belp Airport",
    "citycode": "BRN",
    "city": "Berne",
    "country": "Switzerland",
    "countrycode": "CH"
  },
  {
    "code": "DEZ",
    "name": "Al Jafrah Arpt",
    "citycode": "DEZ",
    "city": "Deirezzor",
    "country": "Syrian Arab Republic",
    "countrycode": "SY"
  },
  {
    "code": "LTK",
    "name": "Hmelmin Airport",
    "citycode": "LTK",
    "city": "Latakia",
    "country": "Syrian Arab Republic",
    "countrycode": "SY"
  },
  {
    "code": "ALP",
    "name": "Nejrab Arpt",
    "citycode": "ALP",
    "city": "Aleppo",
    "country": "Syrian Arab Republic",
    "countrycode": "SY"
  },
  {
    "code": "DAM",
    "name": "Damascus Intl",
    "citycode": "DAM",
    "city": "Damascus",
    "country": "Syrian Arab Republic",
    "countrycode": "SY"
  },
  {
    "code": "TTT",
    "name": "Taitung Arpt",
    "citycode": "TTT",
    "city": "Taitung",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "MFK",
    "name": "Matsu Arpt",
    "citycode": "MFK",
    "city": "Matsu",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "TSA",
    "name": "Song Shan Arpt",
    "citycode": "TPE",
    "city": "Taipei",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "CYI",
    "name": "Chia Yi Airport",
    "citycode": "CYI",
    "city": "Chiayi",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "TPE",
    "name": "Taiwan Taoyuan Intl Arpt",
    "citycode": "TPE",
    "city": "Taipei",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "TXG",
    "name": "Taichung Arpt",
    "citycode": "TXG",
    "city": "Taichung",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "HSZ",
    "name": "Hsinchun Arpt",
    "citycode": "HSZ",
    "city": "Hsinchun",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "TNN",
    "name": "Tainan Arpt",
    "citycode": "TNN",
    "city": "Tainan",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "HUN",
    "name": "Hualien Arpt",
    "citycode": "HUN",
    "city": "Hualien",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "KHH",
    "name": "Kaohsiung Intl",
    "citycode": "KHH",
    "city": "Kaohsiung",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "HCN",
    "name": "Hengchun Arpt",
    "citycode": "HCN",
    "city": "Hengchun",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "KNH",
    "name": "Shang Yi Arpt",
    "citycode": "KNH",
    "city": "Kinmen",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "RMQ",
    "name": "Ching Chuan Kang",
    "citycode": "TXG",
    "city": "Taichung",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "MZG",
    "name": "Makung Arpt",
    "citycode": "MZG",
    "city": "Makung",
    "country": "Taiwan",
    "countrycode": "TW"
  },
  {
    "code": "LBD",
    "name": "Khujand Airport",
    "citycode": "LBD",
    "city": "Khujand, Tajikistan",
    "country": "Tajikistan",
    "countrycode": "TJ"
  },
  {
    "code": "DYU",
    "name": "Dushanbe Arpt",
    "citycode": "DYU",
    "city": "Dushanbe",
    "country": "Tajikistan",
    "countrycode": "TJ"
  },
  {
    "code": "MYW",
    "name": "Mtwara Arpt",
    "citycode": "MYW",
    "city": "Mtwara",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "DAR",
    "name": "Es Salaam Intl",
    "citycode": "DAR",
    "city": "Dar Es Salaam",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "ZNZ",
    "name": "Kisauni Arpt",
    "citycode": "ZNZ",
    "city": "Zanzibar",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "TGT",
    "name": "Tanga Arpt",
    "citycode": "TGT",
    "city": "Tanga",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "TBO",
    "name": "Tabora Arpt",
    "citycode": "TBO",
    "city": "Tabora",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "SHY",
    "name": "Shinyanga Arpt",
    "citycode": "SHY",
    "city": "Shinyanga",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "SEU",
    "name": "Seronera Airport",
    "citycode": "SEU",
    "city": "Seronera",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "MWZ",
    "name": "Mwanza Arpt",
    "citycode": "MWZ",
    "city": "Mwanza",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "MUZ",
    "name": "Musoma Arpt",
    "citycode": "MUZ",
    "city": "Musoma",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "JRO",
    "name": "Kilimanjaro Arpt",
    "citycode": "JRO",
    "city": "Kilimanjaro",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "TKQ",
    "name": "Kigoma Arpt",
    "citycode": "TKQ",
    "city": "Kigoma",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "ARK",
    "name": "Arusha Arpt",
    "citycode": "ARK",
    "city": "Arusha",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "MBI",
    "name": "Songwe Airport",
    "citycode": "MBI",
    "city": "Mbeya",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "IRI",
    "name": "Iringa Airport",
    "citycode": "IRI",
    "city": "Iringa",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "DOD",
    "name": "Dodoma Airport",
    "citycode": "DOD",
    "city": "Dodoma",
    "country": "Tanzania",
    "countrycode": "TZ"
  },
  {
    "code": "NAK",
    "name": "Nakhon Ratchasima Arpt",
    "citycode": "NAK",
    "city": "Nakhon Ratchasima",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "KOP",
    "name": "Nakhon Phanom Arpt",
    "citycode": "KOP",
    "city": "Nakhon Phanom",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "KBV",
    "name": "Krabi Arpt",
    "citycode": "KBV",
    "city": "Krabi",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "KKC",
    "name": "Khon Kaen Arpt",
    "citycode": "KKC",
    "city": "Khon Kaen",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "UTP",
    "name": "U Tapao Arpt",
    "citycode": "UTP",
    "city": "U Tapao",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "HKT",
    "name": "Phuket Intl Airport",
    "citycode": "HKT",
    "city": "Phuket",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "USM",
    "name": "Koh Samui Arpt",
    "citycode": "USM",
    "city": "Koh Samui",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "NAW",
    "name": "Narathiwat Arpt",
    "citycode": "NAW",
    "city": "Narathiwat",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "LOE",
    "name": "Loei Arpt",
    "citycode": "LOE",
    "city": "Loei",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "NNT",
    "name": "Nan Arpt",
    "citycode": "NNT",
    "city": "Nan Th",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "NST",
    "name": "Nakhon Si Thammarat Arpt",
    "citycode": "NST",
    "city": "Nakhon Si Thammarat",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "HGN",
    "name": "Mae Hong Son Arpt",
    "citycode": "HGN",
    "city": "Mae Hongson",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "MAQ",
    "name": "Mae Sot Arpt",
    "citycode": "MAQ",
    "city": "Mae Sot",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "URT",
    "name": "Surat Thani Arpt",
    "citycode": "URT",
    "city": "Surat Thani",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "UBP",
    "name": "Muang Ubon Arpt",
    "citycode": "UBP",
    "city": "Ubon Ratchathani",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "BAO",
    "name": "Udorn Arpt",
    "citycode": "BAO",
    "city": "Ban Mak Khaen",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "BFV",
    "name": "Buri Ram Arpt",
    "citycode": "BFV",
    "city": "Buri Ram",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "CEI",
    "name": "Chaing Rai Arpt",
    "citycode": "CEI",
    "city": "Chiang Rai",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "CJM",
    "name": "Chumphon Arpt",
    "citycode": "CJM",
    "city": "Chumphon",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "HDY",
    "name": "Hat Yai Arpt",
    "citycode": "HDY",
    "city": "Hat Yai",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "BKK",
    "name": "Suvarnabhumi Intl Arpt",
    "citycode": "BKK",
    "city": "Bangkok",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "UTH",
    "name": "Udon Thani Arpt",
    "citycode": "UTH",
    "city": "Udon Thani",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "CNX",
    "name": "Chiang Mai Intl Arpt",
    "citycode": "CNX",
    "city": "Chiang Mai",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "DMK",
    "name": "Don Mueang International Arpt",
    "citycode": "BKK",
    "city": "Bangkok",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "HHQ",
    "name": "Hua Hin Arpt",
    "citycode": "HHQ",
    "city": "Hua Hin",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "LPT",
    "name": "Lampang Arpt",
    "citycode": "LPT",
    "city": "Lampang",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "TDX",
    "name": "Trat Arpt",
    "citycode": "TDX",
    "city": "Trat",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "TST",
    "name": "Trang Arpt",
    "citycode": "TST",
    "city": "Trang",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "THS",
    "name": "Sukhothai Arpt",
    "citycode": "THS",
    "city": "Sukhothai",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "SNO",
    "name": "Sakon Nakhon Arpt",
    "citycode": "SNO",
    "city": "Sakon Nakhon",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "ROI",
    "name": "Roi Et Arpt",
    "citycode": "ROI",
    "city": "Roi Et",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "UNN",
    "name": "Ranong Arpt",
    "citycode": "UNN",
    "city": "Ranong",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "PRH",
    "name": "Phrae Arpt",
    "citycode": "PRH",
    "city": "Phrae",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "PHS",
    "name": "Phitsanulok Arpt",
    "citycode": "PHS",
    "city": "Phitsanulok",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "PYX",
    "name": "Pattaya Arpt",
    "citycode": "PYX",
    "city": "Pattaya",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "PYY",
    "name": "Pai Arpt",
    "citycode": "PYY",
    "city": "Pai City",
    "country": "Thailand",
    "countrycode": "TH"
  },
  {
    "code": "DIL",
    "name": "Presidente Nicolau Lobato Intl Arpt",
    "citycode": "DIL",
    "city": "Dili",
    "country": "Timor-Leste",
    "countrycode": "TL"
  },
  {
    "code": "BCH",
    "name": "English Madeira Arpt",
    "citycode": "BCH",
    "city": "Baucau",
    "country": "Timor-Leste",
    "countrycode": "TL"
  },
  {
    "code": "LFW",
    "name": "Lome Airport",
    "citycode": "LFW",
    "city": "Lome",
    "country": "Togo",
    "countrycode": "TG"
  },
  {
    "code": "HPA",
    "name": "Salote Pilolevu Arpt",
    "citycode": "HPA",
    "city": "Ha Apai",
    "country": "Tonga",
    "countrycode": "TO"
  },
  {
    "code": "TBU",
    "name": "Tongatapu Intl",
    "citycode": "TBU",
    "city": "Nuku Alofa",
    "country": "Tonga",
    "countrycode": "TO"
  },
  {
    "code": "VAV",
    "name": "Lupepau U Arpt",
    "citycode": "VAV",
    "city": "Vava U",
    "country": "Tonga",
    "countrycode": "TO"
  },
  {
    "code": "POS",
    "name": "Piarco Arpt",
    "citycode": "POS",
    "city": "Port Of Spain",
    "country": "Trinidad and Tobago",
    "countrycode": "TT"
  },
  {
    "code": "TAB",
    "name": "Crown Point Arpt",
    "citycode": "TAB",
    "city": "Tobago",
    "country": "Trinidad and Tobago",
    "countrycode": "TT"
  },
  {
    "code": "MIR",
    "name": "Habib Bourguiba Intl",
    "citycode": "MIR",
    "city": "Monastir",
    "country": "Tunisia",
    "countrycode": "TN"
  },
  {
    "code": "SFA",
    "name": "El Maou Airport",
    "citycode": "SFA",
    "city": "Sfax",
    "country": "Tunisia",
    "countrycode": "TN"
  },
  {
    "code": "TOE",
    "name": "Tozeur Arpt",
    "citycode": "TOE",
    "city": "Tozeur",
    "country": "Tunisia",
    "countrycode": "TN"
  },
  {
    "code": "TBJ",
    "name": "Tabarka Arpt",
    "citycode": "TBJ",
    "city": "Tabarka",
    "country": "Tunisia",
    "countrycode": "TN"
  },
  {
    "code": "DJE",
    "name": "Melita Airport",
    "citycode": "DJE",
    "city": "Djerba",
    "country": "Tunisia",
    "countrycode": "TN"
  },
  {
    "code": "TUN",
    "name": "Carthage Arpt",
    "citycode": "TUN",
    "city": "Tunis",
    "country": "Tunisia",
    "countrycode": "TN"
  },
  {
    "code": "NBE",
    "name": "Zine Elabidine Ben Ali",
    "citycode": "NBE",
    "city": "Enfidha",
    "country": "Tunisia",
    "countrycode": "TN"
  },
  {
    "code": "MSR",
    "name": "Mus Arpt",
    "citycode": "MSR",
    "city": "Mus Tr",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "SAW",
    "name": "Sabiha Gokcen Arpt",
    "citycode": "IST",
    "city": "Istanbul",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "IST",
    "name": "Ataturk Arpt",
    "citycode": "IST",
    "city": "Istanbul",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ADA",
    "name": "Adana Arpt",
    "citycode": "ADA",
    "city": "Adana",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "SZF",
    "name": "Carsamba Arpt",
    "citycode": "SZF",
    "city": "Samsun",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "NOP",
    "name": "Sinop Arpt",
    "citycode": "NOP",
    "city": "SINOP",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "IGL",
    "name": "Izmir Cigli Military",
    "citycode": "IZM",
    "city": "Izmir",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "KCM",
    "name": "Kahramanmaras aRPT",
    "citycode": "KCM",
    "city": "Kahramanmaras",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "KSY",
    "name": "Kars Arpt",
    "citycode": "KSY",
    "city": "Kars",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "KYA",
    "name": "Konya Arpt",
    "citycode": "KYA",
    "city": "Konya",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "MLX",
    "name": "Malatya Arpt",
    "citycode": "MLX",
    "city": "Malatya",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "MQM",
    "name": "Mardin Arpt",
    "citycode": "MQM",
    "city": "Mardin",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "NAV",
    "name": "Nevsehir Arpt",
    "citycode": "NAV",
    "city": "Nevsehir",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ESB",
    "name": "Esenboga Arpt",
    "citycode": "ANK",
    "city": "Ankara",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "DNZ",
    "name": "Cardak Arpt",
    "citycode": "DNZ",
    "city": "Denizli",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "OGU",
    "name": "OrduGiresun Airport",
    "citycode": "OGU",
    "city": "OrduGiresun, Turkey",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "GZT",
    "name": "Gaziantep Arpt",
    "citycode": "GZT",
    "city": "Gaziantep",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "AYT",
    "name": "Antalya Airport",
    "citycode": "AYT",
    "city": "Antalya",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "IGD",
    "name": "Igdir Airport",
    "citycode": "IGD",
    "city": "Igdir, Turkey",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ADF",
    "name": "ADIYAMAN ARPT",
    "citycode": "ADF",
    "city": "Adiyaman",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ASR",
    "name": "Kayseri Arpt",
    "citycode": "ASR",
    "city": "Kayseri",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "AFY",
    "name": "Afyon Arpt",
    "citycode": "AFY",
    "city": "Afyon",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "AJI",
    "name": "Agri Airport",
    "citycode": "AJI",
    "city": "Agri",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ANK",
    "name": "Etimesgut Arpt",
    "citycode": "ANK",
    "city": "Ankara",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "MQJ",
    "name": "Merkez Arpt",
    "citycode": "BZI",
    "city": "Balikesir",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "BZI",
    "name": "Balikesir Arpt",
    "citycode": "BZI",
    "city": "Balikesir",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "BAL",
    "name": "Batman Arpt",
    "citycode": "BAL",
    "city": "Batman",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ONQ",
    "name": "Caycuma Airport",
    "citycode": "ONQ",
    "city": "Zonguldak",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "BXN",
    "name": "Imsik Arpt",
    "citycode": "BXN",
    "city": "Bodrum",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "VAN",
    "name": "Van Arpt",
    "citycode": "VAN",
    "city": "Van TR",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "BJV",
    "name": "Milas Arpt",
    "citycode": "BXN",
    "city": "Bodrum",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "TZX",
    "name": "Trabzon Arpt",
    "citycode": "TZX",
    "city": "Trabzon",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "TEQ",
    "name": "Corlu Airport",
    "citycode": "TEQ",
    "city": "Tekirdag",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "BTZ",
    "name": "Bursa Airport",
    "citycode": "BTZ",
    "city": "Bursa",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "YEI",
    "name": "Yenisehir Arpt",
    "citycode": "BTZ",
    "city": "Bursa",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "VAS",
    "name": "Sivas Arpt",
    "citycode": "VAS",
    "city": "Sivas",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "GNY",
    "name": "Guney Anadolu Airport",
    "citycode": "GNY",
    "city": "Sanliurfa",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "CKZ",
    "name": "Canakkale Arpt",
    "citycode": "CKZ",
    "city": "Canakkale",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "BGG",
    "name": "Bingol Airport",
    "citycode": "BGG",
    "city": "Bingol, Turkey",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "DLM",
    "name": "Dalaman Airport",
    "citycode": "DLM",
    "city": "Dalaman",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "DIY",
    "name": "Diyarbakir Arpt",
    "citycode": "DIY",
    "city": "Diyarbai",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "EDO",
    "name": "Edremit Korfez",
    "citycode": "EDO",
    "city": "Edremit",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "EZS",
    "name": "Elazig Arpt",
    "citycode": "EZS",
    "city": "Elazig",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "NKT",
    "name": "Sirnak Airport",
    "citycode": "NKT",
    "city": "Sirnak \/ Cizre, Turkey",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ADB",
    "name": "Adnan Menderes Airport",
    "citycode": "IZM",
    "city": "Izmir",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ERC",
    "name": "Erzincan Arpt",
    "citycode": "ERC",
    "city": "Erzincan",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "SFQ",
    "name": "Sanli Urfa Arpt",
    "citycode": "SFQ",
    "city": "Sanli Urfa",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ERZ",
    "name": "Erzurum Arpt",
    "citycode": "ERZ",
    "city": "Erzurum",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ESK",
    "name": "Eskisehir Arpt",
    "citycode": "ESK",
    "city": "Eskisehir",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "AOE",
    "name": "Anadolu University Arpt",
    "citycode": "ESK",
    "city": "Eskisehir",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "GZP",
    "name": "Gazipasaairport",
    "citycode": "GZP",
    "city": "Gazipasa",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "HTY",
    "name": "Hatay Airport",
    "citycode": "HTY",
    "city": "Hantai",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "ISE",
    "name": "Isparta Airport",
    "citycode": "ISE",
    "city": "Isparta",
    "country": "Turkey",
    "countrycode": "TR"
  },
  {
    "code": "KRW",
    "name": "Turkmanbashi Arpt",
    "citycode": "KRW",
    "city": "Turkmanbashi",
    "country": "Turkmenistan",
    "countrycode": "TM"
  },
  {
    "code": "ASB",
    "name": "Ashgabat Arpt",
    "citycode": "ASB",
    "city": "Ashgabat",
    "country": "Turkmenistan",
    "countrycode": "TM"
  },
  {
    "code": "MYP",
    "name": "Mary Arpt",
    "citycode": "MYP",
    "city": "Mary",
    "country": "Turkmenistan",
    "countrycode": "TM"
  },
  {
    "code": "CRZ",
    "name": "Turkmenabad Arpt",
    "citycode": "CRZ",
    "city": "Turkmenabad",
    "country": "Turkmenistan",
    "countrycode": "TM"
  },
  {
    "code": "TAZ",
    "name": "Dashoguz Arpt",
    "citycode": "TAZ",
    "city": "Dashoguz",
    "country": "Turkmenistan",
    "countrycode": "TM"
  },
  {
    "code": "PLS",
    "name": "Providenciales Intl",
    "citycode": "PLS",
    "city": "Providenciales",
    "country": "Turks and Caicos Islands",
    "countrycode": "TC"
  },
  {
    "code": "NCA",
    "name": "North Caicos Municipal Arpt",
    "citycode": "NCA",
    "city": "North Caicos",
    "country": "Turks and Caicos Islands",
    "countrycode": "TC"
  },
  {
    "code": "GDT",
    "name": "Grand Turk Is Arpt",
    "citycode": "GDT",
    "city": "Grand Turk",
    "country": "Turks and Caicos Islands",
    "countrycode": "TC"
  },
  {
    "code": "XSC",
    "name": "South Caicos Intl Arpt",
    "citycode": "XSC",
    "city": "South Caicos",
    "country": "Turks and Caicos Islands",
    "countrycode": "TC"
  },
  {
    "code": "FUN",
    "name": "Funafuti Intl Arpt",
    "citycode": "FUN",
    "city": "Funafuti",
    "country": "Tuvalu",
    "countrycode": "TV"
  },
  {
    "code": "EBB",
    "name": "Entebbe Airport",
    "citycode": "EBB",
    "city": "Entebbe",
    "country": "Uganda",
    "countrycode": "UG"
  },
  {
    "code": "KBP",
    "name": "Borispol Arpt",
    "citycode": "IEV",
    "city": "Kiev",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "CWC",
    "name": "Chernovtsy Arpt",
    "citycode": "CWC",
    "city": "Chernovtsy",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "DNK",
    "name": "Dnepropetrovsk Arpt",
    "citycode": "DNK",
    "city": "Dnepropetrovsk",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "HRK",
    "name": "Kharkov Arpt",
    "citycode": "HRK",
    "city": "Kharkov",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "IEV",
    "name": "Kiev Zhuliany Arpt",
    "citycode": "IEV",
    "city": "Kiev",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "CKC",
    "name": "Cherkassy Arpt",
    "citycode": "CKC",
    "city": "Cherkassy",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "DOK",
    "name": "Donetsk Arpt",
    "citycode": "DOK",
    "city": "Donetsk",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "KWG",
    "name": "Krivoy Rog Arpt",
    "citycode": "KWG",
    "city": "Krivoy Rog",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "VSG",
    "name": "Lugansk Arpt",
    "citycode": "VSG",
    "city": "Lugansk",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "UCK",
    "name": "Lutsk Arpt",
    "citycode": "UCK",
    "city": "Lutsk",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "LWO",
    "name": "Snilow Arpt",
    "citycode": "LWO",
    "city": "Lvov",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "MPW",
    "name": "Mariupol Arpt",
    "citycode": "MPW",
    "city": "Mariupol",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "KHE",
    "name": "Kherson International Airport",
    "citycode": "KHE",
    "city": "Kherson",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "ODS",
    "name": "Central Arpt",
    "citycode": "ODS",
    "city": "Odessa",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "SIP",
    "name": "Simferopol Arpt",
    "citycode": "SIP",
    "city": "Simferopol",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "PLV",
    "name": "Poltava Arpt",
    "citycode": "PLV",
    "city": "Poltava",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "OZH",
    "name": "Zaporozhye Arpt",
    "citycode": "OZH",
    "city": "Zaporozhe",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "VIN",
    "name": "Vinnitsa Arpt",
    "citycode": "VIN",
    "city": "Vinnitsa",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "RWN",
    "name": "Rovno Arpt",
    "citycode": "RWN",
    "city": "Rovno",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "UMY",
    "name": "Sumy Arpt",
    "citycode": "UMY",
    "city": "Sumy",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "IFO",
    "name": "Ivano Frankovsk Arpt",
    "citycode": "IFO",
    "city": "Ivano Frankovsk",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "UDJ",
    "name": "Uzhgorod Arpt",
    "citycode": "UDJ",
    "city": "Uzhgorod",
    "country": "Ukraine",
    "countrycode": "UA"
  },
  {
    "code": "XNB",
    "name": "Dubai Chelsea Tower Bus Station",
    "citycode": "DXB",
    "city": "Dubai",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "RKT",
    "name": "Ras Al Khaimah Arpt",
    "citycode": "RKT",
    "city": "Ras Al Khaimah",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "SHJ",
    "name": "Sharjah Airport",
    "citycode": "SHJ",
    "city": "Sharjah",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "ZVJ",
    "name": "Abu Dhabi Bus Station",
    "citycode": "AUH",
    "city": "Abu Dhabi",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "AZI",
    "name": "Bateen Airport",
    "citycode": "AUH",
    "city": "Abu Dhabi",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "DHF",
    "name": "Al Dhafra Military Apt",
    "citycode": "AUH",
    "city": "Abu Dhabi",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "FJR",
    "name": "Fujairah Intl Arpt",
    "citycode": "FJR",
    "city": "Al Fujairah",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "XMB",
    "name": "Dubai Marina Mall Bus Station",
    "citycode": "DXB",
    "city": "Dubai",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "DXB",
    "name": "Dubai Intl Arpt",
    "citycode": "DXB",
    "city": "Dubai",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "DWC",
    "name": "Al Maktoum International Airport",
    "citycode": "DXB",
    "city": "Dubai",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "AUH",
    "name": "Dhabi Intl Arpt",
    "citycode": "AUH",
    "city": "Abu Dhabi",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "ZVH",
    "name": "EK Bus Station",
    "citycode": "ZVH",
    "city": "EK",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "AAN",
    "name": "Al Ain Arpt",
    "citycode": "AAN",
    "city": "Al Ain",
    "country": "United Arab Emirates",
    "countrycode": "AE"
  },
  {
    "code": "NCL",
    "name": "Newcastle Arpt",
    "citycode": "NCL",
    "city": "Newcastle",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LCY",
    "name": "London City Arpt",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SWI",
    "name": "Swindon Rail Station",
    "citycode": "SWI",
    "city": "Swindon",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LGW",
    "name": "Gatwick Arpt",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LHR",
    "name": "Heathrow",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "STN",
    "name": "Stansted Arpt",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQP",
    "name": "London - Paddington Rail Service",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "NQY",
    "name": "Newquay Civil Arpt",
    "citycode": "NQY",
    "city": "Newquay",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "NRL",
    "name": "North Ronaldsay Arpt",
    "citycode": "NRL",
    "city": "North Ronaldsay",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ORM",
    "name": "Northampton Rail Station",
    "citycode": "ORM",
    "city": "Northampton",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "NWI",
    "name": "Norwich Airport",
    "citycode": "NWI",
    "city": "Norwich",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XNM",
    "name": "Nottingham Rail Station",
    "citycode": "XNM",
    "city": "Nottingham",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "GLA",
    "name": "Glasgow Intl",
    "citycode": "GLA",
    "city": "Glasgow",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "PSL",
    "name": "Perth Airport",
    "citycode": "PSL",
    "city": "Perth",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZXP",
    "name": "Scotrail",
    "citycode": "PSL",
    "city": "Perth",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "PZE",
    "name": "Penzance Arpt",
    "citycode": "PZE",
    "city": "Penzance",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "YEO",
    "name": "Yeovilton Arpt",
    "citycode": "YEO",
    "city": "Yeovilton",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQK",
    "name": "London - Kings Cross Rail Service",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQH",
    "name": "Harwich Rail Station",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ABZ",
    "name": "Dyce Airport",
    "citycode": "ABZ",
    "city": "Aberdeen",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZXA",
    "name": "Aberdeen ScotRail Station",
    "citycode": "ABZ",
    "city": "Aberdeen",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ACI",
    "name": "The Blaye Arpt",
    "citycode": "ACI",
    "city": "Alderney",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QDH",
    "name": "Ashford Intl Rail Station",
    "citycode": "QDH",
    "city": "Ashford",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQS",
    "name": "St Pancras Intl Rail Station",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "DSS",
    "name": "Blaise Diagne",
    "citycode": "SEN",
    "city": "Dakar",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BRR",
    "name": "North Bay Arpt",
    "citycode": "BRR",
    "city": "Barra",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SOU",
    "name": "Southampton Intl Arpt",
    "citycode": "SOU",
    "city": "Southampton",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XVU",
    "name": "Durham Rail Station",
    "citycode": "NCL",
    "city": "Newcastle",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "KYN",
    "name": "Milton Keynes Rail Station",
    "citycode": "KYN",
    "city": "Milton Keynes",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "GXH",
    "name": "Mildenhall NAF",
    "citycode": "MHZ",
    "city": "Mildenhall",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BWF",
    "name": "Walney Island",
    "citycode": "BWF",
    "city": "Barrow In Furness",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "PPW",
    "name": "Papa Westray Arpt",
    "citycode": "PPW",
    "city": "Papa Westray",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "EMA",
    "name": "East Midlands Arpt",
    "citycode": "NQT",
    "city": "Nottingham Uk",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "EDI",
    "name": "Edinburgh Arpt",
    "citycode": "EDI",
    "city": "Edinburgh",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQX",
    "name": "Bath Rail Service",
    "citycode": "QQX",
    "city": "Bath",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BHD",
    "name": "Belfast City Arpt",
    "citycode": "BFS",
    "city": "Belfast",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "MHZ",
    "name": "Mildenhall Arpt",
    "citycode": "MHZ",
    "city": "Mildenhall",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "MSE",
    "name": "Kent International Arpt",
    "citycode": "MSE",
    "city": "Manston",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XVC",
    "name": "Crewe Rail Station",
    "citycode": "MAN",
    "city": "Manchester",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQM",
    "name": "Manchester - Piccadilly Rail Station",
    "citycode": "MAN",
    "city": "Manchester",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "OXF",
    "name": "Kidlington Arpt",
    "citycode": "OXF",
    "city": "Oxford",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XVH",
    "name": "Peterborough Rail Station",
    "citycode": "XVH",
    "city": "Peterborough",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQU",
    "name": "London - Euston Rail Service",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BFS",
    "name": "Belfast Intl Arpt",
    "citycode": "BFS",
    "city": "Belfast",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BEB",
    "name": "Benbecula Arpt",
    "citycode": "BEB",
    "city": "Benbecula",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XQG",
    "name": "Berwick Rail Station",
    "citycode": "XQG",
    "city": "Berwick Upon Tweed",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SCS",
    "name": "Scatsta Arpt",
    "citycode": "SDZ",
    "city": "Shetland Islands Area",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQN",
    "name": "Birmingham - New Street Rail Service",
    "citycode": "BHX",
    "city": "Birmingham",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XVB",
    "name": "Stafford Rail Station",
    "citycode": "BHX",
    "city": "Birmingham",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XNV",
    "name": "Nuneaton Rail Station",
    "citycode": "BHX",
    "city": "Birmingham",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BZZ",
    "name": "Brize Norton Raf Station",
    "citycode": "OXF",
    "city": "Oxford",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BLK",
    "name": "Blackpool Airport",
    "citycode": "BLK",
    "city": "Blackpool",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "MAN",
    "name": "Manchester Intl",
    "citycode": "MAN",
    "city": "Manchester",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "OHP",
    "name": "Oban Heliport",
    "citycode": "OBN",
    "city": "Oban",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XQL",
    "name": "Lancaster Rail Station",
    "citycode": "BLK",
    "city": "Blackpool",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BOH",
    "name": "Bournemouth Intl Arpt",
    "citycode": "BOH",
    "city": "Bournemouth",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BRF",
    "name": "Bradford Rail Station",
    "citycode": "BRF",
    "city": "Bradford",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SZD",
    "name": "Sheffield City Arpt",
    "citycode": "SZD",
    "city": "Sheffield",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "NDY",
    "name": "Sanday Arpt",
    "citycode": "NDY",
    "city": "Sanday",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "WXF",
    "name": "Wether Field Raf",
    "citycode": "WXF",
    "city": "Braintree",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XSR",
    "name": "Salisbury Rail Station",
    "citycode": "XSR",
    "city": "Salisbury",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BSH",
    "name": "Brighton Airport",
    "citycode": "BSH",
    "city": "Brighton",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BRS",
    "name": "Bristol Intl Arpt",
    "citycode": "BRS",
    "city": "Bristol",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BEQ",
    "name": "Honington Arpt",
    "citycode": "BEQ",
    "city": "Bury St Edmunds",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ESH",
    "name": "SHOREHAM ARPT",
    "citycode": "ESH",
    "city": "SHOREHAM BY SEA",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "CBG",
    "name": "Cambridge Arpt",
    "citycode": "CBG",
    "city": "Cambridge",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "CAL",
    "name": "Machrihanish Arpt",
    "citycode": "CAL",
    "city": "Campbelltown",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "CWL",
    "name": "Cardiff Wales Arpt",
    "citycode": "CWL",
    "city": "Cardiff",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XPF",
    "name": "Penrith Rail Station",
    "citycode": "CAX",
    "city": "Carlisle",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "CAX",
    "name": "Carlisle Arpt",
    "citycode": "CAX",
    "city": "Carlisle",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XRC",
    "name": "Runcorn Rail Station",
    "citycode": "CEG",
    "city": "Chester",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "OBN",
    "name": "Connel Airport",
    "citycode": "OBN",
    "city": "Oban",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "CEG",
    "name": "Chester Arpt",
    "citycode": "CEG",
    "city": "Chester",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZFI",
    "name": "Chesterfield Bus Station",
    "citycode": "ZFI",
    "city": "Chesterfield",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XRG",
    "name": "Rugeley Rail Station",
    "citycode": "XRG",
    "city": "Rugeley",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LON",
    "name": "London",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "CVT",
    "name": "Baginton Arpt",
    "citycode": "CVT",
    "city": "Coventry",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "DSA",
    "name": "Finningley Arpt",
    "citycode": "DSA",
    "city": "Doncaster",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "DOC",
    "name": "Dornoch Arpt",
    "citycode": "DOC",
    "city": "Dornoch",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "DND",
    "name": "Riverside Park Arpt",
    "citycode": "DND",
    "city": "Dundee",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZDU",
    "name": "Dundee ScotRail",
    "citycode": "DND",
    "city": "Dundee",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XNO",
    "name": "Northallerton Rail Station",
    "citycode": "MME",
    "city": "Durham",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XVG",
    "name": "Darlington Rail Station",
    "citycode": "MME",
    "city": "Durham",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "MME",
    "name": "Durham Tees Valley Arpt",
    "citycode": "MME",
    "city": "Durham",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LYX",
    "name": "Lydd Intl Arpt",
    "citycode": "LYX",
    "city": "Lydd",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "EOI",
    "name": "Eday Arpt",
    "citycode": "EOI",
    "city": "Eday",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZXE",
    "name": "Edinburgh ScotRail",
    "citycode": "EDI",
    "city": "Edinburgh",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "EXT",
    "name": "Exeter Arpt",
    "citycode": "EXT",
    "city": "Exeter",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "FIE",
    "name": "Fair Isle Arpt",
    "citycode": "FIE",
    "city": "Fair Isle",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "FAB",
    "name": "Farnborough Arpt",
    "citycode": "FAB",
    "city": "Farnborough Hampshire",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LTN",
    "name": "Luton Arpt",
    "citycode": "LTN",
    "city": "Luton",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "FWM",
    "name": "Fort William Arpt",
    "citycode": "FWM",
    "city": "Fort William",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZGG",
    "name": "Glasgow ScotRail",
    "citycode": "GLA",
    "city": "Glasgow",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "PIK",
    "name": "Prestwick Arpt",
    "citycode": "GLA",
    "city": "Glasgow",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "GLO",
    "name": "Staverton Arpt",
    "citycode": "GLO",
    "city": "Gloucester",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XRU",
    "name": "Rugby Rail Station",
    "citycode": "XRU",
    "city": "Rugby",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "GSY",
    "name": "Binbrook Arpt",
    "citycode": "GSY",
    "city": "Grimsby",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "RAY",
    "name": "Rothesay Heliport",
    "citycode": "RAY",
    "city": "Rothesay",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "RCS",
    "name": "Rochester Airport",
    "citycode": "RCS",
    "city": "Rochester",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "GCI",
    "name": "Guernsey Arpt",
    "citycode": "GCI",
    "city": "Guernsey",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "HRT",
    "name": "Linton On Ouse",
    "citycode": "HRT",
    "city": "Harrogate",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LDY",
    "name": "Eglinton Arpt",
    "citycode": "LDY",
    "city": "Londonderry",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XPT",
    "name": "Preston Rail Station",
    "citycode": "XPT",
    "city": "Preston",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XTK",
    "name": "Thirsk Rail Station",
    "citycode": "HRT",
    "city": "Harrogate",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "HTF",
    "name": "Hatfield Arpt",
    "citycode": "HTF",
    "city": "Hatfield",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "HLY",
    "name": "Holyhead Rail Station",
    "citycode": "HLY",
    "city": "Holyhead",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "HUY",
    "name": "Humberside Arpt",
    "citycode": "HUY",
    "city": "Humberside",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BQH",
    "name": "London Biggin Hill Arpt",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZIV",
    "name": "Inverness ScotRail Station",
    "citycode": "INV",
    "city": "Inverness",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XWS",
    "name": "Swindon Rail Station",
    "citycode": "SWI",
    "city": "Swindon",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "INV",
    "name": "Inverness Arpt",
    "citycode": "INV",
    "city": "Inverness",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XQE",
    "name": "Ebbsfleet Kent Rail Station",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "BHX",
    "name": "Birmingham Intl Arpt",
    "citycode": "BHX",
    "city": "Birmingham",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "IPW",
    "name": "Ipswitch Rail Station",
    "citycode": "IPW",
    "city": "Ipswich",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ILY",
    "name": "Islay Arpt",
    "citycode": "ILY",
    "city": "Islay",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "IOM",
    "name": "Ronaldsway Arpt",
    "citycode": "IOM",
    "city": "Isle Of Man",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SKL",
    "name": "Broadford Arpt",
    "citycode": "SKL",
    "city": "Isle Of Skye Hebrides Islands",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ISC",
    "name": "St Marys Arpt",
    "citycode": "ISC",
    "city": "Isles Of Scilly",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "TSO",
    "name": "Tresco Arpt",
    "citycode": "ISC",
    "city": "Isles Of Scilly",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "JER",
    "name": "States Airport",
    "citycode": "JER",
    "city": "Jersey",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "KNF",
    "name": "Marham Raf",
    "citycode": "KNF",
    "city": "Kings Lynn",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XQI",
    "name": "Nottingham Railway Station",
    "citycode": "NQT",
    "city": "Nottingham Uk",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "KOI",
    "name": "Kirkwall Arpt",
    "citycode": "KOI",
    "city": "Kirkwall",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "PME",
    "name": "Portsmouth Arpt",
    "citycode": "PME",
    "city": "Portsmouth",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "WIC",
    "name": "Wick Arpt",
    "citycode": "WIC",
    "city": "Wick",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LEQ",
    "name": "St Just Arpt",
    "citycode": "LEQ",
    "city": "Lands End",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "TRE",
    "name": "Tiree Arpt",
    "citycode": "TRE",
    "city": "Tiree",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "NQT",
    "name": "Nottingham Arpt",
    "citycode": "NQT",
    "city": "Nottingham Uk",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LBA",
    "name": "Leeds Bradford Arpt",
    "citycode": "LBA",
    "city": "Leeds",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "UNT",
    "name": "Baltasound Arpt",
    "citycode": "UNT",
    "city": "Unst",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XQH",
    "name": "Nottingham Railway Stn",
    "citycode": "NQT",
    "city": "Nottingham Uk",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XGM",
    "name": "Grantham Rail Station",
    "citycode": "QEW",
    "city": "Leicester",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LWK",
    "name": "Tingwall Arpt",
    "citycode": "LSI",
    "city": "Lerwick",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LSI",
    "name": "Sumburgh Airport",
    "citycode": "LSI",
    "city": "Lerwick",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XWD",
    "name": "Wakefield Westgate Rail Station",
    "citycode": "XWD",
    "city": "Wakefield Westgate",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LPL",
    "name": "Liverpool Arpt",
    "citycode": "LPL",
    "city": "Liverpool",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XWN",
    "name": "Warrington B Q Rail Station",
    "citycode": "LPL",
    "city": "Liverpool",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "PLH",
    "name": "Roborough Arpt",
    "citycode": "PLH",
    "city": "Plymouth",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZLS",
    "name": "Liverpool Street Station",
    "citycode": "LPL",
    "city": "Liverpool",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "LPH",
    "name": "Lochgilphead Heliport",
    "citycode": "LPH",
    "city": "Lochgilphead",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQY",
    "name": "York Rail Station",
    "citycode": "QQY",
    "city": "York",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ZEP",
    "name": "London - Victoria Railway Station",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "WRY",
    "name": "Westray Arpt",
    "citycode": "WRY",
    "city": "Westray",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XVW",
    "name": "Belleville Rail Station",
    "citycode": "XVW",
    "city": "Wolverhampton",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XVJ",
    "name": "Stevenage Rail Station",
    "citycode": "XVJ",
    "city": "Stevenage",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XVA",
    "name": "Stockport Rail Station",
    "citycode": "XVA",
    "city": "Stockport",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "ADX",
    "name": "Leuchars Arpt",
    "citycode": "ADX",
    "city": "St Andrews",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SEN",
    "name": "Southend Municipal Arpt",
    "citycode": "SEN",
    "city": "Southend",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "XWH",
    "name": "Stroke on Trent Rail Station",
    "citycode": "XWH",
    "city": "Stoke On Trent",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SYY",
    "name": "Stornoway Arpt",
    "citycode": "SYY",
    "city": "Stornoway",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "QQW",
    "name": "London - Waterloo Rail Service",
    "citycode": "LON",
    "city": "London",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SOY",
    "name": "Stronsay Arpt",
    "citycode": "SOY",
    "city": "Stronsay",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "SWS",
    "name": "Fairwood Comm",
    "citycode": "SWS",
    "city": "Swansea",
    "country": "United Kingdom",
    "countrycode": "GB"
  },
  {
    "code": "JDX",
    "name": "Central Bus District Heliport",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EFD",
    "name": "Ellington Field",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JPT",
    "name": "Park Ten Heliport",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HUS",
    "name": "Hughes Municipal Arpt",
    "citycode": "HUS",
    "city": "Hughes",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HUC",
    "name": "Humacao Arpt",
    "citycode": "HUC",
    "city": "Humacao",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PPD",
    "name": "Palmas Del Mar",
    "citycode": "HUC",
    "city": "Humacao",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HNB",
    "name": "Huntingburg Municipal",
    "citycode": "HNB",
    "city": "Huntingburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HTS",
    "name": "Tri State Milton Arpt",
    "citycode": "HTS",
    "city": "Huntington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PMH",
    "name": "Portsmith Regional",
    "citycode": "HTS",
    "city": "Huntington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HSV",
    "name": "Huntsville Intl Arpt",
    "citycode": "HSV",
    "city": "Huntsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HUA",
    "name": "Redstone AAF",
    "citycode": "HSV",
    "city": "Huntsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HTV",
    "name": "Huntsville Arpt",
    "citycode": "HTV",
    "city": "Huntsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HON",
    "name": "Huron Municipal",
    "citycode": "HON",
    "city": "Huron",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HSL",
    "name": "Huslia Arpt",
    "citycode": "HSL",
    "city": "Huslia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HUT",
    "name": "Hutchinson Municipal",
    "citycode": "HUT",
    "city": "Hutchinson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HYA",
    "name": "Barnstable Cty Arpt",
    "citycode": "HYA",
    "city": "Hyannis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WHD",
    "name": "Seaplane Base Airpot",
    "citycode": "WHD",
    "city": "Hyder",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ICY",
    "name": "Icy Bay Arpt",
    "citycode": "ICY",
    "city": "Icy Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IDA",
    "name": "Fanning Field",
    "citycode": "IDA",
    "city": "Idaho Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NRS",
    "name": "Naval Air Station Airport",
    "citycode": "NRS",
    "city": "Imperial Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IDI",
    "name": "Indiana County Arpt",
    "citycode": "IDI",
    "city": "Indiana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IND",
    "name": "Indianapolis Intl Arpt",
    "citycode": "IND",
    "city": "Indianapolis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "INL",
    "name": "Intl Falls Arpt",
    "citycode": "INL",
    "city": "International Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IYK",
    "name": "Kern Cty Airport",
    "citycode": "IYK",
    "city": "Inyokern",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IOW",
    "name": "Iowa City Municipal Airport",
    "citycode": "IOW",
    "city": "Iowa City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IMT",
    "name": "Ford Arpt",
    "citycode": "IMT",
    "city": "Iron Mountain",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IWD",
    "name": "Ironwood Arpt",
    "citycode": "IWD",
    "city": "Ironwood",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ISL",
    "name": "Isabel Pass Arpt",
    "citycode": "ISL",
    "city": "Isabel Pass",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SIG",
    "name": "SIG Isla Grande Arpt",
    "citycode": "SIG",
    "city": "Isla Grande",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ISP",
    "name": "Long Island Macarthur Arpt",
    "citycode": "ISP",
    "city": "Islip",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ITH",
    "name": "Tomkins County",
    "citycode": "ITH",
    "city": "Ithaca",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MKL",
    "name": "McKellar Fld",
    "citycode": "MKL",
    "city": "Jackson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JAC",
    "name": "Jackson Hole Arpt",
    "citycode": "JAC",
    "city": "Jackson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JAN",
    "name": "Jackson Evers Intl Arpt",
    "citycode": "JAN",
    "city": "Jackson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HKS",
    "name": "Hawkins Field",
    "citycode": "JAN",
    "city": "Jackson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JXN",
    "name": "Jackson Reynolds Municipal",
    "citycode": "JXN",
    "city": "Jackson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OAJ",
    "name": "Albert J Ellis",
    "citycode": "OAJ",
    "city": "Jacksonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IJX",
    "name": "Jacksonville Municipal Arpt",
    "citycode": "IJX",
    "city": "Jacksonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NIP",
    "name": "Jacksonville Nas",
    "citycode": "JAX",
    "city": "Jacksonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NZC",
    "name": "Cecil Field Nas",
    "citycode": "JAX",
    "city": "Jacksonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CRG",
    "name": "Craig Municipal Arpt",
    "citycode": "JAX",
    "city": "Jacksonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JAX",
    "name": "Jacksonville Intl Arpt",
    "citycode": "JAX",
    "city": "Jacksonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JKV",
    "name": "Cherokee County Arpt",
    "citycode": "JKV",
    "city": "Jacksonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LRF",
    "name": "Little Rock Arpt",
    "citycode": "LRF",
    "city": "Jacksonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JHW",
    "name": "Chautauqua Cty Arpt",
    "citycode": "JHW",
    "city": "Jamestown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JMS",
    "name": "Jamestown Arpt",
    "citycode": "JMS",
    "city": "Jamestown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JEF",
    "name": "Jefferson City Memorial",
    "citycode": "JEF",
    "city": "Jefferson City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JST",
    "name": "Johnstown Cambria Arpt",
    "citycode": "JST",
    "city": "Johnstown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JOT",
    "name": "Joliet Park District Arpt",
    "citycode": "JOT",
    "city": "Joliet",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HGT",
    "name": "Tusi Ahp",
    "citycode": "HGT",
    "city": "Jolon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JBR",
    "name": "Jonesboro Municipal",
    "citycode": "JBR",
    "city": "Jonesboro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JLN",
    "name": "Joplin Municipal Arpt",
    "citycode": "JLN",
    "city": "Joplin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JNU",
    "name": "Juneau Arpt",
    "citycode": "JNU",
    "city": "Juneau",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OGG",
    "name": "Kahului Airport",
    "citycode": "OGG",
    "city": "Kahului",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KAE",
    "name": "Kake Arpt",
    "citycode": "KAE",
    "city": "Kake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KNK",
    "name": "Kakhonak Arpt",
    "citycode": "KNK",
    "city": "Kakhonak",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KKK",
    "name": "Kalakaket Afs",
    "citycode": "KKK",
    "city": "Kalakaket",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AZO",
    "name": "Kalamazoo Cty Arpt",
    "citycode": "AZO",
    "city": "Kalamazoo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LUP",
    "name": "Kalaupapa Municipal",
    "citycode": "LUP",
    "city": "Kalaupapa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FCA",
    "name": "Glacier Park Intl",
    "citycode": "FCA",
    "city": "Kalispell",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KLG",
    "name": "Kalskag Municipal Arpt",
    "citycode": "KLG",
    "city": "Kalskag",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MUE",
    "name": "Waimea Arpt",
    "citycode": "MUE",
    "city": "Kamuela",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IKK",
    "name": "Greater Kankakee Arpt",
    "citycode": "IKK",
    "city": "Kankakee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MKC",
    "name": "Kansas City Municipal Arpt",
    "citycode": "MKC",
    "city": "Kansas City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OJC",
    "name": "Johnson Executive Arpt",
    "citycode": "MKC",
    "city": "Kansas City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JHM",
    "name": "Kapalua Arpt",
    "citycode": "JHM",
    "city": "Kapalua",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KKL",
    "name": "Karluk Lake Arpt",
    "citycode": "KKL",
    "city": "Karluk Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KUK",
    "name": "Kasigluk Arpt",
    "citycode": "KUK",
    "city": "Kasigluk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EAR",
    "name": "Kearney Municipal Arrpt",
    "citycode": "EAR",
    "city": "Kearney",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EEN",
    "name": "Dilliant Hopkins Arpt",
    "citycode": "EEN",
    "city": "Keene",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KLP",
    "name": "Kelp Bay Arpt",
    "citycode": "KLP",
    "city": "Kelp Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KLS",
    "name": "Kelso Longview Regional Arpt",
    "citycode": "KLS",
    "city": "Kelso",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ENA",
    "name": "Kenai Municipal Arpt",
    "citycode": "ENA",
    "city": "Kenai",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KNT",
    "name": "Kennett Municipal Arpt",
    "citycode": "KNT",
    "city": "Kennett",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ENW",
    "name": "Kenosha Regional Airport",
    "citycode": "ENW",
    "city": "Kenosha",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KKT",
    "name": "Kentland Arpt",
    "citycode": "KKT",
    "city": "Kentland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EOK",
    "name": "Keokuk Arpt",
    "citycode": "EOK",
    "city": "Keokuk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ERV",
    "name": "Kerrville Arpt",
    "citycode": "ERV",
    "city": "Kerrville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WFB",
    "name": "Ketchikan Harbor Seaplane Base",
    "citycode": "KTN",
    "city": "Ketchikan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KTN",
    "name": "Ketchikan Intl Arpt",
    "citycode": "KTN",
    "city": "Ketchikan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KYL",
    "name": "Port Largo Arpt",
    "citycode": "KYL",
    "city": "Key Largo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NQX",
    "name": "Key West Naval Air Station Arpt",
    "citycode": "EYW",
    "city": "Key West",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EYW",
    "name": "Key West Intl",
    "citycode": "EYW",
    "city": "Key West",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QKS",
    "name": "Keystone Van Service",
    "citycode": "QKS",
    "city": "Keystone",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GRK",
    "name": "Gray AAF",
    "citycode": "ILE",
    "city": "Killeen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HLR",
    "name": "Fort Hood AAF",
    "citycode": "ILE",
    "city": "Killeen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ILE",
    "name": "Killeen Municipal",
    "citycode": "ILE",
    "city": "Killeen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KIC",
    "name": "Mesa Del Rey Arpt",
    "citycode": "KIC",
    "city": "King City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KPD",
    "name": "King Of Prussia Arpt",
    "citycode": "KPD",
    "city": "King Of Prussia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AKN",
    "name": "King Salmon Arpt",
    "citycode": "AKN",
    "city": "King Salmon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IGM",
    "name": "Mohave County",
    "citycode": "IGM",
    "city": "Kingman",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NQI",
    "name": "Naval Air Station Arpt",
    "citycode": "NQI",
    "city": "Kingsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ISO",
    "name": "East Reg Jetport Stallings",
    "citycode": "ISO",
    "city": "Kinston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IRK",
    "name": "Kirksville Municipal",
    "citycode": "IRK",
    "city": "Kirksville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ISM",
    "name": "Kissimmee Municipal Arpt",
    "citycode": "ISM",
    "city": "Kissimmee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LMT",
    "name": "Kingsley Field",
    "citycode": "LMT",
    "city": "Klamath Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KLW",
    "name": "Klawock Arpt",
    "citycode": "KLW",
    "city": "Klawock",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TYS",
    "name": "McGhee Tyson Arpt",
    "citycode": "TYS",
    "city": "Knoxville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ADQ",
    "name": "Kodiak Arpt",
    "citycode": "ADQ",
    "city": "Kodiak",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KDK",
    "name": "Kodiak Municipal",
    "citycode": "ADQ",
    "city": "Kodiak",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WDY",
    "name": "Kodiak Fss",
    "citycode": "ADQ",
    "city": "Kodiak",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OKK",
    "name": "Kokomo Municipal",
    "citycode": "OKK",
    "city": "Kokomo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KOA",
    "name": "Keahole Arpt",
    "citycode": "KOA",
    "city": "Kona",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OTZ",
    "name": "Ralph Wien Memorial",
    "citycode": "OTZ",
    "city": "Kotzebue",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UUK",
    "name": "Kuparuk Arpt",
    "citycode": "UUK",
    "city": "Kuparuk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LSE",
    "name": "La Crosse Municipal",
    "citycode": "LSE",
    "city": "La Crosse",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LGD",
    "name": "La Grande Union County Arpt",
    "citycode": "LGD",
    "city": "La Grande",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LGC",
    "name": "Calloway Arpt",
    "citycode": "LGC",
    "city": "La Grange",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LPO",
    "name": "La Porte Arpt",
    "citycode": "LPO",
    "city": "La Porte",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "POC",
    "name": "Brackett Field",
    "citycode": "POC",
    "city": "La Verne",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WLB",
    "name": "Labouchere Bay Arpt",
    "citycode": "WLB",
    "city": "Labouchere Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LCI",
    "name": "Laconia Municipal Arpt",
    "citycode": "LCI",
    "city": "Laconia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAF",
    "name": "Lafayette Arpt",
    "citycode": "LAF",
    "city": "Lafayette",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LFT",
    "name": "Lafayette Municipal",
    "citycode": "LFT",
    "city": "Lafayette",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LCH",
    "name": "Lake Charles Municipal",
    "citycode": "LCH",
    "city": "Lake Charles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HII",
    "name": "Lake Havasu City Municipal Airport",
    "citycode": "HII",
    "city": "Lake Havasu Cty",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LJN",
    "name": "Lake Jackson Arpt",
    "citycode": "LJN",
    "city": "Lake Jackson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AIZ",
    "name": "Lee C Fine Memorial",
    "citycode": "AIZ",
    "city": "Lake Of The Ozarks",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TVL",
    "name": "Lake Tahoe Arpt",
    "citycode": "TVL",
    "city": "Lake Tahoe",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAL",
    "name": "Lakeland Arpt",
    "citycode": "LAL",
    "city": "Lakeland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAA",
    "name": "Lamar Arpt",
    "citycode": "LAA",
    "city": "Lamar",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LNY",
    "name": "Lanai Airport",
    "citycode": "LNY",
    "city": "Lanai",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WJF",
    "name": "Williams J Fox Arpt",
    "citycode": "WJF",
    "city": "Lancaster",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RZH",
    "name": "Quartz Hill Arpt",
    "citycode": "WJF",
    "city": "Lancaster",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRL",
    "name": "Lancaster Pa Railway Station",
    "citycode": "LNS",
    "city": "Lancaster",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LNS",
    "name": "Lancaster Arpt",
    "citycode": "LNS",
    "city": "Lancaster",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAN",
    "name": "Lansing Arpt",
    "citycode": "LAN",
    "city": "Lansing",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAR",
    "name": "General Brees Fld",
    "citycode": "LAR",
    "city": "Laramie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SAA",
    "name": "Lar Shively Arpt",
    "citycode": "LAR",
    "city": "Laramie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LRD",
    "name": "Laredo Intl",
    "citycode": "LRD",
    "city": "Laredo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LRU",
    "name": "Las Cruces Crawford Arpt",
    "citycode": "LRU",
    "city": "Las Cruces",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HSH",
    "name": "Henderson Sky Harbor Arpt",
    "citycode": "LAS",
    "city": "Las Vegas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LSV",
    "name": "Nellis Air Force Base",
    "citycode": "LAS",
    "city": "Las Vegas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VGT",
    "name": "Las Vegas North Air Terminal",
    "citycode": "LAS",
    "city": "Las Vegas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LVS",
    "name": "Las Vegas Arpt",
    "citycode": "LVS",
    "city": "Las Vegas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TCC",
    "name": "Tucumcari Arpt",
    "citycode": "LVS",
    "city": "Las Vegas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LBE",
    "name": "Westmorland County",
    "citycode": "LBE",
    "city": "Latrobe",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LUL",
    "name": "Hesler Noble Field",
    "citycode": "LUL",
    "city": "Laurel",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PIB",
    "name": "Hattiesburg Laurel Regional Arpt",
    "citycode": "LUL",
    "city": "Laurel",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LWC",
    "name": "Lawrence Municipal",
    "citycode": "LWC",
    "city": "Lawrence",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LWM",
    "name": "Lawrence Arpt",
    "citycode": "LWM",
    "city": "Lawrence",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAW",
    "name": "Lawton Municipal",
    "citycode": "LAW",
    "city": "Lawton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LXV",
    "name": "Leadville Arpt",
    "citycode": "LXV",
    "city": "Leadville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CNH",
    "name": "Claremont Municipal",
    "citycode": "LEB",
    "city": "Lebanon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LEB",
    "name": "Lebanon Regional",
    "citycode": "LEB",
    "city": "Lebanon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LEE",
    "name": "Leesburg Municipal Arpt",
    "citycode": "LEE",
    "city": "Leesburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NLC",
    "name": "Nas Reeves Field",
    "citycode": "NLC",
    "city": "Lemoore",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LWB",
    "name": "Greenbrier Valley Arpt",
    "citycode": "LWB",
    "city": "Lewisburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LEW",
    "name": "Auburn Lewiston Arpt",
    "citycode": "LEW",
    "city": "Lewiston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LWS",
    "name": "Lewiston Nez Pierce Arpt",
    "citycode": "LWS",
    "city": "Lewiston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LWT",
    "name": "Lewistown Municipal",
    "citycode": "LWT",
    "city": "Lewistown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LSD",
    "name": "Creech Army Air Field",
    "citycode": "LEX",
    "city": "Lexington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LEX",
    "name": "Blue Grass Field",
    "citycode": "LEX",
    "city": "Lexington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LXN",
    "name": "Jim Kelley Field",
    "citycode": "LXN",
    "city": "Lexington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LBL",
    "name": "Liberal Municipal",
    "citycode": "LBL",
    "city": "Liberal",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LIH",
    "name": "Lihue Municipal",
    "citycode": "LIH",
    "city": "Lihue",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AOH",
    "name": "Allen County Arpt",
    "citycode": "AOH",
    "city": "Lima",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LVD",
    "name": "Lime Village Arpt",
    "citycode": "LVD",
    "city": "Lime Village",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LIC",
    "name": "Limon Municipal Arpt",
    "citycode": "LIC",
    "city": "Limon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LNK",
    "name": "Lincoln Municipal",
    "citycode": "LNK",
    "city": "Lincoln",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LDJ",
    "name": "Linden Municipal",
    "citycode": "LDJ",
    "city": "Linden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LPW",
    "name": "Little Port Walter Arpt",
    "citycode": "LPW",
    "city": "Little Port Walter",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LIT",
    "name": "Little Rock Regional",
    "citycode": "LIT",
    "city": "Little Rock",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LIV",
    "name": "Livengood Arpt",
    "citycode": "LIV",
    "city": "Livengood",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LVK",
    "name": "Bron Airport",
    "citycode": "LVK",
    "city": "Livermore",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LVM",
    "name": "Mission Field",
    "citycode": "LVM",
    "city": "Livingston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LGU",
    "name": "Logan Arpt",
    "citycode": "LGU",
    "city": "Logan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VBG",
    "name": "Vandenberg Airforce Base",
    "citycode": "LPC",
    "city": "Lompoc",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LOZ",
    "name": "Corbin London Arpt",
    "citycode": "LOZ",
    "city": "London",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LGB",
    "name": "Long Beach Municipal",
    "citycode": "LGB",
    "city": "Long Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GGG",
    "name": "Greg County Arpt",
    "citycode": "GGG",
    "city": "Longview",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LPS",
    "name": "Lopez Island Arpt",
    "citycode": "LPS",
    "city": "Lopez Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAM",
    "name": "Los Alamos Municipal",
    "citycode": "LAM",
    "city": "Los Alamos",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SMO",
    "name": "Santa Monica Municipal Arpt",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JIO",
    "name": "International Heliport",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JTO",
    "name": "Thousand Oaks Hlpt",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JSN",
    "name": "Sherman Oaks Heliport",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VNY",
    "name": "Van Nuys Arpt",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WHP",
    "name": "Whiteman Arpt",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JLX",
    "name": "Union Station Heliport",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JWC",
    "name": "Warner Cntr Bus Plaza",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LSN",
    "name": "Los Banos Arpt",
    "citycode": "LSN",
    "city": "Los Banos",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SDF",
    "name": "Louisville International Arpt",
    "citycode": "SDF",
    "city": "Louisville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LOU",
    "name": "Bowman Field Arpt",
    "citycode": "SDF",
    "city": "Louisville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LMS",
    "name": "Louisville Winston County Arpt",
    "citycode": "LMS",
    "city": "Louisville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LBB",
    "name": "Lubbock Preston Smith Intl Arpt",
    "citycode": "LBB",
    "city": "Lubbock",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "REE",
    "name": "Reese Airforce Base",
    "citycode": "LBB",
    "city": "Lubbock",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LFK",
    "name": "Angelina Cty Arpt",
    "citycode": "LFK",
    "city": "Lufkin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LBT",
    "name": "Lumberton Arpt",
    "citycode": "LBT",
    "city": "Lumberton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LYH",
    "name": "Lynchburg Municipal",
    "citycode": "LYH",
    "city": "Lynchburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "XMD",
    "name": "Madison Arpt",
    "citycode": "XMD",
    "city": "MADISON",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CWO",
    "name": "Ft Wolter AAF",
    "citycode": "MWL",
    "city": "MINERAL WELLS",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MWL",
    "name": "Mineral Wells Arpt",
    "citycode": "MWL",
    "city": "MINERAL WELLS",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NFB",
    "name": "Detroit Naval Air Facility",
    "citycode": "MTC",
    "city": "MT CLEMENS",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MAC",
    "name": "Macon Downtownarpt",
    "citycode": "MCN",
    "city": "Macon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WRB",
    "name": "Robins Airforce Base",
    "citycode": "MCN",
    "city": "Macon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCN",
    "name": "Lewis B Wilson",
    "citycode": "MCN",
    "city": "Macon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MAE",
    "name": "Madera Municipal Arpt",
    "citycode": "MAE",
    "city": "Madera",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MSN",
    "name": "Dane County Regional",
    "citycode": "MSN",
    "city": "Madison",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AGO",
    "name": "Magnolia Municipal",
    "citycode": "AGO",
    "city": "Magnolia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MMH",
    "name": "Mammoth Lakes Municipal",
    "citycode": "MMH",
    "city": "Mammoth Lakes",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MNZ",
    "name": "Manassas Arpt",
    "citycode": "MNZ",
    "city": "Manassas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EZF",
    "name": "Shannon Airport",
    "citycode": "MNZ",
    "city": "Manassas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MHT",
    "name": "Manchester Arpt",
    "citycode": "MHT",
    "city": "Manchester",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MHK",
    "name": "Manhattan Municipal Arpt",
    "citycode": "MHK",
    "city": "Manhattan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MXA",
    "name": "Manila Municipal",
    "citycode": "MXA",
    "city": "Manila",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MBL",
    "name": "Manistee Arpt",
    "citycode": "MBL",
    "city": "Manistee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ISQ",
    "name": "Schoolcraft County Arpt",
    "citycode": "ISQ",
    "city": "Manistique",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MTW",
    "name": "Manitowoc Municipal Arpt",
    "citycode": "MTW",
    "city": "Manitowoc",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JMN",
    "name": "Municipal Heliport",
    "citycode": "MKT",
    "city": "Mankato",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MKT",
    "name": "Mankato Municipal Arpt",
    "citycode": "MKT",
    "city": "Mankato",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MFD",
    "name": "Mansfield Municipal",
    "citycode": "MFD",
    "city": "Mansfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MEO",
    "name": "Dare County Regional Arpt",
    "citycode": "MEO",
    "city": "Manteo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MZJ",
    "name": "Marana Arpt",
    "citycode": "MZJ",
    "city": "Marana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MTH",
    "name": "Marathon Arpt",
    "citycode": "MTH",
    "city": "Marathon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MYH",
    "name": "Marble Canyon Arpt",
    "citycode": "MYH",
    "city": "Marble Canyon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MGE",
    "name": "Dobbins Air Force Base",
    "citycode": "MGE",
    "city": "Marietta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NCQ",
    "name": "Marietta Atlanta Naval Air Station",
    "citycode": "MGE",
    "city": "Marietta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MWA",
    "name": "Williamson County",
    "citycode": "MWA",
    "city": "Marion",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RMY",
    "name": "Mariposa Yosemite Arpt",
    "citycode": "RMY",
    "city": "Mariposa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MQT",
    "name": "Sawyer Intl Airport",
    "citycode": "MQT",
    "city": "Marquette",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ASL",
    "name": "Harrison County Arpt",
    "citycode": "ASL",
    "city": "Marshall",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MML",
    "name": "Marshall Municipal",
    "citycode": "MML",
    "city": "Marshall",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MIW",
    "name": "Marshalltown Municipal",
    "citycode": "MIW",
    "city": "Marshalltown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MFI",
    "name": "Marshfield Municipal Arpt",
    "citycode": "MFI",
    "city": "Marshfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MVY",
    "name": "Dukes County",
    "citycode": "MVY",
    "city": "Martha S Vineyard",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MRB",
    "name": "Martinsburgh Regional Arpt",
    "citycode": "MRB",
    "city": "Martinsburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MYV",
    "name": "Yuba County Arpt",
    "citycode": "MYV",
    "city": "Marysville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BAB",
    "name": "Beale AFB",
    "citycode": "MYV",
    "city": "Marysville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCW",
    "name": "Mason City Municipal",
    "citycode": "MCW",
    "city": "Mason City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MSS",
    "name": "Richards Field",
    "citycode": "MSS",
    "city": "Massena",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MTO",
    "name": "Coles County",
    "citycode": "MTO",
    "city": "Mattoon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MYK",
    "name": "May Creek Arpt",
    "citycode": "MYK",
    "city": "May Creek",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MAZ",
    "name": "Eugenio M De Hostos Arpt",
    "citycode": "MAZ",
    "city": "Mayaguez",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MLC",
    "name": "McAlester Municipal Arpt",
    "citycode": "MLC",
    "city": "McAlester",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MFE",
    "name": "Miller Intl",
    "citycode": "MFE",
    "city": "McAllen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCK",
    "name": "McCook Municipal",
    "citycode": "MCK",
    "city": "McCook",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MPR",
    "name": "McPherson Arpt",
    "citycode": "MPR",
    "city": "McPherson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MYL",
    "name": "Mccall Arpt",
    "citycode": "MYL",
    "city": "Mccall",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MXY",
    "name": "McCarthy Arpt",
    "citycode": "MXY",
    "city": "Mccarthy",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MFR",
    "name": "Medford Jackson Cty",
    "citycode": "MFR",
    "city": "Medford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MLB",
    "name": "Melbourne Regional",
    "citycode": "MLB",
    "city": "Melbourne",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NQA",
    "name": "Memphis Naval Air Station",
    "citycode": "MEM",
    "city": "Memphis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MNM",
    "name": "Menominee County",
    "citycode": "MNM",
    "city": "Menominee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MER",
    "name": "Castle Airfoce Base",
    "citycode": "MCE",
    "city": "Merced",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCE",
    "name": "Merced Municipal Arpt",
    "citycode": "MCE",
    "city": "Merced",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MEI",
    "name": "Key Field",
    "citycode": "MEI",
    "city": "Meridian",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MSC",
    "name": "Falcon Field",
    "citycode": "MSC",
    "city": "Mesa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MFH",
    "name": "Mesquite Arpt",
    "citycode": "MFH",
    "city": "Mesquite",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HWO",
    "name": "North Perry Arpt",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZFT",
    "name": "Ft Lauderdale Rail Station",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TNT",
    "name": "Dade Collier Arpt",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZWP",
    "name": "West Palm Beach Railway Stn",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MPB",
    "name": "Mpb Seaplane Base",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JDM",
    "name": "Downtown Hlt",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OPF",
    "name": "Opa Locka Arpt",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TMB",
    "name": "Tamiami Airport",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MGC",
    "name": "Michigan City Arpt",
    "citycode": "MGC",
    "city": "Michigan City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MDO",
    "name": "Interm",
    "citycode": "MDO",
    "city": "Middleton Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MWO",
    "name": "Hook Field",
    "citycode": "MWO",
    "city": "Middletown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MAF",
    "name": "Midland Intl Arpt",
    "citycode": "MAF",
    "city": "Midland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MDD",
    "name": "Midland Airpark",
    "citycode": "MAF",
    "city": "Midland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MLS",
    "name": "Miles City Municipal Arpt",
    "citycode": "MLS",
    "city": "Miles City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MLT",
    "name": "Millinocket Arpt",
    "citycode": "MLT",
    "city": "Millinocket",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MIV",
    "name": "Millville Arpt",
    "citycode": "MIV",
    "city": "Millville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NSE",
    "name": "Whiting Field Nas",
    "citycode": "NSE",
    "city": "Milton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MWC",
    "name": "Lawrence J Timmerman Arpt",
    "citycode": "MKE",
    "city": "Milwaukee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZML",
    "name": "Milwaukee Airport Rail Station",
    "citycode": "MKE",
    "city": "Milwaukee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MEV",
    "name": "Douglas County Arpt",
    "citycode": "MEV",
    "city": "Minden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JDT",
    "name": "Minneapolis Downtown Heliport",
    "citycode": "MSP",
    "city": "Minneapolis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FCM",
    "name": "Flying Cloud Arpt",
    "citycode": "MSP",
    "city": "Minneapolis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ARV",
    "name": "Noble F Lee Memorial Field",
    "citycode": "ARV",
    "city": "Minocqua",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MIB",
    "name": "Minot Airforce Base",
    "citycode": "MOT",
    "city": "Minot",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MOT",
    "name": "Minot Intl",
    "citycode": "MOT",
    "city": "Minot",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MSO",
    "name": "Missoula Intl",
    "citycode": "MSO",
    "city": "Missoula",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MHE",
    "name": "Mitchell Municipal",
    "citycode": "MHE",
    "city": "Mitchell",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CNY",
    "name": "Moab Municipal",
    "citycode": "CNY",
    "city": "Moab",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFM",
    "name": "Brookley Arpt",
    "citycode": "MOB",
    "city": "Mobile",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MOB",
    "name": "Mobile Municipal",
    "citycode": "MOB",
    "city": "Mobile",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MOD",
    "name": "Harry Sham Fld",
    "citycode": "MOD",
    "city": "Modesto",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MHV",
    "name": "Kern County Arpt",
    "citycode": "MHV",
    "city": "Mojave",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MLI",
    "name": "Quad City Arpt",
    "citycode": "MLI",
    "city": "Moline",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MLU",
    "name": "Monroe Regional",
    "citycode": "MLU",
    "city": "Monroe",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MVC",
    "name": "Monroe County Arpt",
    "citycode": "MVC",
    "city": "Monroeville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SIY",
    "name": "Yreka Rohrer Field",
    "citycode": "SIY",
    "city": "Montague",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MTP",
    "name": "Sky Portal Arpt",
    "citycode": "MTP",
    "city": "Montauk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MRY",
    "name": "Monterey Peninsula",
    "citycode": "MRY",
    "city": "Monterey",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OAR",
    "name": "Fritzsche Army Air Field",
    "citycode": "MRY",
    "city": "Monterey",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MGJ",
    "name": "Orange County Arpt",
    "citycode": "MGJ",
    "city": "Montgomery",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MXF",
    "name": "Maxwell Airforce Base",
    "citycode": "MGM",
    "city": "Montgomery",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GUN",
    "name": "Gunter AFB",
    "citycode": "MGM",
    "city": "Montgomery",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MGM",
    "name": "Dannelly Field",
    "citycode": "MGM",
    "city": "Montgomery",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MSV",
    "name": "Catskills Sulivan",
    "citycode": "MSV",
    "city": "Monticello",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MPV",
    "name": "E F Knapp Arpt",
    "citycode": "MPV",
    "city": "Montpelier",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MTJ",
    "name": "Montrose County",
    "citycode": "MTJ",
    "city": "Montrose",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MGW",
    "name": "Morgantown Municipal",
    "citycode": "MGW",
    "city": "Morgantown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MMU",
    "name": "Morristown Arpt",
    "citycode": "MMU",
    "city": "Morristown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MOR",
    "name": "MOORE MURRELL ARPT",
    "citycode": "MOR",
    "city": "Morristown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MWH",
    "name": "Grant County",
    "citycode": "MWH",
    "city": "Moses Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LRN",
    "name": "Larson AFB",
    "citycode": "MWH",
    "city": "Moses Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MGR",
    "name": "Moultrie Arpt",
    "citycode": "MGR",
    "city": "Moultrie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MUL",
    "name": "Spence Airport",
    "citycode": "MGR",
    "city": "Moultrie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LLY",
    "name": "Burlington Country Arpt",
    "citycode": "LLY",
    "city": "Mount Holly",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MOP",
    "name": "Mt Pleasant Municipal",
    "citycode": "MOP",
    "city": "Mount Pleasant",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MPS",
    "name": "Mount Pleasant Municipal Arpt",
    "citycode": "MPS",
    "city": "Mount Pleasant",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WMH",
    "name": "Mountain Home Arpt",
    "citycode": "WMH",
    "city": "Mountain Home",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MUO",
    "name": "Mountain Home AFB",
    "citycode": "MUO",
    "city": "Mountain Home",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NUQ",
    "name": "Moffett Field",
    "citycode": "NUQ",
    "city": "Mountain View",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MOU",
    "name": "Mountain Village Arpt",
    "citycode": "MOU",
    "city": "Mountain Village",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MVN",
    "name": "Mt Vernon Outland Arpt",
    "citycode": "MVN",
    "city": "Mt Vernon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MIE",
    "name": "Johnson Field",
    "citycode": "MIE",
    "city": "Muncie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CEY",
    "name": "Calloway Cty Arpt",
    "citycode": "CEY",
    "city": "Murray",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MSL",
    "name": "Muscle Shoals Arpt",
    "citycode": "MSL",
    "city": "Muscle Shoals",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MKG",
    "name": "Muskegon Cty Intl",
    "citycode": "MKG",
    "city": "Muskegon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MKO",
    "name": "Davis Field",
    "citycode": "MKO",
    "city": "Muskogee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HAX",
    "name": "Hatbox Field Arpt",
    "citycode": "MKO",
    "city": "Muskogee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GGE",
    "name": "George Town Arpt",
    "citycode": "MYR",
    "city": "Myrtle Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CRE",
    "name": "Grand Strand Arpt",
    "citycode": "MYR",
    "city": "Myrtle Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MYR",
    "name": "Myrtle Beach Jetway",
    "citycode": "MYR",
    "city": "Myrtle Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ARA",
    "name": "Acadiana Regional Arpt",
    "citycode": "ARA",
    "city": "NEW IBERIA",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OCH",
    "name": "Al Mangham Jr Regional Arpt",
    "citycode": "OCH",
    "city": "Nacogdoches",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ACK",
    "name": "Nantucket Memorial",
    "citycode": "ACK",
    "city": "Nantucket",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "APC",
    "name": "Napa Cty Arpt",
    "citycode": "APC",
    "city": "Napa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "APF",
    "name": "Naples Municipal",
    "citycode": "APF",
    "city": "Naples",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ASH",
    "name": "Boire Field Arpt",
    "citycode": "ASH",
    "city": "Nashua",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BNA",
    "name": "Nashville International Arpt",
    "citycode": "BNA",
    "city": "Nashville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HEZ",
    "name": "Natchez Adams Cty",
    "citycode": "HEZ",
    "city": "Natchez",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EED",
    "name": "Needles Arpt",
    "citycode": "EED",
    "city": "Needles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NLG",
    "name": "Nelson Lagoon Arpt",
    "citycode": "NLG",
    "city": "Nelson Lagoon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EWB",
    "name": "New Bedford Municipal",
    "citycode": "EWB",
    "city": "New Bedford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EWN",
    "name": "Craven County Regional Arpt",
    "citycode": "EWN",
    "city": "New Bern",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HVN",
    "name": "Tweed New Haven Arpt",
    "citycode": "HVN",
    "city": "New Haven",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GON",
    "name": "Groton New London Arpt",
    "citycode": "GON",
    "city": "New London",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NBG",
    "name": "Alvin Callendar Arpt",
    "citycode": "MSY",
    "city": "New Orleans",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RNH",
    "name": "New Richmond Municipal",
    "citycode": "RNH",
    "city": "New Richmond",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ULM",
    "name": "New Ulm Arpt",
    "citycode": "ULM",
    "city": "New Ulm",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QNY",
    "name": "Marine Air Terminal",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NES",
    "name": "Skyports Inc Seaplane Base",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NBP",
    "name": "Battery Pk City N Cov",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JRA",
    "name": "West 30Th St Heliport",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JRB",
    "name": "Downtown Manhattan Heliport",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JRE",
    "name": "East 60th St Hlpt",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TSS",
    "name": "East 34th St Hlpt",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZYP",
    "name": "New York Penn Station",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NWK",
    "name": "Newark Pennsylvania Railway Stn",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRP",
    "name": "NEWARK RAILWAY STATION",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FLU",
    "name": "Flushing Airport",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NWS",
    "name": "Pier 11 Wall St Seaplane Base",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SWF",
    "name": "Stewart Airport",
    "citycode": "SWF",
    "city": "Newburgh",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ONP",
    "name": "Newport Municipal Arpt",
    "citycode": "ONP",
    "city": "Newport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NPT",
    "name": "Newport State Arpt",
    "citycode": "NPT",
    "city": "Newport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PHF",
    "name": "Williamsburg Intl Arpt",
    "citycode": "PHF",
    "city": "Newport News",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NEW",
    "name": "Lakefront Airport",
    "citycode": "NEW",
    "city": "New Orleans",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TNU",
    "name": "Municipal Newton Arpt",
    "citycode": "TNU",
    "city": "Newton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EWK",
    "name": "Newton City County Arpt",
    "citycode": "EWK",
    "city": "Newton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IAG",
    "name": "Niagara Falls Intl Arpt",
    "citycode": "IAG",
    "city": "Niagara Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IKO",
    "name": "Nikolski Afs",
    "citycode": "IKO",
    "city": "Nikolski",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NIN",
    "name": "Ninilchik Arpt",
    "citycode": "NIN",
    "city": "Ninilchik",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OLS",
    "name": "International Arpt",
    "citycode": "OLS",
    "city": "Nogales",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OME",
    "name": "Nome Arpt",
    "citycode": "OME",
    "city": "Nome",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NNL",
    "name": "Nondalton Arpt",
    "citycode": "NNL",
    "city": "Nondalton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OFK",
    "name": "Karl Stefan Fld",
    "citycode": "OFK",
    "city": "Norfolk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ORF",
    "name": "Norfolk Intl Arpt",
    "citycode": "ORF",
    "city": "Norfolk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NGU",
    "name": "Naval Air Station Chambers",
    "citycode": "ORF",
    "city": "Norfolk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OTH",
    "name": "North Bend Municipal",
    "citycode": "OTH",
    "city": "North Bend",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LBF",
    "name": "Lee Bird Field",
    "citycode": "LBF",
    "city": "North Platte",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ORT",
    "name": "Northway Arpt",
    "citycode": "ORT",
    "city": "Northway",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ORQ",
    "name": "Norwalk Heliport",
    "citycode": "ORQ",
    "city": "Norwalk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OWD",
    "name": "Norwood Ma Arpt",
    "citycode": "OWD",
    "city": "Norwood",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NOT",
    "name": "Novato Arpt",
    "citycode": "NOT",
    "city": "Novato",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NUL",
    "name": "Nulato Arpt",
    "citycode": "NUL",
    "city": "Nulato",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OBT",
    "name": "Oakland Coliseum Street",
    "citycode": "ODM",
    "city": "OAKLAND",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OVE",
    "name": "OROVILLE ARPT",
    "citycode": "OVE",
    "city": "OROVILLE",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LOR",
    "name": "Lowe Army Heliport",
    "citycode": "OZR",
    "city": "OZARK",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HEY",
    "name": "Hanchey Army Heliport",
    "citycode": "OZR",
    "city": "OZARK",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OZR",
    "name": "Cairns AAF",
    "citycode": "OZR",
    "city": "OZARK",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ODW",
    "name": "Oak Harbour Municipal",
    "citycode": "ODW",
    "city": "Oak Harbor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OAK",
    "name": "Metro Oakland Intl Arpt",
    "citycode": "OAK",
    "city": "Oakland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JCE",
    "name": "Oakland Conv Ctr Hlpt",
    "citycode": "OAK",
    "city": "Oakland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OCF",
    "name": "Taylor Field Arpt",
    "citycode": "OCF",
    "city": "Ocala",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OCE",
    "name": "Ocean City Airport",
    "citycode": "OCE",
    "city": "Ocean City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OCA",
    "name": "Ocean Reef Arpt",
    "citycode": "OCA",
    "city": "Ocean Reef",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OCN",
    "name": "Oceanside Municipal Arpt",
    "citycode": "OCN",
    "city": "Oceanside",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OGA",
    "name": "Searle Field",
    "citycode": "OGA",
    "city": "Ogallala",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OGD",
    "name": "Ogden Municipal",
    "citycode": "OGD",
    "city": "Ogden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HIF",
    "name": "Hill AFB",
    "citycode": "OGD",
    "city": "Ogden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OGS",
    "name": "Ogdensburg Municipal",
    "citycode": "OGS",
    "city": "Ogdensburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OBE",
    "name": "Okeechobee County Arpt",
    "citycode": "OBE",
    "city": "Okeechobee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PWA",
    "name": "Wiley Post Arpt",
    "citycode": "OKC",
    "city": "Oklahoma City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OKC",
    "name": "Will Rogers World Arpt",
    "citycode": "OKC",
    "city": "Oklahoma City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TIK",
    "name": "Tinker Airforce Base Arpt",
    "citycode": "OKC",
    "city": "Oklahoma City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DWN",
    "name": "Downtown Airpark",
    "citycode": "OKC",
    "city": "Oklahoma City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OLM",
    "name": "Olympia Arpt",
    "citycode": "OLM",
    "city": "Olympia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MIQ",
    "name": "Millard Airport",
    "citycode": "OMA",
    "city": "Omaha",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ONH",
    "name": "Oneonta Municpal",
    "citycode": "ONH",
    "city": "Oneonta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ONO",
    "name": "Ontario Airport",
    "citycode": "ONO",
    "city": "Ontario",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ONT",
    "name": "Ontario Intl",
    "citycode": "ONT",
    "city": "Ontario",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ORL",
    "name": "Herndon Arpt",
    "citycode": "ORL",
    "city": "Orlando",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DWS",
    "name": "Walt Disney World Arpt",
    "citycode": "ORL",
    "city": "Orlando",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OSH",
    "name": "Wittman Field",
    "citycode": "OSH",
    "city": "Oshkosh",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OTM",
    "name": "Industrial Arpt",
    "citycode": "OTM",
    "city": "Ottumwa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OWA",
    "name": "Owatonna Arpt",
    "citycode": "OWA",
    "city": "Owatonna",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OWB",
    "name": "Daviess County Arpt",
    "citycode": "OWB",
    "city": "Owensboro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OXR",
    "name": "Oxnard Ventura Arpt",
    "citycode": "OXR",
    "city": "Oxnard",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PEQ",
    "name": "Pecos Arpt",
    "citycode": "PEQ",
    "city": "PECOS",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PAH",
    "name": "Barkley Regional",
    "citycode": "PAH",
    "city": "Paducah",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PGA",
    "name": "Page Airport",
    "citycode": "PGA",
    "city": "Page",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PGO",
    "name": "Stevens Field Arpt",
    "citycode": "PGO",
    "city": "Pagosa Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PHK",
    "name": "Palm Beach County Glades Arpt",
    "citycode": "PHK",
    "city": "Pahokee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PMU",
    "name": "Sea Plane Base Airport",
    "citycode": "PMU",
    "city": "Paimiut",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PVZ",
    "name": "Casement Arpt",
    "citycode": "PVZ",
    "city": "Painesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UDD",
    "name": "Bermuda Dunes Arpt",
    "citycode": "UDD",
    "city": "Palm Desert",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSP",
    "name": "Palm Springs Municipal",
    "citycode": "PSP",
    "city": "Palm Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PMD",
    "name": "La Palmdale Regional Arpt",
    "citycode": "PMD",
    "city": "Palmdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PAQ",
    "name": "Palmer Municipal",
    "citycode": "PAQ",
    "city": "Palmer",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PAO",
    "name": "Palo Alto Arpt",
    "citycode": "PAO",
    "city": "Palo Alto",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PAM",
    "name": "Tyndall Air Force Base",
    "citycode": "PFN",
    "city": "Panama City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PFN",
    "name": "Bay County Arpt",
    "citycode": "PFN",
    "city": "Panama City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ECP",
    "name": "Northwest Florida Beaches Intl",
    "citycode": "PFN",
    "city": "Panama City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WPO",
    "name": "North Fork Valley Arpt",
    "citycode": "WPO",
    "city": "Paonia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PGR",
    "name": "Paragould Municipal",
    "citycode": "PGR",
    "city": "Paragould",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PHT",
    "name": "Henry County Arpt",
    "citycode": "PHT",
    "city": "Paris",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PRX",
    "name": "Paris Cox Field Arpt",
    "citycode": "PRX",
    "city": "Paris",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PKD",
    "name": "Park Rapids Municipal Arpt",
    "citycode": "PKD",
    "city": "Park Rapids",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PKB",
    "name": "Wood County",
    "citycode": "PKB",
    "city": "Parkersburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JPD",
    "name": "Burbank Heliport",
    "citycode": "JPD",
    "city": "Pasadena",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PGL",
    "name": "Jackson Cnty",
    "citycode": "PGL",
    "city": "Pascagoula",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSC",
    "name": "Tri Cities Arpt",
    "citycode": "PSC",
    "city": "Pasco",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PRB",
    "name": "Paso Robles Cty",
    "citycode": "PRB",
    "city": "Paso Robles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KPH",
    "name": "Pauloff Arpt",
    "citycode": "KPH",
    "city": "Pauloff Harbor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PJB",
    "name": "Payson Arpt",
    "citycode": "PJB",
    "city": "Payson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PLR",
    "name": "Saint Clair County",
    "citycode": "PLR",
    "city": "Pell City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PLN",
    "name": "Emmet Cty Arpt",
    "citycode": "PLN",
    "city": "Pellston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PDT",
    "name": "Pendleton Municipal",
    "citycode": "PDT",
    "city": "Pendleton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NDP",
    "name": "Pensacola Ellyson Naval Air Station",
    "citycode": "PNS",
    "city": "Pensacola",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NPA",
    "name": "Pensacola Naval Air Station",
    "citycode": "PNS",
    "city": "Pensacola",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PNS",
    "name": "Pensacola Regional Municipal",
    "citycode": "PNS",
    "city": "Pensacola",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NUN",
    "name": "Saufley Field Naval Outlying Field",
    "citycode": "PNS",
    "city": "Pensacola",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PIA",
    "name": "Greater Peoria Arpt",
    "citycode": "PIA",
    "city": "Peoria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VYS",
    "name": "Illinois Valley Regional Arpt",
    "citycode": "VYS",
    "city": "Peru",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSG",
    "name": "Petersburg Municipal",
    "citycode": "PSG",
    "city": "Petersburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PTB",
    "name": "Petersburg Municipal Arpt",
    "citycode": "PTB",
    "city": "Petersburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FLE",
    "name": "Fort Lee AAF",
    "citycode": "PTB",
    "city": "Petersburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MUV",
    "name": "Mustin ALF",
    "citycode": "PHL",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZFV",
    "name": "Philadelphia Rail Station",
    "citycode": "PHL",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZHC",
    "name": "PHL PA NORTH RAILWAY STATION",
    "citycode": "PHL",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PHL",
    "name": "Philadelphia Intl Arpt",
    "citycode": "PHL",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PNE",
    "name": "N Philadelphia",
    "citycode": "PHL",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZWI",
    "name": "Wilmington Railway Station",
    "citycode": "PHL",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSQ",
    "name": "Essington Philadelphia Seaplane Base",
    "citycode": "PHL",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZTN",
    "name": "Trento Railway Station",
    "citycode": "PHL",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSB",
    "name": "Midstate Arpt",
    "citycode": "PSB",
    "city": "Philipsburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AZA",
    "name": "Williams Gateway Arpt",
    "citycode": "PHX",
    "city": "Phoenix",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LUF",
    "name": "Luke AFB",
    "citycode": "PHX",
    "city": "Phoenix",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PIR",
    "name": "Pierre Municipal",
    "citycode": "PIR",
    "city": "Pierre",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UGB",
    "name": "Ugashik Bay",
    "citycode": "PIP",
    "city": "Pilot Point",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PIP",
    "name": "Pilot Point Airport",
    "citycode": "PIP",
    "city": "Pilot Point",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PBF",
    "name": "Pine Bluff Arpt",
    "citycode": "PBF",
    "city": "Pine Bluff",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SOP",
    "name": "Pinehurst Arpt",
    "citycode": "SOP",
    "city": "Pinehurst",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PTS",
    "name": "Atkinson Municipal Arpt",
    "citycode": "PTS",
    "city": "Pittsburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CVA",
    "name": "Civic Arena Heliport",
    "citycode": "PIT",
    "city": "Pittsburgh",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AGC",
    "name": "Allegheny Cty Arpt",
    "citycode": "PIT",
    "city": "Pittsburgh",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSF",
    "name": "Pittsfield Municipal",
    "citycode": "PSF",
    "city": "Pittsfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PVF",
    "citycode": "PVF",
    "city": "Placerville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PVW",
    "name": "Hale County Arpt",
    "citycode": "PVW",
    "city": "Plainview",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PLB",
    "name": "Clinton County Arpt",
    "citycode": "PBG",
    "city": "Plattsburgh",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JBS",
    "name": "Hacienda Business Park Hlpt",
    "citycode": "JBS",
    "city": "Pleasanton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PLY",
    "name": "Plymouth Municipal Arpt",
    "citycode": "PLY",
    "city": "Plymouth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PYM",
    "name": "Plymouth Arpt",
    "citycode": "PYM",
    "city": "Plymouth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PIH",
    "name": "Pocatello Municipal Arpt",
    "citycode": "PIH",
    "city": "Pocatello",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KPB",
    "name": "Point Baker Arpt",
    "citycode": "KPB",
    "city": "Point Baker",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PIZ",
    "name": "Dew Station Arpt",
    "citycode": "PIZ",
    "city": "Point Lay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PLK",
    "name": "M Graham Clark Arpt",
    "citycode": "PLK",
    "city": "Point Lookout",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PXL",
    "name": "Polacca Arpt",
    "citycode": "PXL",
    "city": "Polacca",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "POQ",
    "name": "Polk Inlet Arpt",
    "citycode": "POQ",
    "city": "Polk Inlet",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PPM",
    "name": "Pompano Beach Arpt",
    "citycode": "PPM",
    "city": "Pompano Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PNC",
    "name": "Ponca City Municipal Arpt",
    "citycode": "PNC",
    "city": "Ponca City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSE",
    "name": "Mercedita Arpt",
    "citycode": "PSE",
    "city": "Ponce",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PTK",
    "name": "Oakland Pontiac Arpt",
    "citycode": "PTK",
    "city": "Pontiac",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "POF",
    "name": "Earl Fields Memorial",
    "citycode": "POF",
    "city": "Poplar Bluff",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PTD",
    "name": "Port Alexander Arpt",
    "citycode": "PTD",
    "city": "Port Alexander",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PTC",
    "name": "Port Alice Arpt",
    "citycode": "PTC",
    "city": "Port Alice",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLM",
    "name": "William Fairchild Intl Arpt",
    "citycode": "CLM",
    "city": "Port Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PTL",
    "name": "Port Armstrong Arpt",
    "citycode": "PTL",
    "city": "Port Armstrong",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PFD",
    "name": "Port Frederick Arpt",
    "citycode": "PFD",
    "city": "Port Frederick",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PGM",
    "name": "Port Graham Arpt",
    "citycode": "PGM",
    "city": "Port Graham",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NTD",
    "name": "Point Mugu",
    "citycode": "NTD",
    "city": "Port Hueneme",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PHN",
    "name": "St Clair County Intl Arpt",
    "citycode": "PHN",
    "city": "Port Huron",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PPV",
    "name": "Port Protection Arpt",
    "citycode": "PPV",
    "city": "Port Protection",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PWR",
    "name": "Port Walter Arpt",
    "citycode": "PWR",
    "city": "Port Walter",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PTV",
    "name": "Porterville Arpt",
    "citycode": "PTV",
    "city": "Porterville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PWM",
    "name": "Portland Intl Jetport",
    "citycode": "PWM",
    "city": "Portland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSM",
    "name": "Portsmouth Pease Intl Arpt",
    "citycode": "PSM",
    "city": "Portsmouth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PTW",
    "name": "Pottstown Limerick",
    "citycode": "PTW",
    "city": "Pottstown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "POU",
    "name": "Dutchess County",
    "citycode": "POU",
    "city": "Poughkeepsie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PCD",
    "name": "Prairie Du Chien Municipal Arpt",
    "citycode": "PCD",
    "city": "Prairie Du Chien",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PRC",
    "name": "Prescott Municipal",
    "citycode": "PRC",
    "city": "Prescott",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PQI",
    "name": "Northern Maine Regional",
    "citycode": "PQI",
    "city": "Presque Isle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PUC",
    "name": "Carbon Cty Municipal Arpt",
    "citycode": "PUC",
    "city": "Price",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PCT",
    "name": "Princeton Arpt",
    "citycode": "PCT",
    "city": "Princeton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HPV",
    "name": "Princeville Arpt",
    "citycode": "HPV",
    "city": "Princeville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PVD",
    "name": "T F Green St Arpt",
    "citycode": "PVD",
    "city": "Providence",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PVC",
    "name": "Provincetown Municipal",
    "citycode": "PVC",
    "city": "Provincetown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PVU",
    "name": "Provo Arpt",
    "citycode": "PVU",
    "city": "Provo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SCC",
    "name": "Prudhoe Bay Deadhorse Arpt",
    "citycode": "SCC",
    "city": "Prudhoe Bay Deadhorse",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TAD",
    "name": "Las Animas Arpt",
    "citycode": "PUB",
    "city": "Pueblo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PUB",
    "name": "Pueblo Arpt",
    "citycode": "PUB",
    "city": "Pueblo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PUW",
    "name": "Pullman Moscow Arpt",
    "citycode": "PUW",
    "city": "Pullman",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PGD",
    "name": "Charlotte County",
    "citycode": "PGD",
    "city": "Punta Gorda",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UKT",
    "name": "Upper Bucks Arpt",
    "citycode": "UKT",
    "city": "Quakertown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UIN",
    "name": "Baldwin Field",
    "citycode": "UIN",
    "city": "Quincy",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GNF",
    "name": "Gansner Field",
    "citycode": "GNF",
    "city": "Quincy",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RFG",
    "name": "Rooke Fieldarpt",
    "citycode": "RFG",
    "city": "REFUGIO",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RAC",
    "name": "Horlick Arpt",
    "citycode": "RAC",
    "city": "Racine",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RDU",
    "name": "Raleigh Durham Intl Arpt",
    "citycode": "RDU",
    "city": "Raleigh",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RGR",
    "name": "Ranger Municipal Arpt",
    "citycode": "RGR",
    "city": "Ranger",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RCA",
    "name": "Ellsworth Airforce Base",
    "citycode": "RAP",
    "city": "Rapid City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RAP",
    "name": "Rapid City Regional Arpt",
    "citycode": "RAP",
    "city": "Rapid City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RSP",
    "name": "Raspberry Strait Arpt",
    "citycode": "RSP",
    "city": "Raspberry Strait",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RTN",
    "name": "Crews Fld",
    "citycode": "RTN",
    "city": "Raton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RWL",
    "name": "Rawlins Municipal",
    "citycode": "RWL",
    "city": "Rawlins",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RDG",
    "name": "Reading Municipal",
    "citycode": "RDG",
    "city": "Reading",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RBL",
    "name": "Flight Service Station",
    "citycode": "RDD",
    "city": "Redding",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RDD",
    "name": "Redding Municipal Arpt",
    "citycode": "RDD",
    "city": "Redding",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RDM",
    "name": "Roberts Field",
    "citycode": "RDM",
    "city": "Redmond",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RHI",
    "name": "Oneida County",
    "citycode": "RHI",
    "city": "Rhinelander",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RIF",
    "name": "Reynolds Municipal Arpt",
    "citycode": "RIF",
    "city": "Richfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RLD",
    "name": "Richland Arpt",
    "citycode": "RLD",
    "city": "Richland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRD",
    "name": "Richmond Va Railway Station",
    "citycode": "RIC",
    "city": "Richmond",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RIL",
    "name": "Garfield Cty Arpt",
    "citycode": "RIL",
    "city": "Rifle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RAL",
    "name": "Riverside Municipal",
    "citycode": "RAL",
    "city": "Riverside",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RIW",
    "name": "Riverton Municipal",
    "citycode": "RIW",
    "city": "Riverton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ROA",
    "name": "Roanoke Regional Arpt",
    "citycode": "ROA",
    "city": "Roanoke",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RZZ",
    "name": "Halifax Cty Arpt",
    "citycode": "RZZ",
    "city": "Roanoke Rapids",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RCE",
    "name": "Roche Harbor Arpt",
    "citycode": "RCE",
    "city": "Roche Harbor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JRC",
    "name": "Rochester Charlton Building Heliport",
    "citycode": "RST",
    "city": "Rochester",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RST",
    "name": "Rochester Municipal",
    "citycode": "RST",
    "city": "Rochester",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RKH",
    "name": "Rock Hill York County Arpt",
    "citycode": "RKH",
    "city": "Rock Hill",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RKS",
    "name": "Rock Springs Municipal",
    "citycode": "RKS",
    "city": "Rock Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRF",
    "name": "Peoria Rockford Bus Terminal",
    "citycode": "RFD",
    "city": "Rockford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRK",
    "name": "Van Galder Bus Terminal",
    "citycode": "RFD",
    "city": "Rockford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RKD",
    "name": "Rockland Arpt",
    "citycode": "RKD",
    "city": "Rockland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RKP",
    "name": "Aransas County Arpt",
    "citycode": "RKP",
    "city": "Rockport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RKW",
    "name": "Rockwood Municipal Arpt",
    "citycode": "RKW",
    "city": "Rockwood",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RWI",
    "name": "Wilson Arpt",
    "citycode": "RWI",
    "city": "Rocky Mount",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ROG",
    "name": "Rogers Arpt",
    "citycode": "ROG",
    "city": "Rogers",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RLA",
    "name": "National Arpt",
    "citycode": "RLA",
    "city": "Rolla",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RMG",
    "name": "Richard B Russell Arpt",
    "citycode": "RMG",
    "city": "Rome",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RBG",
    "name": "Roseburg Municipal",
    "citycode": "RBG",
    "city": "Roseburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ROW",
    "name": "Industrial Aircenter",
    "citycode": "ROW",
    "city": "Roswell",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RWB",
    "name": "Rowan Bay Arpt",
    "citycode": "RWB",
    "city": "Rowan Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RUI",
    "name": "Ruidoso Municipal Arpt",
    "citycode": "RUI",
    "city": "Ruidoso",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RSH",
    "name": "Russian Seaplane Base",
    "citycode": "RSH",
    "city": "Russian Mission",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RSN",
    "name": "Ruston Regional Arpt",
    "citycode": "RSN",
    "city": "Ruston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RUT",
    "name": "Rutland Arpt",
    "citycode": "RUT",
    "city": "Rutland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SES",
    "name": "Selfieldarpt",
    "citycode": "SES",
    "city": "SELMA",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SEM",
    "name": "Craig Field",
    "citycode": "SES",
    "city": "SELMA",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SWW",
    "name": "SWEETWATER ARPT",
    "citycode": "SWW",
    "city": "SWEETWATER",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MHR",
    "name": "Mather Air Force Base",
    "citycode": "SAC",
    "city": "Sacramento",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SAC",
    "name": "Sacramento Executive Arpt",
    "citycode": "SAC",
    "city": "Sacramento",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SMF",
    "name": "Sacramento International",
    "citycode": "SAC",
    "city": "Sacramento",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCC",
    "name": "Mcclellan Airforce Base",
    "citycode": "SAC",
    "city": "Sacramento",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MBS",
    "name": "Saginaw Arpt",
    "citycode": "MBS",
    "city": "Saginaw",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JSK",
    "name": "Municipal Hpt",
    "citycode": "STC",
    "city": "Saint Cloud",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STC",
    "name": "Saint Cloud Municipal",
    "citycode": "STC",
    "city": "Saint Cloud",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SLE",
    "name": "McNary Field",
    "citycode": "SLE",
    "city": "Salem",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SLT",
    "name": "Salida Arpt",
    "citycode": "SLT",
    "city": "Salida",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SLN",
    "name": "Salina Municipal",
    "citycode": "SLN",
    "city": "Salina",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SNS",
    "name": "Salinas Arpt",
    "citycode": "SNS",
    "city": "Salinas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SBY",
    "name": "Wicomico Regional Arpt",
    "citycode": "SBY",
    "city": "Salisbury Ocean City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SLC",
    "name": "Salt Lake City Intl Arpt",
    "citycode": "SLC",
    "city": "Salt Lake City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SAS",
    "name": "Salton Arpt",
    "citycode": "SAS",
    "city": "Salton City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GOF",
    "name": "Goodfellow Air Force Base",
    "citycode": "SJT",
    "city": "San Angelo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SJT",
    "name": "Mathis Field",
    "citycode": "SJT",
    "city": "San Angelo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MDA",
    "name": "Martindale AAF",
    "citycode": "SAT",
    "city": "San Antonio",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SKF",
    "name": "Kelly Airforce Base",
    "citycode": "SAT",
    "city": "San Antonio",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SAT",
    "name": "San Antonio Intl",
    "citycode": "SAT",
    "city": "San Antonio",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RND",
    "name": "Randolph Airfoce Base",
    "citycode": "SAT",
    "city": "San Antonio",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SSF",
    "name": "Stinson Municipal Arpt",
    "citycode": "SAT",
    "city": "San Antonio",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SBD",
    "name": "San Bernardino Intl Arpt",
    "citycode": "SBT",
    "city": "San Bernardino",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SQL",
    "name": "San Carlos Arpt",
    "citycode": "SQL",
    "city": "San Carlos",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MYF",
    "name": "Montgomery Field",
    "citycode": "SAN",
    "city": "San Diego",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SEE",
    "name": "Gillespie Field",
    "citycode": "SAN",
    "city": "San Diego",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NKX",
    "name": "San Diego Miramar Naval Air Station",
    "citycode": "SAN",
    "city": "San Diego",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SDM",
    "name": "Brown Field Municipal",
    "citycode": "SAN",
    "city": "San Diego",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLD",
    "name": "Carlsbad Arpt",
    "citycode": "SAN",
    "city": "San Diego",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NZY",
    "name": "San Diego North Island Naval Air Station",
    "citycode": "SAN",
    "city": "San Diego",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SFR",
    "name": "San Fernando Airport",
    "citycode": "SFR",
    "city": "San Fernando",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JCC",
    "name": "China Basin Hlpt",
    "citycode": "SFO",
    "city": "San Francisco",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EMB",
    "name": "Embarcadero",
    "citycode": "SFO",
    "city": "San Francisco",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RHV",
    "name": "Reid Hillview Of Santa Clara County",
    "citycode": "SJC",
    "city": "San Jose",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZSM",
    "name": "Santa Clara Bus Service",
    "citycode": "SJC",
    "city": "San Jose",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZJO",
    "name": "San Jose Bus Service",
    "citycode": "SJC",
    "city": "San Jose",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SJU",
    "name": "Luiz Munoz Marin Intl",
    "citycode": "SJU",
    "city": "San Juan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SBP",
    "name": "San Luis Obispo County Arpt",
    "citycode": "CSL",
    "city": "San Luis Obispo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CSL",
    "name": "O Sullivan Army Air Field",
    "citycode": "CSL",
    "city": "San Luis Obispo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SYL",
    "name": "Roberts Aaf",
    "citycode": "SYL",
    "city": "San Miguel",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JSG",
    "name": "San Rafael Heliport",
    "citycode": "SRF",
    "city": "San Rafael",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SRF",
    "name": "Hamilton AAF",
    "citycode": "SRF",
    "city": "San Rafael",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SDP",
    "name": "Sand Point Arpt",
    "citycode": "SDP",
    "city": "Sand Point",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SKY",
    "name": "Griffing Sandusky Arpt",
    "citycode": "SKY",
    "city": "Sandusky",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SFB",
    "name": "Orlando Sanford Arpt",
    "citycode": "SFB",
    "city": "Sanford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SFM",
    "name": "Sanford Regional Arpt",
    "citycode": "SFM",
    "city": "Sanford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SNA",
    "name": "John Wayne Arpt",
    "citycode": "SNA",
    "city": "Santa Ana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JNP",
    "name": "Newport Beach Heliport",
    "citycode": "SNA",
    "city": "Santa Ana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SBA",
    "name": "Santa Barbara Arpt",
    "citycode": "SBA",
    "city": "Santa Barbara",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SZN",
    "name": "Santa Cruz Island",
    "citycode": "SBA",
    "city": "Santa Barbara",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SRU",
    "name": "Skypark Arpt",
    "citycode": "SRU",
    "city": "Santa Cruz",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SAF",
    "name": "Santa Fe Municipal",
    "citycode": "SAF",
    "city": "Santa Fe",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LPC",
    "name": "Lompoc Arpt",
    "citycode": "SMX",
    "city": "Santa Maria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SMX",
    "name": "Santa Maria Public Arpt",
    "citycode": "SMX",
    "city": "Santa Maria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SZP",
    "name": "Santa Paula Arpt",
    "citycode": "SZP",
    "city": "Santa Paula",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STS",
    "name": "Sonoma Cty Arpt",
    "citycode": "STS",
    "city": "Santa Rosa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SQA",
    "name": "Santa Ynez Arpt",
    "citycode": "SQA",
    "city": "Santa Ynez",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SLK",
    "name": "Adirondack Arpt",
    "citycode": "SLK",
    "city": "Saranac Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SRQ",
    "name": "Sarasota Bradenton Arpt",
    "citycode": "SRQ",
    "city": "Sarasota",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "INR",
    "name": "Kincheloe AFB",
    "citycode": "SSM",
    "city": "Sault Ste Marie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CIU",
    "name": "Chippewa Cnty Intl",
    "citycode": "SSM",
    "city": "Sault Ste Marie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SVN",
    "name": "Hunter AAF",
    "citycode": "SAV",
    "city": "Savannah",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SCH",
    "name": "Schenectady County Arpt",
    "citycode": "SCH",
    "city": "Schenectady",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFF",
    "name": "Scottsbluff Municipal",
    "citycode": "BFF",
    "city": "Scottsbluff",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SCF",
    "name": "Scottsdale Municipal Arpt",
    "citycode": "SCF",
    "city": "Scottsdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AVP",
    "name": "Wilkes Barre Scranton Intl Arpt",
    "citycode": "AVP",
    "city": "Scranton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SCR",
    "name": "Scranton Municipal Arpt",
    "citycode": "AVP",
    "city": "Scranton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WBW",
    "name": "Wilkes Barre Wyoming Valley Arpt",
    "citycode": "AVP",
    "city": "Scranton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SRC",
    "name": "Searcy Arpt",
    "citycode": "SRC",
    "city": "Searcy",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LKE",
    "name": "Lake Union Seaplane Base",
    "citycode": "SEA",
    "city": "Seattle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KEH",
    "name": "Kenmore Air Harbor",
    "citycode": "SEA",
    "city": "Seattle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFI",
    "name": "Seattle Boeing Field",
    "citycode": "SEA",
    "city": "Seattle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SEF",
    "name": "Air Terminal Arpt",
    "citycode": "SEF",
    "city": "Sebring",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DMO",
    "name": "Sedalia Memorial Arpt",
    "citycode": "DMO",
    "city": "Sedalia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SDX",
    "name": "Sedona Arpt",
    "citycode": "SDX",
    "city": "Sedona",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WLK",
    "name": "Selawik Arpt",
    "citycode": "WLK",
    "city": "Selawik",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SOV",
    "name": "Seldovia Arpt",
    "citycode": "SOV",
    "city": "Seldovia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SWD",
    "name": "Seward Airport",
    "citycode": "SWD",
    "city": "Seward",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SKK",
    "name": "Shaktoolik Arpt",
    "citycode": "SKK",
    "city": "Shaktoolik",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SNL",
    "name": "Shawnee Airport",
    "citycode": "SNL",
    "city": "Shawnee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SBM",
    "name": "Sheboygan Arpt",
    "citycode": "SBM",
    "city": "Sheboygan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SHR",
    "name": "Sheridan Cty Arpt",
    "citycode": "SHR",
    "city": "Sheridan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PNX",
    "name": "Grayson County Arpt",
    "citycode": "PNX",
    "city": "Sherman",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SOW",
    "name": "Show Low Arpt",
    "citycode": "SOW",
    "city": "Show Low",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DTN",
    "name": "Shreveport Downtown Arpt",
    "citycode": "SHV",
    "city": "Shreveport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BAD",
    "name": "Barksdale Air Force Base",
    "citycode": "SHV",
    "city": "Shreveport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SHV",
    "name": "Shreveport Regional Arpt",
    "citycode": "SHV",
    "city": "Shreveport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SNY",
    "name": "Sidney Municipal",
    "citycode": "SNY",
    "city": "Sidney",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SDY",
    "name": "Sindey Richland Municipal Arpt",
    "citycode": "SDY",
    "city": "Sidney",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SLG",
    "name": "Fayetteville Municipal Apt",
    "citycode": "SLG",
    "city": "Siloam Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SVC",
    "name": "Grant County Airport",
    "citycode": "SVC",
    "city": "Silver City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SUX",
    "name": "Sioux Gateway Arpt",
    "citycode": "SUX",
    "city": "Sioux City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FSD",
    "name": "Regional Joe Foss Field",
    "citycode": "FSD",
    "city": "Sioux Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SKJ",
    "name": "Sitkinak Arpt",
    "citycode": "SKJ",
    "city": "Sitinak Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SIT",
    "name": "Sitka Airport",
    "citycode": "SIT",
    "city": "Sitka",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SGY",
    "name": "Skagway Municipal Arpt",
    "citycode": "SGY",
    "city": "Skagway",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SFZ",
    "name": "Smithfield Arpt",
    "citycode": "SFZ",
    "city": "Smithfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MQY",
    "name": "Smyrna Arpt",
    "citycode": "MQY",
    "city": "Smyrna",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ONM",
    "name": "Socorro Municipal Arpt",
    "citycode": "ONM",
    "city": "Socorro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SOL",
    "name": "Solomon Arpt",
    "citycode": "SOL",
    "city": "Solomon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SME",
    "name": "Pulaski County Arpt",
    "citycode": "SME",
    "city": "Somerset",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SBN",
    "name": "Michiana Regional Arpt",
    "citycode": "SBN",
    "city": "South Bend",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SVW",
    "name": "Sparrevohn Af",
    "citycode": "SVW",
    "city": "Sparrevohn",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SAR",
    "name": "Sparta Community Airport",
    "citycode": "SAR",
    "city": "Sparta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CMY",
    "name": "Camp Mccoy Aaf",
    "citycode": "CMY",
    "city": "Sparta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPF",
    "name": "Black Hills Clyde Ice Field",
    "citycode": "SPF",
    "city": "Spearfish",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPW",
    "name": "Spencer Municipal",
    "citycode": "SPW",
    "city": "Spencer",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SKA",
    "name": "Fairchild Airforce Base",
    "citycode": "GEG",
    "city": "Spokane",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SFF",
    "name": "Felts Field",
    "citycode": "GEG",
    "city": "Spokane",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GEG",
    "name": "Spokane Intl Arpt",
    "citycode": "GEG",
    "city": "Spokane",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPZ",
    "name": "Springdale Municipal Arpt",
    "citycode": "SPZ",
    "city": "Springdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPI",
    "name": "Capital Airport",
    "citycode": "SPI",
    "city": "Springfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZSF",
    "name": "Pringfield Ma Rr",
    "citycode": "SFY",
    "city": "Springfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CEF",
    "name": "Westover Metro",
    "citycode": "SFY",
    "city": "Springfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SGF",
    "name": "Springfield Branson Regional Arpt",
    "citycode": "SGF",
    "city": "Springfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SGH",
    "name": "SPRINGFIELD AIRPORT",
    "citycode": "SGH",
    "city": "Springfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UST",
    "name": "St Augustine Arpt",
    "citycode": "UST",
    "city": "St Augustine",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JCD",
    "name": "Downtown Hp",
    "citycode": "STX",
    "city": "St Croix",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STX",
    "name": "Alexander Hamilton Arpt",
    "citycode": "STX",
    "city": "St Croix",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SSB",
    "name": "Soesterberg Seeplane Base",
    "citycode": "STX",
    "city": "St Croix",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SGU",
    "name": "Saint George Municipal Arpt",
    "citycode": "SGU",
    "city": "St George",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STG",
    "name": "St George Island Arpt",
    "citycode": "STG",
    "city": "St George Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STJ",
    "name": "Rosecrans Memorial Arpt",
    "citycode": "STJ",
    "city": "St Joseph",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZSV",
    "name": "Saint Louis Railway Station",
    "citycode": "STL",
    "city": "St Louis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SUS",
    "name": "Spirit Of St Louis Arpt",
    "citycode": "STL",
    "city": "St Louis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CPS",
    "name": "East St Louis",
    "citycode": "STL",
    "city": "St Louis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STP",
    "name": "Downtown St Paul Arpt",
    "citycode": "STP",
    "city": "St Paul",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPG",
    "name": "Whitted Arpt",
    "citycode": "SPG",
    "city": "St Petersburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SSI",
    "name": "McKinnon Arpt",
    "citycode": "SSI",
    "city": "St Simons Is",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STT",
    "name": "Cyril E King Arpt",
    "citycode": "STT",
    "city": "St Thomas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPB",
    "name": "Seaplane Base",
    "citycode": "STT",
    "city": "St Thomas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SCE",
    "name": "University Park Arpt",
    "citycode": "SCE",
    "city": "State College",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SVH",
    "name": "Statesville Municipal Arpt",
    "citycode": "SVH",
    "city": "Statesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SHD",
    "name": "Shenandoah Valley Arpt",
    "citycode": "SHD",
    "city": "Staunton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WSB",
    "name": "Seaplane",
    "citycode": "WSB",
    "city": "Steamboat Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SBS",
    "name": "Steamboat Arpt",
    "citycode": "SBS",
    "city": "Steamboat Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SEP",
    "name": "Clark Field",
    "citycode": "SEP",
    "city": "Stephenville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SQI",
    "name": "Whiteside Cty Municipal",
    "citycode": "SQI",
    "city": "Sterling",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STE",
    "name": "Stevens Point Municipal",
    "citycode": "STE",
    "city": "Stevens Point",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SWO",
    "name": "Searcy Fld",
    "citycode": "SWO",
    "city": "Stillwater",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SCK",
    "name": "Stockton Metro Arpt",
    "citycode": "SCK",
    "city": "Stockton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SUA",
    "name": "Witham Field",
    "citycode": "SUA",
    "city": "Stuart",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SUE",
    "name": "Door Country Arpt",
    "citycode": "SUE",
    "city": "Sturgeon Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IRS",
    "name": "Kirsch Municipal",
    "citycode": "IRS",
    "city": "Sturgis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SGT",
    "name": "Stuttgart Municipal",
    "citycode": "SGT",
    "city": "Stuttgart",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SGR",
    "name": "Hull Field Arpt",
    "citycode": "SGR",
    "city": "Sugar Land",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UMM",
    "name": "Summit Arpt",
    "citycode": "UMM",
    "city": "Summit",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SUM",
    "name": "Sumter Municipal Arpt",
    "citycode": "SUM",
    "city": "Sumter",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SSC",
    "name": "Shaw Air Force Base",
    "citycode": "SUM",
    "city": "Sumter",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SUN",
    "name": "Friedman Memorial",
    "citycode": "SUN",
    "city": "Sun Valley",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SUW",
    "name": "Richard I Bong Arpt",
    "citycode": "SUW",
    "city": "Superior",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SYR",
    "name": "Hancock Intl",
    "citycode": "SYR",
    "city": "Syracuse",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TIW",
    "name": "Tacoma Industrial Arpt",
    "citycode": "TIW",
    "city": "Tacoma",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TCM",
    "name": "McChord AFB",
    "citycode": "TIW",
    "city": "Tacoma",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GRF",
    "name": "Gray Army Air Field",
    "citycode": "TIW",
    "city": "Tacoma",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TKL",
    "name": "Taku Spb",
    "citycode": "TKL",
    "city": "Taku Lodge",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TKA",
    "name": "Talkeetna Arpt",
    "citycode": "TKA",
    "city": "Talkeetna",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ASN",
    "name": "Talladega Arpt",
    "citycode": "ASN",
    "city": "Talladega",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TLH",
    "name": "Tallahassee Municipal",
    "citycode": "TLH",
    "city": "Tallahassee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KYO",
    "name": "Topp Of Tampa",
    "citycode": "TPA",
    "city": "Tampa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TPF",
    "name": "Peter O Knight Arpt",
    "citycode": "TPA",
    "city": "Tampa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PIE",
    "name": "St Petersburg Clearwater Arpt",
    "citycode": "TPA",
    "city": "Tampa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCF",
    "name": "Mac Dill Airforce Base",
    "citycode": "TPA",
    "city": "Tampa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TPO",
    "name": "Tanalian Point Arpt",
    "citycode": "TPO",
    "city": "Tanalian Point",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TAL",
    "name": "Ralph Calhoun Arpt",
    "citycode": "TAL",
    "city": "Tanana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TSM",
    "name": "Taos Airport",
    "citycode": "TSM",
    "city": "Taos",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TEK",
    "name": "Tatitlek Arpt",
    "citycode": "TEK",
    "city": "Tatitlek",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TWE",
    "name": "Taylor Arpt",
    "citycode": "TWE",
    "city": "Taylor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TYZ",
    "name": "Taylor Airport",
    "citycode": "TYZ",
    "city": "Taylor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TLF",
    "name": "Telida Arpt",
    "citycode": "TLF",
    "city": "Telida",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TEX",
    "name": "Telluride Municipal Arpt",
    "citycode": "TEX",
    "city": "Telluride",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TPL",
    "name": "Temple Arpt",
    "citycode": "TPL",
    "city": "Temple",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HUF",
    "name": "Hulman Field",
    "citycode": "HUF",
    "city": "Terre Haute",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TRL",
    "name": "Terrell Field Arpt",
    "citycode": "TRL",
    "city": "Terrell",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TEB",
    "name": "Teterboro Arpt",
    "citycode": "TEB",
    "city": "Teterboro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TEH",
    "name": "Tetlin Arpt",
    "citycode": "TEH",
    "city": "Tetlin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TXK",
    "name": "Texarkana Municipal",
    "citycode": "TXK",
    "city": "Texarkana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DLS",
    "name": "The Dalles Municipal Arpt",
    "citycode": "DLS",
    "city": "The Dalles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TRM",
    "name": "Thermal Airport",
    "citycode": "TRM",
    "city": "Thermal",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "THP",
    "name": "Hot Springs",
    "citycode": "THP",
    "city": "Thermopolis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TVF",
    "name": "Thief River Falls Numicipal",
    "citycode": "TVF",
    "city": "Thief River Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TMA",
    "name": "Henry Tift Myers Arpt",
    "citycode": "TMA",
    "city": "Tifton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TIX",
    "name": "Space Center Executive Arpt",
    "citycode": "TIX",
    "city": "Titusville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TOG",
    "name": "Togiak Village Arpt",
    "citycode": "TOG",
    "city": "Togiak",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TKJ",
    "name": "Tok Arpt",
    "citycode": "TKJ",
    "city": "Tok Ak",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TKI",
    "name": "Tokeen Arpt",
    "citycode": "TKI",
    "city": "Tokeen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TDZ",
    "name": "Toledo Metcalf Field",
    "citycode": "TOL",
    "city": "Toledo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TOL",
    "name": "Toledo Express Arpt",
    "citycode": "TOL",
    "city": "Toledo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TPH",
    "name": "Tonopah Arpt",
    "citycode": "TPH",
    "city": "Tonopah",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "XSD",
    "name": "Test Range",
    "citycode": "TPH",
    "city": "Tonopah",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FOE",
    "name": "Forbes Field",
    "citycode": "TOP",
    "city": "Topeka",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TOP",
    "name": "Phillip Billard Arpt",
    "citycode": "TOP",
    "city": "Topeka",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TOR",
    "name": "Torrington Minicipal Arpt",
    "citycode": "TOR",
    "city": "Torrington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TVC",
    "name": "Cherry Capital Arpt",
    "citycode": "TVC",
    "city": "Traverse City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TTN",
    "name": "Trenton Mercer Arpt",
    "citycode": "TTN",
    "city": "Trenton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TRH",
    "name": "Trona Arpt",
    "citycode": "TRH",
    "city": "Trona",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TTD",
    "name": "Troutdale Arpt",
    "citycode": "TTD",
    "city": "Troutdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TOI",
    "name": "Troy Municipal",
    "citycode": "TOI",
    "city": "Troy",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TKF",
    "name": "Truckee Arpt",
    "citycode": "TKF",
    "city": "Truckee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TBC",
    "name": "Tuba City Arpt",
    "citycode": "TBC",
    "city": "Tuba City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TUS",
    "name": "Tucson Intl Arpt",
    "citycode": "TUS",
    "city": "Tucson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DMA",
    "name": "Davis Monthan AFB",
    "citycode": "TUS",
    "city": "Tucson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AVW",
    "name": "Avra Valley",
    "citycode": "TUS",
    "city": "Tucson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TLR",
    "name": "Mefford Field",
    "citycode": "TLR",
    "city": "Tulare",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RVS",
    "name": "Richard Lloyd Jones Jr Riverside Arpt",
    "citycode": "TUL",
    "city": "Tulsa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TUL",
    "name": "Tulsa Intl",
    "citycode": "TUL",
    "city": "Tulsa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UTM",
    "name": "Tunica Municipal Arpt",
    "citycode": "UTM",
    "city": "Tunica",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OLV",
    "name": "Olive Branch Arpt",
    "citycode": "TUP",
    "city": "Tupelo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TUP",
    "name": "C D Lemons Municipal Arpt",
    "citycode": "TUP",
    "city": "Tupelo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TCL",
    "name": "Van De Graff Arpt",
    "citycode": "TCL",
    "city": "Tuscaloosa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TGE",
    "name": "Sharpe Field",
    "citycode": "TGE",
    "city": "Tuskegee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TWF",
    "name": "Twin Falls City County Arpt",
    "citycode": "TWF",
    "city": "Twin Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TWA",
    "name": "Twin Hills Arpt",
    "citycode": "TWA",
    "city": "Twin Hills",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TYR",
    "name": "Pounds Field",
    "citycode": "TYR",
    "city": "Tyler",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TYE",
    "name": "Tyonek Arpt",
    "citycode": "TYE",
    "city": "Tyonek",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JUP",
    "name": "Cable Heliport",
    "citycode": "CCB",
    "city": "UPLAND",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UKI",
    "name": "Ukiah Arpt",
    "citycode": "UKI",
    "city": "Ukiah",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UMT",
    "name": "Umiat Arpt",
    "citycode": "UMT",
    "city": "Umiat",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UNS",
    "name": "Umnak Island Arpt",
    "citycode": "UMB",
    "city": "Umnak Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UMB",
    "name": "Umnak Arpt",
    "citycode": "UMB",
    "city": "Umnak Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UNK",
    "name": "Unalakleet Arpt",
    "citycode": "UNK",
    "city": "Unalakleet",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UOX",
    "name": "University Oxford",
    "citycode": "UOX",
    "city": "University Oxford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UCA",
    "name": "Oneida County Arpt",
    "citycode": "UCA",
    "city": "Utica",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VDZ",
    "name": "Valdez Municipal Arpt",
    "citycode": "VDZ",
    "city": "Valdez",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VAD",
    "name": "Moody AFB",
    "citycode": "VLD",
    "city": "Valdosta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VLD",
    "name": "Valdosta Regional",
    "citycode": "VLD",
    "city": "Valdosta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VLE",
    "name": "J T Robidoux",
    "citycode": "VLE",
    "city": "Valle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VLO",
    "name": "Stolport Arpt",
    "citycode": "VLO",
    "city": "Vallejo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VPS",
    "name": "Ft Walton Beach Arpt",
    "citycode": "VPS",
    "city": "Valparaiso",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EGI",
    "name": "Duke Field",
    "citycode": "VPS",
    "city": "Valparaiso",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VPZ",
    "name": "Porter County",
    "citycode": "VPZ",
    "city": "Valparaiso",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VHN",
    "name": "Culberson Cty Arpt",
    "citycode": "VHN",
    "city": "Van Horn",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VNC",
    "name": "Venice Municipal Airport",
    "citycode": "VNC",
    "city": "Venice",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VEL",
    "name": "Vernal Municipal",
    "citycode": "VEL",
    "city": "Vernal",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VRB",
    "name": "Vero Beach Municipal Arpt",
    "citycode": "VRB",
    "city": "Vero Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VCT",
    "name": "Victoria Regional Arpt",
    "citycode": "VCT",
    "city": "Victoria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VCV",
    "name": "George AFB",
    "citycode": "VCV",
    "city": "Victorville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VDI",
    "name": "Vidalia Municipal Arpt",
    "citycode": "VDI",
    "city": "Vidalia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VQS",
    "name": "Vieques Arpt",
    "citycode": "VQS",
    "city": "Vieques",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OEA",
    "name": "Oneal Arpt",
    "citycode": "OEA",
    "city": "Vincennes",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VIS",
    "name": "Visalia Municipal",
    "citycode": "VIS",
    "city": "Visalia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EAN",
    "name": "PHIFER FIELD ARPT",
    "citycode": "EAN",
    "city": "WHEATLAND",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WLW",
    "name": "GLENN COUNTY ARPT",
    "citycode": "WLW",
    "city": "WILLOWS",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ACT",
    "name": "Madison Cooper Arpt",
    "citycode": "ACT",
    "city": "Waco",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CNW",
    "name": "James Connall Arpt",
    "citycode": "ACT",
    "city": "Waco",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AIN",
    "name": "Wainwright Municipal Arpt",
    "citycode": "AIN",
    "city": "Wainwright",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ALW",
    "name": "Walla Walla City County",
    "citycode": "ALW",
    "city": "Walla Walla",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ARG",
    "name": "Walnut Ridge Arpt",
    "citycode": "ARG",
    "city": "Walnut Ridge",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RBW",
    "name": "Walterboro Municipal Arpt",
    "citycode": "RBW",
    "city": "Walterboro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AXV",
    "name": "Neil Armstrong Arpt",
    "citycode": "AXV",
    "city": "Wapakoneta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BOF",
    "name": "Bolling Airforce Base",
    "citycode": "WAS",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZBP",
    "name": "Baltimore Railway Station",
    "citycode": "WAS",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MTN",
    "name": "Martin State Arpt",
    "citycode": "WAS",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRZ",
    "name": "New Carrollton Railway Station",
    "citycode": "WAS",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GBO",
    "name": "Baltimore Greenbelt Arpt",
    "citycode": "WAS",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZWU",
    "name": "Union Railway Station",
    "citycode": "WAS",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WSG",
    "name": "WASHINGTON COUNTY ARPT",
    "citycode": "WSG",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WWA",
    "name": "Wasilla Arpt",
    "citycode": "WWA",
    "city": "Wasilla",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KWF",
    "name": "Waterfall Spb",
    "citycode": "KWF",
    "city": "Waterfall",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ALO",
    "name": "Livingston Betsworth Fld",
    "citycode": "ALO",
    "city": "Waterloo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ART",
    "name": "Watertown Arpt",
    "citycode": "ART",
    "city": "Watertown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ATY",
    "name": "Watertown Municipal",
    "citycode": "ATY",
    "city": "Watertown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WVL",
    "name": "Robert La Fleur Arpt",
    "citycode": "WVL",
    "city": "Waterville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WVI",
    "name": "Watsonville Municipal Arpt",
    "citycode": "WVI",
    "city": "Watsonville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UGN",
    "name": "Memorial Arpt",
    "citycode": "UGN",
    "city": "Waukegan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CWA",
    "name": "Central Wisconsin Arpt",
    "citycode": "AUW",
    "city": "Wausau",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AUW",
    "name": "Wausau Municipal Arpt",
    "citycode": "AUW",
    "city": "Wausau",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WEA",
    "name": "Parker County Airport",
    "citycode": "WEA",
    "city": "Weatherford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ELZ",
    "name": "Wellsville Municipal Arpt",
    "citycode": "ELZ",
    "city": "Wellsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EAT",
    "name": "Pangborn Memorial Fld",
    "citycode": "EAT",
    "city": "Wenatchee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ENV",
    "name": "Wendover Arpt",
    "citycode": "ENV",
    "city": "Wendover",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ETB",
    "name": "West Bend Arpt",
    "citycode": "ETB",
    "city": "West Bend",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "XPU",
    "name": "West Kuparuk Arpt",
    "citycode": "XPU",
    "city": "West Kuparuk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AWM",
    "name": "West Memphis Municipal Arpt",
    "citycode": "AWM",
    "city": "West Memphis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PBI",
    "name": "Palm Beach Intl Arpt",
    "citycode": "PBI",
    "city": "West Palm Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LNA",
    "name": "Palm Beach County Arpt",
    "citycode": "PBI",
    "city": "West Palm Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WYS",
    "name": "West Yellowstone Arpt",
    "citycode": "WYS",
    "city": "West Yellowstone",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WST",
    "name": "Westerly Municipal",
    "citycode": "WST",
    "city": "Westerly",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FOK",
    "name": "Suffolk County Arpt",
    "citycode": "FOK",
    "city": "Westhampton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WWP",
    "name": "Whale Pass Arpt",
    "citycode": "WWP",
    "city": "Whale Pass",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HPN",
    "name": "Westchester County Arpt",
    "citycode": "HPN",
    "city": "White Plains",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HIE",
    "name": "Mt washington Regional Arpt",
    "citycode": "HIE",
    "city": "Whitefield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WTR",
    "name": "Whiteriver Arpt",
    "citycode": "WTR",
    "city": "Whiteriver",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CEA",
    "name": "Cessna Aircraft Field",
    "citycode": "ICT",
    "city": "Wichita",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BEC",
    "name": "Beech Arprt",
    "citycode": "ICT",
    "city": "Wichita",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ICT",
    "name": "Mid Continent Arpt",
    "citycode": "ICT",
    "city": "Wichita",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IAB",
    "name": "Mcconnell Airforce Base",
    "citycode": "ICT",
    "city": "Wichita",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPS",
    "name": "Wichita Falls Municipal Arpt",
    "citycode": "SPS",
    "city": "Wichita Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KIP",
    "name": "Kickapoo Downtown Airpark",
    "citycode": "SPS",
    "city": "Wichita Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EWD",
    "name": "Wildman Lake Arpt",
    "citycode": "EWD",
    "city": "Wildman Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IPT",
    "name": "Williamsport Lycoming Municipal",
    "citycode": "IPT",
    "city": "Williamsport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ISN",
    "name": "Sloulin Field Intl Arpt",
    "citycode": "ISN",
    "city": "Williston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WOW",
    "name": "Willow Arpt",
    "citycode": "WOW",
    "city": "Willow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ILG",
    "name": "Greater Wilmington New Castle",
    "citycode": "ILG",
    "city": "Wilmington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ILM",
    "name": "New Hanover Cty Arpt",
    "citycode": "ILM",
    "city": "Wilmington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WGO",
    "name": "Winchester Arpt",
    "citycode": "WGO",
    "city": "Winchester",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WLD",
    "name": "Arkansas City Arpt",
    "citycode": "WLD",
    "city": "Winfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WMC",
    "name": "Winnemucca Municipal Arpt",
    "citycode": "WMC",
    "city": "Winnemucca",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "INW",
    "name": "Winslow Municipal",
    "citycode": "INW",
    "city": "Winslow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "INT",
    "name": "Smith Reynolds Arpt",
    "citycode": "INT",
    "city": "Winston-Salem",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GIF",
    "name": "Gilbert Fld",
    "citycode": "GIF",
    "city": "Winter Haven",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ISS",
    "name": "Wiscasset Arpt",
    "citycode": "ISS",
    "city": "Wiscasset",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ISW",
    "name": "Alexander Field",
    "citycode": "ISW",
    "city": "Wisconsin Rapids",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WSM",
    "name": "Wiseman Arpt",
    "citycode": "WSM",
    "city": "Wiseman",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WOD",
    "name": "Wood River Arpt",
    "citycode": "WOD",
    "city": "Wood River",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WWR",
    "name": "West Woodward Arpt",
    "citycode": "WWR",
    "city": "Woodward",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ORH",
    "name": "Worcester Arpt",
    "citycode": "ORH",
    "city": "Worcester",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WRL",
    "name": "Worland Municipal",
    "citycode": "WRL",
    "city": "Worland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OTG",
    "name": "Worthington Arpt",
    "citycode": "OTG",
    "city": "Worthington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WRG",
    "name": "Wrangell Seaplane Base",
    "citycode": "WRG",
    "city": "Wrangell",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "YKM",
    "name": "Yakima Terminal Arpt",
    "citycode": "YKM",
    "city": "Yakima",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FCT",
    "name": "Firing Center AAF",
    "citycode": "YKM",
    "city": "Yakima",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "YAK",
    "name": "Yakutat Arpt",
    "citycode": "YAK",
    "city": "Yakutat",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "YKN",
    "name": "Chan Gurney Municipal",
    "citycode": "YKN",
    "city": "Yankton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WYB",
    "name": "Sea Base",
    "citycode": "WYB",
    "city": "Yes Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "THV",
    "name": "York Arpt",
    "citycode": "THV",
    "city": "York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "YNG",
    "name": "Youngstown Municipal",
    "citycode": "YNG",
    "city": "Youngstown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LGF",
    "name": "Laguna AAF",
    "citycode": "YUM",
    "city": "Yuma",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "YUM",
    "name": "Yuma Intl",
    "citycode": "YUM",
    "city": "Yuma",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZZV",
    "name": "Zanesville Arpt",
    "citycode": "ZZV",
    "city": "Zanesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ABI",
    "name": "Abilene Municipal Arpt",
    "citycode": "ABI",
    "city": "Abilene",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JVI",
    "name": "Central Jersey Regional Airport",
    "citycode": "JVI",
    "city": "Manville, New Jersey, United States",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ATL",
    "name": "Hartsfield Jackson Intl Arpt",
    "citycode": "ATL",
    "city": "Atlanta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AUS",
    "name": "Bergstrom Intl Arpt",
    "citycode": "AUS",
    "city": "Austin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BOS",
    "name": "Logan Intl Arpt",
    "citycode": "BOS",
    "city": "Boston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BUF",
    "name": "Greater Buffalo Intl Arpt",
    "citycode": "BUF",
    "city": "Buffalo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BWI",
    "name": "Baltimore Washington Intl Arpt",
    "citycode": "BWI",
    "city": "Baltimore",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CAE",
    "name": "Columbia Metro Arpt",
    "citycode": "CAE",
    "city": "Columbia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLT",
    "name": "Charlotte Douglas Intl Arpt",
    "citycode": "CLT",
    "city": "Charlotte",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CVG",
    "name": "Cincinnati No Kentucky Intl Arpt",
    "citycode": "CVG",
    "city": "Cincinnati",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DCA",
    "name": "Ronald Reagan National Arpt",
    "citycode": "WAS",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DEN",
    "name": "Denver Intl Arpt",
    "citycode": "DEN",
    "city": "Denver",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DFW",
    "name": "Dallas Ft Worth Intl",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DTW",
    "name": "Detroit Metro Wayne Cnty Arpt",
    "citycode": "DTT",
    "city": "Detroit",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EWR",
    "name": "Newark Liberty Intl Arpt",
    "citycode": "EWR",
    "city": "Newark",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FLL",
    "name": "Ft Lauderdale Hollywood Intl Arpt",
    "citycode": "FLL",
    "city": "Ft Lauderdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HNL",
    "name": "Honolulu Intl",
    "citycode": "HNL",
    "city": "Honolulu",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HOU",
    "name": "Houston Hobby Arpt",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IAD",
    "name": "Washington Dulles Intl",
    "citycode": "WAS",
    "city": "Washington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IAH",
    "name": "George Bush Intercontinental",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HVS",
    "name": "Hartsville Regional Airport",
    "citycode": "HVS",
    "city": "Hartsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JFK",
    "name": "John F Kennedy Intl",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAS",
    "name": "McCarran Intl",
    "citycode": "LAS",
    "city": "Las Vegas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LAX",
    "name": "Los Angeles Intl Arpt",
    "citycode": "LAX",
    "city": "Los Angeles",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LGA",
    "name": "La Guardia",
    "citycode": "NYC",
    "city": "New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCI",
    "name": "Kansas City Intl",
    "citycode": "MKC",
    "city": "Kansas City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCO",
    "name": "Orlando Intl Arpt",
    "citycode": "ORL",
    "city": "Orlando",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CDN",
    "name": "Woodward Field",
    "citycode": "CDN",
    "city": "Camden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MEM",
    "name": "Memphis Intl",
    "citycode": "MEM",
    "city": "Memphis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MIA",
    "name": "Miami Intl",
    "citycode": "MIA",
    "city": "Miami",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MKE",
    "name": "General Mitchell Intl Arpt",
    "citycode": "MKE",
    "city": "Milwaukee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MSP",
    "name": "Minneapolis St Paul Intl",
    "citycode": "MSP",
    "city": "Minneapolis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MSY",
    "name": "Louis Armstrong Intl Arpt",
    "citycode": "MSY",
    "city": "New Orleans",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OMA",
    "name": "Eppley Airfield",
    "citycode": "OMA",
    "city": "Omaha",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ORD",
    "name": "OHare Intl Arpt",
    "citycode": "CHI",
    "city": "Chicago",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PDX",
    "name": "Portland Intl Arpt",
    "citycode": "PDX",
    "city": "Portland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PHX",
    "name": "Sky Harbor Intl Arpt",
    "citycode": "PHX",
    "city": "Phoenix",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PIT",
    "name": "Pittsburgh Intl Arpt",
    "citycode": "PIT",
    "city": "Pittsburgh",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RIC",
    "name": "Richmond Intl Arpt",
    "citycode": "RIC",
    "city": "Richmond",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RNO",
    "name": "Reno Tahoe Intl Arpt",
    "citycode": "RNO",
    "city": "Reno",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ROC",
    "name": "Monroe Cty Arpt New York",
    "citycode": "ROC",
    "city": "Rochester",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LNP",
    "name": "Lonesome Pine Airport",
    "citycode": "LNP",
    "city": "Wise",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SAN",
    "name": "San Diego International Arpt",
    "citycode": "SAN",
    "city": "San Diego",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SAV",
    "name": "Savannah Intl Arpt",
    "citycode": "SAV",
    "city": "Savannah",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SEA",
    "name": "Seattle Tacoma Intl Arpt",
    "citycode": "SEA",
    "city": "Seattle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SFO",
    "name": "San Francisco Intl Arpt",
    "citycode": "SFO",
    "city": "San Francisco",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RBK",
    "name": "French Valley Airport (FAA: F70)",
    "citycode": "RBK",
    "city": "Murrieta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SJC",
    "name": "San Jose Intl Arpt",
    "citycode": "SJC",
    "city": "San Jose",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "STL",
    "name": "Lambert St Louis Intl",
    "citycode": "STL",
    "city": "St Louis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TPA",
    "name": "Tampa Intl",
    "citycode": "TPA",
    "city": "Tampa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BTN",
    "name": "Marlboro County Jetport",
    "citycode": "BTN",
    "city": "Bennettsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HLG",
    "name": "Ohio County",
    "citycode": "HLG",
    "city": "Wheeling",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AHH",
    "name": "Municipal",
    "citycode": "AHH",
    "city": "Amery",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MAW",
    "name": "Malden Regional Airport",
    "citycode": "MAW",
    "city": "Malden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FFT",
    "name": "Capital City",
    "citycode": "FFT",
    "city": "Frankfor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SER",
    "name": "Freeman Municipal",
    "citycode": "SER",
    "city": "Seymour",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LWV",
    "name": "Vincennes Intl",
    "citycode": "LWV",
    "city": "Lawrenceville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FME",
    "name": "Tipton",
    "citycode": "FME",
    "city": "Odenton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CGS",
    "name": "College Park",
    "citycode": "CGS",
    "city": "College Park",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HTH",
    "name": "Hawthorne Industrial",
    "citycode": "HTH",
    "city": "Hawthorne",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KNB",
    "name": "Kanab Municipal",
    "citycode": "KNB",
    "city": "Kanab",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DVT",
    "name": "Deer Valley",
    "citycode": "DVT",
    "city": "Phoenix",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CGE",
    "name": "Cambridge Airport",
    "citycode": "CGE",
    "city": "Cambridge",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JDA",
    "name": "Grant County Regional",
    "citycode": "JDA",
    "city": "John Day",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AHM",
    "name": "Ashland Municipal Airport (FAA: S03)",
    "citycode": "AHM",
    "city": "Ashland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CTX",
    "name": "Cortland County Airport (Chase Field, FAA: N03)",
    "citycode": "CTX",
    "city": "Cortland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OLE",
    "name": "Cattaraugus County-Olean Airport",
    "citycode": "OLE",
    "city": "Hinsdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TOA",
    "name": "Zamperini Field",
    "citycode": "TOA",
    "city": "Torrance",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LOL",
    "name": "Derby Field",
    "citycode": "LOL",
    "city": "Lovelock, Nevada",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VSF",
    "name": "Hartness State Airport",
    "citycode": "VSF",
    "city": "Springfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SEG",
    "name": "Penn Valley Airport",
    "citycode": "SEG",
    "city": "Selinsgrove",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BLD",
    "name": "Boulder City Municipal Airport (FAA: 61B)",
    "citycode": "BLD",
    "city": "Boulder City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NCO",
    "name": "Quonset State Airport (FAA: OQU)",
    "citycode": "NCO",
    "city": "North Kingstown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MZZ",
    "name": "Marion Municipal Airport",
    "citycode": "MZZ",
    "city": "Marion",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VKS",
    "name": "Vicksburg Arpt",
    "citycode": "VKS",
    "city": "Vicksburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AUN",
    "name": "AUBURN ARPT",
    "citycode": "AUN",
    "city": "AUBURN",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ABR",
    "name": "Aberdeen Arpt",
    "citycode": "ABR",
    "city": "Aberdeen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DYS",
    "name": "Dyess Airforce Base",
    "citycode": "ABI",
    "city": "Abilene",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VJI",
    "name": "Virginia Highlands Arpt",
    "citycode": "VJI",
    "city": "Abingdon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ADT",
    "name": "Ada Municipal Arpt",
    "citycode": "ADT",
    "city": "Ada OK",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ADK",
    "name": "Adak Island Ns",
    "citycode": "ADK",
    "city": "Adak Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ADG",
    "name": "Lenawee County Arpt",
    "citycode": "ADG",
    "city": "Adrian",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BQN",
    "name": "Borinquen Municipal Arpt",
    "citycode": "BQN",
    "city": "Aguadilla",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AIK",
    "name": "Aiken Municipal Arpt",
    "citycode": "AIK",
    "city": "Aiken",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ANW",
    "name": "Ainsworth Minicipal Arpt",
    "citycode": "ANW",
    "city": "Ainsworth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CAK",
    "name": "Akron Canton Regional Arpt",
    "citycode": "CAK",
    "city": "Akron",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AKC",
    "name": "Fulton International Arpt",
    "citycode": "CAK",
    "city": "Akron",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AKO",
    "name": "Washington County",
    "citycode": "AKO",
    "city": "Akron",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HMN",
    "name": "Holloman Airforce Base",
    "citycode": "ALM",
    "city": "Alamogordo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ALM",
    "name": "Alamogordo Municipal",
    "citycode": "ALM",
    "city": "Alamogordo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ALS",
    "name": "Alamosa Municipal",
    "citycode": "ALS",
    "city": "Alamosa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ABY",
    "name": "Dougherty Cty Arpt",
    "citycode": "ABY",
    "city": "Albany",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NAB",
    "name": "Albany Naval Air Station",
    "citycode": "ABY",
    "city": "Albany",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZLY",
    "name": "Albany NY Rail Station",
    "citycode": "ALB",
    "city": "Albany",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ALB",
    "name": "Albany Cty Arpt",
    "citycode": "ALB",
    "city": "Albany",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AEL",
    "name": "Albert Lea Arpt",
    "citycode": "AEL",
    "city": "Albert Lea",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ABQ",
    "name": "Albuquerque Intl Arpt",
    "citycode": "ABQ",
    "city": "Albuquerque",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AED",
    "name": "Aleneva Arpt",
    "citycode": "AED",
    "city": "Aleneva",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ALX",
    "name": "Thomas C Russell Field",
    "citycode": "ALX",
    "city": "Alexander City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ESF",
    "name": "Esler Field",
    "citycode": "AEX",
    "city": "Alexandria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AEX",
    "name": "Alexandria Intl Arpt",
    "citycode": "AEX",
    "city": "Alexandria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AXN",
    "name": "Alexandria Airport",
    "citycode": "AXN",
    "city": "Alexandria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AIV",
    "name": "Aliceville Arpt",
    "citycode": "AIV",
    "city": "Aliceville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ABE",
    "name": "Lehigh Valley Intl Arpt",
    "citycode": "ABE",
    "city": "Allentown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AIA",
    "name": "Alliance Municipal",
    "citycode": "AIA",
    "city": "Alliance",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "APN",
    "name": "Phelps Collins Arpt",
    "citycode": "APN",
    "city": "Alpena",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ALE",
    "name": "Alpine Aprt",
    "citycode": "ALE",
    "city": "Alpine",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AOO",
    "name": "Blair Cty Arpt",
    "citycode": "AOO",
    "city": "Altoona",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AXS",
    "name": "Altus Municipal Arpt",
    "citycode": "LTS",
    "city": "Altus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LTS",
    "name": "Altus Airforce Base",
    "citycode": "LTS",
    "city": "Altus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AMA",
    "name": "Amarillo Intl Arpt",
    "citycode": "AMA",
    "city": "Amarillo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TDW",
    "name": "Tradewind Airport",
    "citycode": "AMA",
    "city": "Amarillo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ABL",
    "name": "Ambler Arpt",
    "citycode": "ABL",
    "city": "Ambler",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AMW",
    "name": "Ames Minicipal Arpt",
    "citycode": "AMW",
    "city": "Ames",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NDV",
    "name": "USN Heliport",
    "citycode": "NDV",
    "city": "Anacostia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MRI",
    "name": "Merrill Field",
    "citycode": "ANC",
    "city": "Anchorage",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EDF",
    "name": "Elmendorf Airforce Base",
    "citycode": "ANC",
    "city": "Anchorage",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ANC",
    "name": "Anchorage Intl Arpt",
    "citycode": "ANC",
    "city": "Anchorage",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OTS",
    "name": "Ancortes Arpt",
    "citycode": "OTS",
    "city": "Ancortes",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AID",
    "name": "Anderson Municipal Arpt",
    "citycode": "AID",
    "city": "Anderson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AND",
    "name": "Anderson Arpt",
    "citycode": "AND",
    "city": "Anderson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AGN",
    "name": "Angoon Arpt",
    "citycode": "AGN",
    "city": "Angoon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ANI",
    "name": "Aniak Arpt",
    "citycode": "ANI",
    "city": "Aniak",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AIB",
    "name": "Anita Bay Arpt",
    "citycode": "AIB",
    "city": "Anita Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ARB",
    "name": "Ann Arbor Municipal",
    "citycode": "ARB",
    "city": "Ann Arbor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ANP",
    "name": "Lee Annapolis Arpt",
    "citycode": "ANP",
    "city": "Annapolis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ANN",
    "name": "Annette Island Arpt",
    "citycode": "ANN",
    "city": "Annette Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QAW",
    "name": "Ft Mcclellan Railway Stn",
    "citycode": "ANB",
    "city": "Anniston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RLI",
    "name": "Reilly Ahp",
    "citycode": "ANB",
    "city": "Anniston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ANB",
    "name": "Anniston Municipal Arpt",
    "citycode": "ANB",
    "city": "Anniston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AAF",
    "name": "Apalachicola Municipal Arpt",
    "citycode": "AAF",
    "city": "Apalachicola",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ATW",
    "name": "Outagamie Cty Arpt",
    "citycode": "ATW",
    "city": "Appleton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "APV",
    "name": "Apple Valley Arpt",
    "citycode": "APV",
    "city": "Applevalley",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ACV",
    "name": "Arcata Eureka Arpt",
    "citycode": "ACV",
    "city": "Arcata",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ARC",
    "name": "Arctic Village Arpt",
    "citycode": "ARC",
    "city": "Arctic Village",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AHD",
    "name": "Downtown Arpt",
    "citycode": "ADM",
    "city": "Ardmore",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ADM",
    "name": "Ardmore Municipal Arpt",
    "citycode": "ADM",
    "city": "Ardmore",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AVL",
    "name": "Asheville Municipal Arpt",
    "citycode": "AVL",
    "city": "Asheville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ASE",
    "name": "Pitkin Cty Arptt Sardy Fld",
    "citycode": "ASE",
    "city": "Aspen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AST",
    "name": "Astoria Arpt",
    "citycode": "AST",
    "city": "Astoria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MMI",
    "name": "McMinn County Arpt",
    "citycode": "MMI",
    "city": "Athens",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AHN",
    "name": "Athens Municipal",
    "citycode": "AHN",
    "city": "Athens",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ATO",
    "name": "Ohio University Arpt",
    "citycode": "ATO",
    "city": "Athens",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AKB",
    "name": "Atka Arpt",
    "citycode": "AKB",
    "city": "Atka",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PDK",
    "name": "Dekalb Peachtree",
    "citycode": "ATL",
    "city": "Atlanta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JAJ",
    "name": "Perimeter Hlpt",
    "citycode": "ATL",
    "city": "Atlanta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JGL",
    "name": "Galleria Arpt",
    "citycode": "ATL",
    "city": "Atlanta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JAE",
    "name": "Technology Park Arpt",
    "citycode": "ATL",
    "city": "Atlanta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JAO",
    "name": "Beaver Ruin Helpt",
    "citycode": "ATL",
    "city": "Atlanta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FTY",
    "name": "Fulton Cty Arpt",
    "citycode": "ATL",
    "city": "Atlanta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AIO",
    "name": "Municipal Atlantic Arpt",
    "citycode": "AIO",
    "city": "Atlantic",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JSL",
    "name": "Steel Pier Hlpt",
    "citycode": "AIY",
    "city": "Atlantic City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRA",
    "name": "Atlantic City Railway Station",
    "citycode": "AIY",
    "city": "Atlantic City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AIY",
    "name": "Bader Field",
    "citycode": "AIY",
    "city": "Atlantic City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ACY",
    "name": "Atlantic City Intl Arpt",
    "citycode": "AIY",
    "city": "Atlantic City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ATU",
    "name": "Attu Island Arpt",
    "citycode": "ATU",
    "city": "Attu Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AUO",
    "name": "Auburn Opelika",
    "citycode": "AUO",
    "city": "Auburn",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DNL",
    "name": "Daniel Airport",
    "citycode": "AGS",
    "city": "Augusta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AGS",
    "name": "Bush Field",
    "citycode": "AGS",
    "city": "Augusta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AUG",
    "name": "Maine State Arpt",
    "citycode": "AUG",
    "city": "Augusta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AUZ",
    "name": "Aurora Municipal Arpt",
    "citycode": "AUZ",
    "city": "Aurora",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AUM",
    "name": "Austin Airport",
    "citycode": "AUM",
    "city": "Austin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MMR",
    "name": "Camp Maybry Ahp",
    "citycode": "AUS",
    "city": "Austin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HCA",
    "name": "Howard Arpt",
    "citycode": "HCA",
    "city": "BIG SPRING",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BGS",
    "name": "Webb Airforce Base",
    "citycode": "HCA",
    "city": "BIG SPRING",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BGT",
    "name": "Bagdad Arpt",
    "citycode": "BGT",
    "city": "Bagdad",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BKE",
    "name": "Baker City Arpt",
    "citycode": "BKE",
    "city": "Baker",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFL",
    "name": "Meadows Field",
    "citycode": "BFL",
    "city": "Bakersfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "APG",
    "name": "Phillips Army Air Field",
    "citycode": "BWI",
    "city": "Baltimore",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BGR",
    "name": "Bangor Intl Arpt",
    "citycode": "BGR",
    "city": "Bangor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BNG",
    "name": "Banning Arpt",
    "citycode": "BNG",
    "city": "Banning",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BHB",
    "name": "Hancock County",
    "citycode": "BHB",
    "city": "Bar Harbor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BNF",
    "name": "Baranof Arpt",
    "citycode": "BNF",
    "city": "Baranof",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BRW",
    "name": "Barrow WBAS",
    "citycode": "BRW",
    "city": "Barrow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PBA",
    "name": "Point Barrow Arpt",
    "citycode": "BRW",
    "city": "Barrow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BVO",
    "name": "Bartlesville Municipal Arpt",
    "citycode": "BVO",
    "city": "Bartlesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BOW",
    "name": "Bartow Arpt",
    "citycode": "BOW",
    "city": "Bartow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HLB",
    "name": "Hillenbrand",
    "citycode": "HLB",
    "city": "Batesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BVX",
    "name": "Batesville Municipal",
    "citycode": "BVX",
    "city": "Batesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BTR",
    "name": "Ryan Airport",
    "citycode": "BTR",
    "city": "Baton Rouge",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EBR",
    "name": "Baton Rouge Downtown Arpt",
    "citycode": "BTR",
    "city": "Baton Rouge",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BTL",
    "name": "WK Kellogg Regional",
    "citycode": "BTL",
    "city": "Battle Creek",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HPY",
    "citycode": "HPY",
    "city": "Baytown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFT",
    "name": "Beaufort County Arpt",
    "citycode": "BFT",
    "city": "Beaufort",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BPT",
    "name": "Jefferson Cty Arpt",
    "citycode": "BPT",
    "city": "Beaumont",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BMT",
    "name": "Beaumont Municipal Arpt",
    "citycode": "BPT",
    "city": "Beaumont",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFP",
    "name": "Beaver Falls Arpt",
    "citycode": "BFP",
    "city": "Beaver Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BKW",
    "name": "Raleigh Cty Memorial",
    "citycode": "BKW",
    "city": "Beckley",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BED",
    "name": "Bedford Arpt",
    "citycode": "BED",
    "city": "Bedford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFR",
    "name": "Virgil I Grissom Municipal",
    "citycode": "BFR",
    "city": "Bedford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BLV",
    "name": "Scott AFB Mid America",
    "citycode": "BLV",
    "city": "Belleville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BLI",
    "name": "Bellingham Intl Arpt",
    "citycode": "BLI",
    "city": "Bellingham",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JVL",
    "name": "Rock County Arpt",
    "citycode": "JVL",
    "city": "Beloit",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BVU",
    "name": "Beluga Arpt",
    "citycode": "BVU",
    "city": "Beluga",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BJI",
    "name": "Bemidji Municipal Arpt",
    "citycode": "BJI",
    "city": "Bemidji",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BEH",
    "name": "Ross Field",
    "citycode": "BEH",
    "city": "Benton Harbor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BML",
    "name": "Berlin Arpt",
    "citycode": "BML",
    "city": "Berlin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JBT",
    "name": "Bethal Alaska Airport",
    "citycode": "BET",
    "city": "Bethel",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BET",
    "name": "Bethel Airport",
    "citycode": "BET",
    "city": "Bethel",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BVY",
    "name": "Beverly Municipal Arpt",
    "citycode": "BVY",
    "city": "Beverly",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RBF",
    "name": "Big Bear City Arpt",
    "citycode": "RBF",
    "city": "Big Bear City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BIG",
    "name": "Big Delta Arpt",
    "citycode": "BIG",
    "city": "Big Delta",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BGQ",
    "name": "Big Lake Arpt",
    "citycode": "BGQ",
    "city": "Big Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BIL",
    "name": "Logan Field",
    "citycode": "BIL",
    "city": "Billings",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BGM",
    "name": "Edwin A Link Field",
    "citycode": "BGM",
    "city": "Binghamton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BHM",
    "name": "Birmingham International Arpt",
    "citycode": "BHM",
    "city": "Birmingham",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BSQ",
    "name": "Bisbee Municipal Arpt",
    "citycode": "BSQ",
    "city": "Bisbee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BIH",
    "name": "Bishop Airport",
    "citycode": "BIH",
    "city": "Bishop",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BIS",
    "name": "Bismarck Municipal Arpt",
    "citycode": "BIS",
    "city": "Bismarck",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BCB",
    "name": "Virginia Tech Arpt",
    "citycode": "BCB",
    "city": "Blacksburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BSI",
    "name": "Blairsville Arpt",
    "citycode": "BSI",
    "city": "Blairsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BYW",
    "name": "Blakely Is Municipal",
    "citycode": "BYW",
    "city": "Blakely Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BID",
    "name": "Block Island Municipal",
    "citycode": "BID",
    "city": "Block Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BMG",
    "name": "Monroe Cty Arpt Indiana",
    "citycode": "BMG",
    "city": "Bloomington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BMI",
    "name": "Normal Airport",
    "citycode": "BMI",
    "city": "Bloomington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BLU",
    "name": "Blue Canyon Arpt",
    "citycode": "BLU",
    "city": "Blue Canyon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFB",
    "name": "Blue Fox Bay Arpt",
    "citycode": "BFB",
    "city": "Blue Fox Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BLF",
    "name": "Mercer County",
    "citycode": "BLF",
    "city": "Bluefield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BLH",
    "name": "Blythe Airport",
    "citycode": "BLH",
    "city": "Blythe",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BYH",
    "name": "Blytheville Air Force Base",
    "citycode": "HKA",
    "city": "Blytheville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HKA",
    "name": "Blytheville Municipal Arpt",
    "citycode": "HKA",
    "city": "Blytheville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BOI",
    "name": "Boise Municipal Arpt Gowen Field",
    "citycode": "BOI",
    "city": "Boise",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RLU",
    "name": "Bornite Upper Arpt",
    "citycode": "RLU",
    "city": "Bornite",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BXS",
    "name": "Borrego Valley Arpt",
    "citycode": "BXS",
    "city": "Borrego Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRU",
    "name": "Boston Area Railway Stattions",
    "citycode": "BOS",
    "city": "Boston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZTY",
    "name": "Boston Area Railway Station",
    "citycode": "BOS",
    "city": "Boston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JBC",
    "name": "Boston City Heliport",
    "citycode": "BOS",
    "city": "Boston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZTO",
    "name": "Boston South Rail Station",
    "citycode": "BOS",
    "city": "Boston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WHH",
    "name": "Hiltons Har H",
    "citycode": "WBU",
    "city": "Boulder",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WBI",
    "name": "Broker Inn",
    "citycode": "WBU",
    "city": "Boulder",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WBU",
    "name": "Boulder Municipal Arpt",
    "citycode": "WBU",
    "city": "Boulder",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BWG",
    "name": "Warren Cty Arpt",
    "citycode": "BWG",
    "city": "Bowling Green",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BZN",
    "name": "Gallatin Field",
    "citycode": "BZN",
    "city": "Bozeman",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFD",
    "name": "Bradford Regional Arpt",
    "citycode": "BFD",
    "city": "Bradford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BRD",
    "name": "Crowwing Cty Arpt",
    "citycode": "BRD",
    "city": "Brainerd",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BKG",
    "name": "Branson Regional Arpt",
    "citycode": "BKG",
    "city": "Branson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BWC",
    "name": "Brawley Arpt",
    "citycode": "BWC",
    "city": "Brawley",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BZT",
    "name": "Brazoria County Arpt",
    "citycode": "BZT",
    "city": "Brazoria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QKB",
    "name": "Breckenridge Van Service",
    "citycode": "QKB",
    "city": "Breckenridge",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PWT",
    "name": "Bremerton Municipal",
    "citycode": "PWT",
    "city": "Bremerton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KTS",
    "name": "Brevig Mission Arpt",
    "citycode": "KTS",
    "city": "Brevig Mission",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BDR",
    "name": "Sikorsky Memorial Arpt",
    "citycode": "BDR",
    "city": "Bridgeport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TRI",
    "name": "Tri City Regional Arpt",
    "citycode": "TRI",
    "city": "Bristol",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BBW",
    "name": "Broken Bow Municipal",
    "citycode": "BBW",
    "city": "Broken Bow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WSH",
    "name": "Brookhaven Airport",
    "citycode": "WSH",
    "city": "Brookhaven",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BKX",
    "name": "Brookings Municipal",
    "citycode": "BKX",
    "city": "Brookings",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BJC",
    "name": "Jeffco Arpt",
    "citycode": "BJC",
    "city": "Broomfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BRO",
    "name": "South Padre Island Intl Arpt",
    "citycode": "BRO",
    "city": "Brownsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BWD",
    "name": "Brownwood Municipal Arpt",
    "citycode": "BWD",
    "city": "Brownwood",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NHZ",
    "name": "Naval Air Station",
    "citycode": "NHZ",
    "city": "Brunswick",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BQK",
    "name": "Gylnco Jet Port",
    "citycode": "BQK",
    "city": "Brunswick",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BCE",
    "name": "Bryce Arpt",
    "citycode": "BCE",
    "city": "Bryce",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BXK",
    "name": "Buckeye Arpt",
    "citycode": "BXK",
    "city": "Buckeye",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZXS",
    "name": "Exchange Street Railway Stn",
    "citycode": "BUF",
    "city": "Buffalo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFG",
    "name": "Bullfrog Basin Arpt",
    "citycode": "BFG",
    "city": "Bullfrog Basin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IFP",
    "name": "Laughlin Bullhead Intl Arpt",
    "citycode": "IFP",
    "city": "Bullhead City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JGX",
    "name": "Heliport",
    "citycode": "BUR",
    "city": "Burbank",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BUR",
    "name": "Burbank Glendale Pasadena Arpt",
    "citycode": "BUR",
    "city": "Burbank",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BYI",
    "name": "Burley Arpt",
    "citycode": "BYI",
    "city": "Burley",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BRL",
    "name": "Burlington Municipal Arpt",
    "citycode": "BRL",
    "city": "Burlington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BTV",
    "name": "Burlington Intl Arpt",
    "citycode": "BTV",
    "city": "Burlington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BNO",
    "name": "Burns Municipal Arpt",
    "citycode": "BNO",
    "city": "Burns",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BTP",
    "name": "GRAHAM FIELD ARPT",
    "citycode": "BTP",
    "city": "Butler",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BTM",
    "name": "Bert Mooney Arpt",
    "citycode": "BTM",
    "city": "Butte",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CAD",
    "name": "Wexford County Arpt",
    "citycode": "CAD",
    "city": "Cadillac",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CDW",
    "name": "Caldwell Wright Arpt",
    "citycode": "CDW",
    "city": "Caldwell",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CXL",
    "name": "Calexico Intl Arpt",
    "citycode": "CXL",
    "city": "Calexico",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLR",
    "name": "Calipatria Arpt",
    "citycode": "CLR",
    "city": "Calipatria",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CDH",
    "name": "Harrell Fieldsandro Arpt",
    "citycode": "CDH",
    "city": "Camden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ADW",
    "name": "Andrews Air Force Base",
    "citycode": "ADW",
    "city": "Camp Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NSF",
    "name": "Camp Springs Andrew Air Force Base",
    "citycode": "ADW",
    "city": "Camp Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CZZ",
    "name": "Campo Arpt",
    "citycode": "CZZ",
    "city": "Campo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CDL",
    "name": "Candle Arpt",
    "citycode": "CDL",
    "city": "Candle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CNE",
    "name": "Canon City Arpt",
    "citycode": "CNE",
    "city": "Canon City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CGI",
    "name": "Cape Girardeau Municipal Arpt",
    "citycode": "CGI",
    "city": "Cape Girardeau",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WWD",
    "name": "Cape May Arpt",
    "citycode": "WWD",
    "city": "Cape May",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CSP",
    "name": "Cape Spencer Arpt",
    "citycode": "CSP",
    "city": "Cape Spencer",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CYT",
    "name": "Cape Yakataga Arpt",
    "citycode": "CYT",
    "city": "Cape Yakataga",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MDH",
    "name": "Southern Illinois Arpt",
    "citycode": "MDH",
    "city": "Carbondale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CAR",
    "name": "Caribou Municipal Arpt",
    "citycode": "CAR",
    "city": "Caribou",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CNM",
    "name": "Carlsbad Airport",
    "citycode": "CNM",
    "city": "Carlsbad",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CSN",
    "name": "Carson Arpt",
    "citycode": "CSN",
    "city": "Carson City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CGZ",
    "name": "Casa Grande Arpt",
    "citycode": "CGZ",
    "city": "Casa Grande",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CPR",
    "name": "Natrona Cty Intl Arpt",
    "citycode": "CPR",
    "city": "Casper",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SXC",
    "name": "Catalina Arpt",
    "citycode": "AVX",
    "city": "Catalina Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TWH",
    "name": "Two Harbors Amphibious Terminal",
    "citycode": "AVX",
    "city": "Catalina Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CDC",
    "name": "Cedar City Municipal",
    "citycode": "CDC",
    "city": "Cedar City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CID",
    "name": "Cedar Rapids Municipal Arpt",
    "citycode": "CID",
    "city": "Cedar Rapids",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ENL",
    "name": "Centralia Municipal Arpt",
    "citycode": "ENL",
    "city": "Centralia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CDR",
    "name": "Chadron Arpt",
    "citycode": "CDR",
    "city": "Chadron",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CMI",
    "name": "Univ Of Illinois Willard Arpt",
    "citycode": "CMI",
    "city": "Champaign",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WCR",
    "name": "Chandalar Arpt",
    "citycode": "WCR",
    "city": "Chandalar",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CHD",
    "name": "Williams AFB",
    "citycode": "CHD",
    "city": "Chandler",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CHS",
    "name": "Charleston Intl Arpt",
    "citycode": "CHS",
    "city": "Charleston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CRW",
    "name": "Yeager Arpt",
    "citycode": "CRW",
    "city": "Charleston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QWG",
    "name": "Wilgrove Air Parkarpt",
    "citycode": "CLT",
    "city": "Charlotte",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CHO",
    "name": "Charlottesville Albemarle Arpt",
    "citycode": "CHO",
    "city": "Charlottesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CYM",
    "name": "Chatham SPB",
    "citycode": "CYM",
    "city": "Chatham",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QDK",
    "name": "Greyhound Bus Service",
    "citycode": "CHA",
    "city": "Chattanooga",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CHA",
    "name": "Chattanooga Lovell Fld",
    "citycode": "CHA",
    "city": "Chattanooga",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CEX",
    "name": "Chena Hot Springs Arpt",
    "citycode": "CEX",
    "city": "Chena Hot Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KCN",
    "name": "Sp Base",
    "citycode": "KCN",
    "city": "Chernofski",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FEW",
    "name": "Warren AFB Heliport",
    "citycode": "CYS",
    "city": "Cheyenne",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CYS",
    "name": "Cheyenne Arpt",
    "citycode": "CYS",
    "city": "Cheyenne",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RFD",
    "name": "Chicago Rockford Arpt",
    "citycode": "CHI",
    "city": "Chicago",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DPA",
    "name": "Dupage County Arpt",
    "citycode": "CHI",
    "city": "Chicago",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZUN",
    "name": "Chicago Union Railway Station",
    "citycode": "CHI",
    "city": "Chicago",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MDW",
    "name": "Midway",
    "citycode": "CHI",
    "city": "Chicago",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PWK",
    "name": "Pal Waukee Arpt",
    "citycode": "CHI",
    "city": "Chicago",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CIC",
    "name": "Chico Municipal Arpt",
    "citycode": "CIC",
    "city": "Chico",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KCG",
    "name": "Chignik Fisheries Arpt",
    "citycode": "KCL",
    "city": "Chignik Lagoon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KCQ",
    "name": "Chignik Airport",
    "citycode": "KCL",
    "city": "Chignik Lagoon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KCL",
    "name": "Chignik Lagoon Arpt",
    "citycode": "KCL",
    "city": "Chignik Lagoon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KBW",
    "name": "Chignik Bay Arpt",
    "citycode": "KCL",
    "city": "Chignik Lagoon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WAL",
    "name": "Wallops Arpt",
    "citycode": "WAL",
    "city": "Chincoteague",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CXC",
    "name": "Chitina Arpt",
    "citycode": "CXC",
    "city": "Chitina",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CHU",
    "name": "Chuathbaluk Arpt",
    "citycode": "CHU",
    "city": "Chuathbaluk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LUK",
    "name": "Cincinnati Municipal Arpt",
    "citycode": "CVG",
    "city": "Cincinnati",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IRC",
    "name": "Circle City Arpt",
    "citycode": "IRC",
    "city": "Circle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CHP",
    "name": "Circle Hot Springs Arpt",
    "citycode": "CHP",
    "city": "Circle Hot Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CKB",
    "name": "Clarksburg Benedum Arpt",
    "citycode": "CKB",
    "city": "Clarksburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CKM",
    "name": "Fletcher Field",
    "citycode": "CKM",
    "city": "Clarksdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CKV",
    "name": "Outlaw Field",
    "citycode": "CKV",
    "city": "Clarksville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CKE",
    "name": "Clear Lake Arpt",
    "citycode": "CKE",
    "city": "Clear Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLC",
    "name": "Metroport",
    "citycode": "CLC",
    "city": "Clear Lake City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLW",
    "name": "Clearwater Executive Airpark",
    "citycode": "CLW",
    "city": "Clearwater",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CEU",
    "name": "Clemson Oconee Cty Arpt",
    "citycode": "CEU",
    "city": "Clemson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BKL",
    "name": "Burke Lakefront Arpt",
    "citycode": "CLE",
    "city": "Cleveland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLE",
    "name": "Hopkins Intl Arpt",
    "citycode": "CLE",
    "city": "Cleveland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CGF",
    "name": "Cuyahoga County Airport",
    "citycode": "CLE",
    "city": "Cleveland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CFT",
    "name": "Clifton Arpt",
    "citycode": "CFT",
    "city": "Clifton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLK",
    "name": "Clinton Municipal Arpt",
    "citycode": "CSM",
    "city": "Clinton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CSM",
    "name": "Sherman Arpt",
    "citycode": "CSM",
    "city": "Clinton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CWI",
    "name": "Clinton Municipal",
    "citycode": "CWI",
    "city": "Clinton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RTE",
    "name": "Marguerite Bay Arpt",
    "citycode": "RTE",
    "city": "Clover Pass",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CVN",
    "name": "Clovis Airport",
    "citycode": "CVN",
    "city": "Clovis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CVS",
    "name": "Cannon Afbarpt",
    "citycode": "CVN",
    "city": "Clovis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLG",
    "name": "Coalinga Arpt",
    "citycode": "CLG",
    "city": "Coalinga",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CWX",
    "name": "Cochise County Arpt",
    "citycode": "CWX",
    "city": "Cochise County",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "COI",
    "name": "Merrit Island Arpt",
    "citycode": "COI",
    "city": "Cocoa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "COF",
    "name": "Patrick AFB",
    "citycode": "COI",
    "city": "Cocoa",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "COD",
    "name": "Yellowstone Regional Arpt",
    "citycode": "COD",
    "city": "Cody",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "COE",
    "name": "Coeur d Alene Municipal Arpt",
    "citycode": "COE",
    "city": "Coeur D Alene",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CBK",
    "name": "Colby Municipal Arpt",
    "citycode": "CBK",
    "city": "Colby",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CXF",
    "name": "Coldfoot Arpt",
    "citycode": "CXF",
    "city": "Coldfoot",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLL",
    "name": "Easterwood Field",
    "citycode": "CLL",
    "city": "College Station",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FCS",
    "name": "Butts AAF",
    "citycode": "COS",
    "city": "Colorado Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "COS",
    "name": "Colorado Springs Municipal Arpt",
    "citycode": "COS",
    "city": "Colorado Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AFF",
    "name": "USAF Academy",
    "citycode": "COS",
    "city": "Colorado Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MRC",
    "name": "Maury Country Arpt",
    "citycode": "MRC",
    "city": "Columbia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "COU",
    "name": "Columbia Regional",
    "citycode": "COU",
    "city": "Columbia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MMT",
    "name": "Mc Entire Air National Guard Base Arpt",
    "citycode": "CAE",
    "city": "Columbia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CUB",
    "name": "Columbia Owens Downtown Arpt",
    "citycode": "CAE",
    "city": "Columbia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OGB",
    "name": "Orangeburg Municpal",
    "citycode": "CAE",
    "city": "Columbia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "COA",
    "name": "Columbia Arpt",
    "citycode": "COA",
    "city": "Columbia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OLU",
    "name": "Columbus Arpt",
    "citycode": "OLU",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CLU",
    "name": "Columbus Municipal Arpt",
    "citycode": "CLU",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CMH",
    "name": "Port Columbus Intl Arpt",
    "citycode": "CMH",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LCK",
    "name": "Rickenbacker Intl Arpt",
    "citycode": "CMH",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OSU",
    "name": "Ohio State Univ Arpt",
    "citycode": "CMH",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CSG",
    "name": "Columbus Metro Ft Benning Arpt",
    "citycode": "CSG",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MKF",
    "name": "Mckenna AAF",
    "citycode": "CSG",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LSF",
    "name": "Lawson AAF",
    "citycode": "CSG",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CUS",
    "name": "Columbus Municipal",
    "citycode": "CUS",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UBS",
    "name": "Lowndes Cty Arpt",
    "citycode": "UBS",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GTR",
    "name": "Golden Arpt",
    "citycode": "UBS",
    "city": "Columbus",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CPM",
    "name": "Compton Arpt",
    "citycode": "CPM",
    "city": "Compton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CON",
    "name": "Concord Arpt",
    "citycode": "CON",
    "city": "Concord",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CCR",
    "name": "Buchanan Field",
    "citycode": "CCR",
    "city": "Concord",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CXO",
    "name": "Montgomery Co Arpt",
    "citycode": "CXO",
    "city": "Conroe",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CZC",
    "name": "Copper Center Arpt",
    "citycode": "CZC",
    "city": "Copper Center",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QCE",
    "name": "Copper Mountain Van Service",
    "citycode": "QCE",
    "city": "Copper Mountain",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CRO",
    "name": "Corcoran Arpt",
    "citycode": "CRO",
    "city": "Corcoran",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CKU",
    "name": "City Airport",
    "citycode": "CDV",
    "city": "Cordova",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CDV",
    "name": "Mudhole Smith Arpt",
    "citycode": "CDV",
    "city": "Cordova",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CRX",
    "name": "Roscoe Turner Arpt",
    "citycode": "CRX",
    "city": "Corinth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CBA",
    "name": "Corner Bay Arpt",
    "citycode": "CBA",
    "city": "Corner Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZBV",
    "name": "Beaver Creek Van Service",
    "citycode": "EGE",
    "city": "Eagle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NGP",
    "name": "Corpus Christi Naval Air Station",
    "citycode": "CRP",
    "city": "Corpus Christi",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CRP",
    "name": "Corpus Christi Intl Arpt",
    "citycode": "CRP",
    "city": "Corpus Christi",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CUX",
    "name": "Cuddihy Field Arpt",
    "citycode": "CRP",
    "city": "Corpus Christi",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NGW",
    "name": "Cabaniss Field Arpt",
    "citycode": "CRP",
    "city": "Corpus Christi",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CRS",
    "name": "Corsicana Arpt",
    "citycode": "CRS",
    "city": "Corsicana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CEZ",
    "name": "Montezuma County",
    "citycode": "CEZ",
    "city": "Cortez",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CVO",
    "name": "Corvallis Municipal Arpt",
    "citycode": "CVO",
    "city": "Corvallis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QWY",
    "name": "Albany Bus Service",
    "citycode": "CVO",
    "city": "Corvallis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CTW",
    "name": "Cottonwood Airport",
    "citycode": "CTW",
    "city": "Cottonwood",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CIL",
    "name": "Melsing Creek Arpt",
    "citycode": "CIL",
    "city": "Council",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CBF",
    "name": "Council Bluffs Municipal Arpt",
    "citycode": "CBF",
    "city": "Council Bluffs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CGA",
    "name": "Craig Seaplane Base",
    "citycode": "CGA",
    "city": "Craig",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CIG",
    "name": "Craig Moffat",
    "citycode": "CIG",
    "city": "Craig",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CEC",
    "name": "Crescent City Municipal Arpt",
    "citycode": "CEC",
    "city": "Crescent City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CKD",
    "name": "Crooked Creek Arpt",
    "citycode": "CKD",
    "city": "Crooked Creek",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CRT",
    "name": "Crossett Arpt",
    "citycode": "CRT",
    "city": "Crossett",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CSV",
    "name": "Crossville Memorial Arpt",
    "citycode": "CSV",
    "city": "Crossville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NRC",
    "name": "Aux Field Arpt",
    "citycode": "NRC",
    "city": "Crows Landing",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CUW",
    "name": "Cube Cove Arpt",
    "citycode": "CUW",
    "city": "Cube Cove",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CPX",
    "name": "Culebra Arpt",
    "citycode": "CPX",
    "city": "Culebra",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CBE",
    "name": "Cumberland Municipal Arpt",
    "citycode": "CBE",
    "city": "Cumberland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DAG",
    "name": "Barstow Daggett Airport",
    "citycode": "DAG",
    "city": "Daggett",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JDB",
    "name": "Downtown Heliport",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JNH",
    "name": "North Park Inn Heliport",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DNE",
    "name": "Dallas North Airport",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DAL",
    "name": "Love Field",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JMD",
    "name": "Market Centre Heliport",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FWH",
    "name": "Carswell Airforce Base",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RBD",
    "name": "Redbirdarpt",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ADS",
    "name": "Addison Arpt",
    "citycode": "DFW",
    "city": "Dallas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DNN",
    "name": "Dalton Municipal Airport",
    "citycode": "DNN",
    "city": "Dalton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DXR",
    "name": "Danbury Municipal Arpt",
    "citycode": "DXR",
    "city": "Danbury",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DAN",
    "name": "Danville Municipal",
    "citycode": "DAN",
    "city": "Danville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DNV",
    "name": "Vermillion Cty",
    "citycode": "DNV",
    "city": "Danville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DVN",
    "name": "Davenport Airport",
    "citycode": "DVN",
    "city": "Davenport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MGY",
    "name": "Dayton General Airport South",
    "citycode": "DAY",
    "city": "Dayton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DAY",
    "name": "Dayton International Airport",
    "citycode": "DAY",
    "city": "Dayton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DWF",
    "name": "Wright AFB",
    "citycode": "DAY",
    "city": "Dayton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FFO",
    "name": "Patterson AFB",
    "citycode": "DAY",
    "city": "Dayton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DAB",
    "name": "Daytona Beach Regional Arpt",
    "citycode": "DAB",
    "city": "Daytona Beach",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DTH",
    "name": "Death Valley Arpt",
    "citycode": "DTH",
    "city": "Death Valley",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DCU",
    "name": "Pyor Arpt",
    "citycode": "DCU",
    "city": "Decatur",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DEC",
    "name": "Decatur Municipal",
    "citycode": "DEC",
    "city": "Decatur",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DEH",
    "name": "Decorah Municipal",
    "citycode": "DEH",
    "city": "Decorah",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DFI",
    "name": "Defiance Memorial Arpt",
    "citycode": "DFI",
    "city": "Defiance",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DLF",
    "name": "Laughlin AFB",
    "citycode": "DRT",
    "city": "Del Rio",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DRT",
    "name": "International Del Rio",
    "citycode": "DRT",
    "city": "Del Rio",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DJN",
    "name": "Delta Junction Arpt",
    "citycode": "DJN",
    "city": "Delta Junction",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "APA",
    "name": "Centennial Arpt",
    "citycode": "DEN",
    "city": "Denver",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QWM",
    "name": "Longmont Bus Service",
    "citycode": "DEN",
    "city": "Denver",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BFK",
    "name": "Buckley Air National Guard Base",
    "citycode": "DEN",
    "city": "Denver",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DSM",
    "name": "Des Moines Municipal Airport",
    "citycode": "DSM",
    "city": "Des Moines",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DSI",
    "name": "Destin Arpt",
    "citycode": "DSI",
    "city": "Destin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DET",
    "name": "Detroit City Apt",
    "citycode": "DTT",
    "city": "Detroit",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UIZ",
    "name": "Berz Macomb Arpt",
    "citycode": "DTT",
    "city": "Detroit",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MTC",
    "name": "Selfridge Air Natl Guard",
    "citycode": "DTT",
    "city": "Detroit",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "YIP",
    "name": "Willow Run Arpt",
    "citycode": "DTT",
    "city": "Detroit",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DVL",
    "name": "Devils Lake Arpt",
    "citycode": "DVL",
    "city": "Devils Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DIK",
    "name": "Dickinson Municipal",
    "citycode": "DIK",
    "city": "Dickinson",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DLG",
    "name": "Dillingham Municipal Arpt",
    "citycode": "DLG",
    "city": "Dillingham",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DLL",
    "name": "Dillon Arpt",
    "citycode": "DLL",
    "city": "Dillon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DDC",
    "name": "Dodge City Municipal Arpt",
    "citycode": "DDC",
    "city": "Dodge City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DLO",
    "name": "Dolomi Arpt",
    "citycode": "DLO",
    "city": "Dolomi",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DOF",
    "name": "Dora Bay Arpt",
    "citycode": "DOF",
    "city": "Dora Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DHN",
    "name": "Dothan Municipal",
    "citycode": "DHN",
    "city": "Dothan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DUG",
    "name": "Bisbee Douglas Intl",
    "citycode": "DUG",
    "city": "Douglas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DGL",
    "name": "Douglas Municipal Arpt",
    "citycode": "DUG",
    "city": "Douglas",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DVX",
    "name": "Delaware Airpark",
    "citycode": "DOV",
    "city": "Dover",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DOV",
    "name": "Dover AFB",
    "citycode": "DOV",
    "city": "Dover",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DYL",
    "name": "Doylestown Arpt",
    "citycode": "DYL",
    "city": "Doylestown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DRF",
    "name": "Drift River Arpt",
    "citycode": "DRF",
    "city": "Drift River",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PSK",
    "name": "New River Valley Arpt",
    "citycode": "PSK",
    "city": "Dublin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DBN",
    "name": "Dublin Municipal Arpt",
    "citycode": "DBN",
    "city": "Dublin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DUJ",
    "name": "Dubois Jefferson Cty Arpt",
    "citycode": "DUJ",
    "city": "Dubois",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DBQ",
    "name": "Dubuque Municipal Arpt",
    "citycode": "DBQ",
    "city": "Dubuque",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DLH",
    "name": "Duluth Intl",
    "citycode": "DLH",
    "city": "Duluth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LKI",
    "name": "Lakeside USAF",
    "citycode": "DLH",
    "city": "Duluth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DUC",
    "name": "Halliburton Arpt",
    "citycode": "DUC",
    "city": "Duncan",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AMK",
    "name": "Animas Airpark",
    "citycode": "DRO",
    "city": "Durango",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DRO",
    "name": "Durango La Plata Cty Arpt",
    "citycode": "DRO",
    "city": "Durango",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DUT",
    "name": "Emergency Field",
    "citycode": "DUT",
    "city": "Dutch Harbor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EAA",
    "name": "Eagle Airport",
    "citycode": "EAA",
    "city": "Eagle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QBF",
    "name": "Vail Van Service",
    "citycode": "EGE",
    "city": "Eagle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EGE",
    "name": "Eagle County Arpt",
    "citycode": "EGE",
    "city": "Eagle",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EGP",
    "name": "Maverick County Arpt",
    "citycode": "EGP",
    "city": "Eagle Pass",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EGV",
    "name": "Eagle River Union Arpt",
    "citycode": "EGV",
    "city": "Eagle River",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HTO",
    "name": "East Hampton Arpt",
    "citycode": "HTO",
    "city": "East Hampton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EHT",
    "name": "Rentschler Arpt",
    "citycode": "EHT",
    "city": "East Hartford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RSJ",
    "name": "Rosario Seaplane Base",
    "citycode": "ESD",
    "city": "East Sound",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WSX",
    "name": "Westsound Seaplane Base",
    "citycode": "ESD",
    "city": "East Sound",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ESD",
    "name": "Eastsound Orcas Is Arpt",
    "citycode": "ESD",
    "city": "East Sound",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ESP",
    "name": "Birchwood Pocono Arpt",
    "citycode": "ESP",
    "city": "East Stroudsburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ESN",
    "name": "Easton Municipal Arpt",
    "citycode": "ESN",
    "city": "Easton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EAU",
    "name": "Eau Claire Municipal Arpt",
    "citycode": "EAU",
    "city": "Eau Claire",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EDE",
    "name": "Edenton Municipal Arpt",
    "citycode": "EDE",
    "city": "Edenton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EDA",
    "name": "Edna Bay Arpt",
    "citycode": "EDA",
    "city": "Edna Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EEK",
    "name": "Eek Arpt",
    "citycode": "EEK",
    "city": "Eek City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CJN",
    "name": "El Cajon Arpt",
    "citycode": "CJN",
    "city": "El Cajon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NJK",
    "name": "El Centro Naval Air Facility",
    "citycode": "IPL",
    "city": "El Centro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IPL",
    "name": "Imperial County",
    "citycode": "IPL",
    "city": "El Centro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ELD",
    "name": "Goodwin Field",
    "citycode": "ELD",
    "city": "El Dorado",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EMT",
    "name": "El Monte Arpt",
    "citycode": "EMT",
    "city": "El Monte",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BIF",
    "name": "Biggs Army Air Field",
    "citycode": "ELP",
    "city": "El Paso",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ELP",
    "name": "El Paso Intl Arpt",
    "citycode": "ELP",
    "city": "El Paso",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ERO",
    "name": "Coast Guard Arpt",
    "citycode": "ERO",
    "city": "Eldred Rock",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ECG",
    "name": "Elizabeth Municipal Cgas",
    "citycode": "ECG",
    "city": "Elizabeth City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EKX",
    "name": "Addington Field",
    "citycode": "EKX",
    "city": "Elizabethtown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ELK",
    "name": "Elk City Municipal",
    "citycode": "ELK",
    "city": "Elk City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EKI",
    "name": "Elkhart Municipal Arpt",
    "citycode": "EKI",
    "city": "Elkhart",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EKN",
    "name": "Randolph County Arpt",
    "citycode": "EKN",
    "city": "Elkins",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EKO",
    "name": "J C Harris Field",
    "citycode": "EKO",
    "city": "Elko",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ELW",
    "name": "Ellamar Arpt",
    "citycode": "ELW",
    "city": "Ellamar",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ELM",
    "name": "Elmira Corning Regional Arpt",
    "citycode": "ELM",
    "city": "Elmira",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LYU",
    "name": "Ely Municipal Arpt",
    "citycode": "LYU",
    "city": "Ely Mn",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ELY",
    "name": "Yelland Field",
    "citycode": "ELY",
    "city": "Ely NV",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JEM",
    "name": "Hlpt",
    "citycode": "JEM",
    "city": "Emeryville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EMP",
    "name": "EMPORIA MUNICIPAL AIRPORT",
    "citycode": "EMP",
    "city": "Emporia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KEB",
    "name": "Nanwalek Arpt",
    "citycode": "KEB",
    "city": "English Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "WDG",
    "name": "Woodring Municipal",
    "citycode": "WDG",
    "city": "Enid",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "END",
    "name": "Vance Airforce Base",
    "citycode": "WDG",
    "city": "Enid",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ETS",
    "name": "Enterprise Municipal",
    "citycode": "ETS",
    "city": "Enterprise",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ERI",
    "name": "Erie Intl",
    "citycode": "ERI",
    "city": "Erie",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ESC",
    "name": "Delta County",
    "citycode": "ESC",
    "city": "Escanaba",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EUF",
    "name": "Weedon Field",
    "citycode": "EUF",
    "city": "Eufaula",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EUG",
    "name": "Eugene Arpt",
    "citycode": "EUG",
    "city": "Eugene",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EKA",
    "name": "Eureka Murray Field",
    "citycode": "EKA",
    "city": "Eureka",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EVW",
    "name": "Evanston Arpt",
    "citycode": "EVW",
    "city": "Evanston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EVV",
    "name": "Evansville Regional Arpt",
    "citycode": "EVV",
    "city": "Evansville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EVM",
    "name": "Eveleth Virginia Municipal Arpt",
    "citycode": "EVM",
    "city": "Eveleth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PAE",
    "name": "Snohomish Cty Arpt",
    "citycode": "PAE",
    "city": "Everett",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EXI",
    "name": "Excursion Inlet Municipal",
    "citycode": "EXI",
    "city": "Excursion Inlet",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FBK",
    "name": "Ft Wainwright Arpt",
    "citycode": "FAI",
    "city": "Fairbanks",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EIL",
    "name": "Eielson AFB Arpt",
    "citycode": "FAI",
    "city": "Fairbanks",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MTX",
    "name": "Metro Field Airport",
    "citycode": "FAI",
    "city": "Fairbanks",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FAI",
    "name": "Fairbanks Intl Arpt",
    "citycode": "FAI",
    "city": "Fairbanks",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PII",
    "name": "Fairbanks Phillips Airport",
    "citycode": "FAI",
    "city": "Fairbanks",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SUU",
    "name": "Travis AFB",
    "citycode": "SUU",
    "city": "Fairfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FRM",
    "name": "Fairmont Municipal",
    "citycode": "FRM",
    "city": "Fairmont",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FAJ",
    "name": "Fajardo Arpt",
    "citycode": "FAJ",
    "city": "Fajardo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NFL",
    "name": "Fallon Nas",
    "citycode": "NFL",
    "city": "Fallon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FLX",
    "name": "Fallon Municipal Arpt",
    "citycode": "NFL",
    "city": "Fallon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FMH",
    "name": "Otis AFB",
    "citycode": "FMH",
    "city": "Falmouth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FAK",
    "name": "False Island Arpt",
    "citycode": "FAK",
    "city": "False Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FAR",
    "name": "Hector Airport",
    "citycode": "FAR",
    "city": "Fargo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FRG",
    "name": "Republic Arpt",
    "citycode": "FRG",
    "city": "Farmingdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FMN",
    "name": "Four Corners Regional Arpt",
    "citycode": "FMN",
    "city": "Farmington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FAY",
    "name": "Fayetteville Municipal",
    "citycode": "FAY",
    "city": "Fayetteville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "POB",
    "name": "Pope Airforce Base",
    "citycode": "FAY",
    "city": "Fayetteville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "XNA",
    "name": "Northwest Arkansas Regional Arpt",
    "citycode": "FYV",
    "city": "Fayetteville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FYV",
    "name": "Fayetteville Municipal Arpt",
    "citycode": "FYV",
    "city": "Fayetteville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FFM",
    "name": "Fergus Falls Municipal",
    "citycode": "FFM",
    "city": "Fergus Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FDY",
    "name": "FINDLAY ARPT",
    "citycode": "FDY",
    "city": "Findlay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FLG",
    "name": "Flagstaff Arpt",
    "citycode": "FLG",
    "city": "Flagstaff",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FNT",
    "name": "Bishop Intl Arpt",
    "citycode": "FNT",
    "city": "Flint",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FLP",
    "name": "Flippin Arpt",
    "citycode": "FLP",
    "city": "Flippin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FLO",
    "name": "Gilbert Field",
    "citycode": "FLO",
    "city": "Florence",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FCY",
    "name": "Forrest City Municipal Arpt",
    "citycode": "FCY",
    "city": "Forrest City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CCA",
    "name": "Fort Chaffee Arpt",
    "citycode": "CCA",
    "city": "Fort Chaffee",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FOD",
    "name": "Ft Dodge Municipal",
    "citycode": "FOD",
    "city": "Fort Dodge",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BYS",
    "name": "Fort Irwin Arpt",
    "citycode": "BYS",
    "city": "Fort Irwin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FMS",
    "name": "Fort Madison Municipal",
    "citycode": "FMS",
    "city": "Fort Madison",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FMY",
    "name": "Page Field Airport",
    "citycode": "FMY",
    "city": "Fort Myers",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RSW",
    "name": "Regional Southwest Arpt",
    "citycode": "FMY",
    "city": "Fort Myers",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FPR",
    "name": "St Lucie County Arpt",
    "citycode": "FPR",
    "city": "Fort Pierce",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "POE",
    "name": "Fort Polk Arpt",
    "citycode": "POE",
    "city": "Fort Polk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FST",
    "name": "Pecos County Arpt",
    "citycode": "FST",
    "city": "Fort Stockton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FKL",
    "name": "Chess Lamberton Arpt",
    "citycode": "FKL",
    "city": "Franklin",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FDK",
    "name": "Frederick Municipal",
    "citycode": "FDK",
    "city": "Frederick",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FCH",
    "name": "Fresno Chandler Arpt",
    "citycode": "FAT",
    "city": "Fresno",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FAT",
    "name": "Fresno Air Terminal",
    "citycode": "FAT",
    "city": "Fresno",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FRD",
    "name": "Friday Harbor Airport",
    "citycode": "FRD",
    "city": "Friday Harbor",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FRR",
    "name": "Warren County Arpt",
    "citycode": "FRR",
    "city": "Front Royal",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QWF",
    "name": "Fort Collins Bus Service",
    "citycode": "FNL",
    "city": "Ft Collins",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "QWH",
    "name": "Loveland Bus Service",
    "citycode": "FNL",
    "city": "Ft Collins",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FNL",
    "name": "Municipal Airport",
    "citycode": "FNL",
    "city": "Ft Collins",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FHU",
    "name": "Sierra Vista Municipal",
    "citycode": "FHU",
    "city": "Ft Huachuca",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BCT",
    "name": "Boca Raton Public",
    "citycode": "FLL",
    "city": "Ft Lauderdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FXE",
    "name": "Ft Lauderdale Excutive",
    "citycode": "FLL",
    "city": "Ft Lauderdale",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TBN",
    "name": "Forney Field",
    "citycode": "TBN",
    "city": "Ft Leonard Wood",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FSM",
    "name": "Ft Smith Municipal",
    "citycode": "FSM",
    "city": "Ft Smith",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FWA",
    "name": "Baer Field",
    "citycode": "FWA",
    "city": "Ft Wayne",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SMD",
    "name": "Smith Field Airport",
    "citycode": "FWA",
    "city": "Ft Wayne",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FTW",
    "name": "Meacham Field",
    "citycode": "FTW",
    "city": "Ft Worth",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FUL",
    "name": "Fullerton Municipal Arpt",
    "citycode": "FUL",
    "city": "Fullerton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GOL",
    "name": "State Arpt",
    "citycode": "GOL",
    "city": "GOLD BEACH",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GAD",
    "name": "Gadsden Municipal",
    "citycode": "GAD",
    "city": "Gadsden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GLE",
    "name": "Gainesville Municipal Arpt",
    "citycode": "GLE",
    "city": "Gainesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GNV",
    "name": "Gainesville Regional",
    "citycode": "GNV",
    "city": "Gainesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GVL",
    "name": "LEE GILMER MEMORIAL ARPT",
    "citycode": "GVL",
    "city": "Gainesville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GAI",
    "name": "Montgomery Cty Arpt",
    "citycode": "GAI",
    "city": "Gaithersburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GAL",
    "name": "Galena Arpt",
    "citycode": "GAL",
    "city": "Galena",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GBG",
    "name": "Galesburg Arpt",
    "citycode": "GBG",
    "city": "Galesburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GQQ",
    "name": "Galion Municipal Arpt",
    "citycode": "GQQ",
    "city": "Galion",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GUP",
    "name": "Gallup Municipal",
    "citycode": "GUP",
    "city": "Gallup",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GLS",
    "name": "Scholes Field",
    "citycode": "GLS",
    "city": "Galveston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GEK",
    "name": "Ganes Creek Arpt",
    "citycode": "GEK",
    "city": "Ganes Creek",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GCK",
    "name": "Garden City Municipal",
    "citycode": "GCK",
    "city": "Garden City",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GYY",
    "name": "Gary International Arpt",
    "citycode": "GYY",
    "city": "Gary",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GKT",
    "name": "Gatlinburg Arpt",
    "citycode": "GKT",
    "city": "Gatlinburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GLR",
    "name": "Otsego Arpt",
    "citycode": "GLR",
    "city": "Gaylord",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GED",
    "name": "Sussex County Arpt",
    "citycode": "GED",
    "city": "Georgetown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GTY",
    "name": "Gettysburg Arpt",
    "citycode": "GTY",
    "city": "Gettysburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GCC",
    "name": "Campbell Cty Arpt",
    "citycode": "GCC",
    "city": "Gillette",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BQV",
    "name": "Bartlett Seaplane Base",
    "citycode": "GST",
    "city": "Glacier Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GST",
    "name": "Gustavus Arpt",
    "citycode": "GST",
    "city": "Glacier Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GGW",
    "name": "International Glasgow",
    "citycode": "GGW",
    "city": "Glasgow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GLW",
    "name": "Glasgow Municipal Arpt",
    "citycode": "GLW",
    "city": "Glasgow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GDV",
    "name": "Dawson Community Arpt",
    "citycode": "GDV",
    "city": "Glendive",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GFL",
    "name": "Warren County",
    "citycode": "GFL",
    "city": "Glens Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GWS",
    "name": "Glenwood Springs Arpt",
    "citycode": "GWS",
    "city": "Glenwood Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GLB",
    "name": "San Carlos Apache",
    "citycode": "GLB",
    "city": "Globe",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GSB",
    "name": "Seymour Johnson AFB",
    "citycode": "GSB",
    "city": "Goldsboro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GLD",
    "name": "Goodland Municipal",
    "citycode": "GLD",
    "city": "Goodland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GYR",
    "name": "Litchfield Goodyear Arpt",
    "citycode": "GYR",
    "city": "Goodyear",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JGC",
    "name": "Grand Canyon Heliport",
    "citycode": "GCN",
    "city": "Grand Canyon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NGC",
    "name": "Grand Canyon North Rim Arpt",
    "citycode": "GCN",
    "city": "Grand Canyon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GCN",
    "name": "Grand Canyon Natl Park Arpt",
    "citycode": "GCN",
    "city": "Grand Canyon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GFK",
    "name": "Grand Forks Mark Andrews Intl",
    "citycode": "GFK",
    "city": "Grand Forks",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GRI",
    "name": "Hall Cty Regional",
    "citycode": "GRI",
    "city": "Grand Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GJT",
    "name": "Walker Field Arpt",
    "citycode": "GJT",
    "city": "Grand Junction",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GPZ",
    "name": "Itasca County",
    "citycode": "GPZ",
    "city": "Grand Rapids",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GRR",
    "name": "Gerald R Ford Intl Airport",
    "citycode": "GRR",
    "city": "Grand Rapids",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GNT",
    "name": "Grants Milan Municipal Arpt",
    "citycode": "GNT",
    "city": "Grants",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GBR",
    "name": "Great Barrington Arpt",
    "citycode": "GBR",
    "city": "Great Barrington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GBD",
    "name": "Greate Bend Municipal",
    "citycode": "GBD",
    "city": "Great Bend",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GFA",
    "name": "Malmstrom Airforce Base",
    "citycode": "GTF",
    "city": "Great Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GTF",
    "name": "Great Falls Intl Arpt",
    "citycode": "GTF",
    "city": "Great Falls",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GXY",
    "name": "Weld County Regional Arpt",
    "citycode": "GXY",
    "city": "Greeley",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GRB",
    "name": "Austin Straubel Fld",
    "citycode": "GRB",
    "city": "Green Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RVR",
    "name": "Green River Arpt",
    "citycode": "RVR",
    "city": "Green River",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GCY",
    "name": "Municipal Greeneville Arpt",
    "citycode": "GCY",
    "city": "Greeneville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GSO",
    "name": "Piedmont Triad Intl",
    "citycode": "GSO",
    "city": "Greensboro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PGV",
    "name": "Pitt Greenville Arpt",
    "citycode": "PGV",
    "city": "Greenville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GLH",
    "name": "Greenville Municipal",
    "citycode": "GLH",
    "city": "Greenville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GDC",
    "name": "Donaldson Center Arpt",
    "citycode": "GSP",
    "city": "Greenville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GSP",
    "name": "Greenville Spartanburg Arpt",
    "citycode": "GSP",
    "city": "Greenville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GMU",
    "name": "Greenville Downtown Arpt",
    "citycode": "GSP",
    "city": "Greenville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPA",
    "name": "Downtown Memorial",
    "citycode": "GSP",
    "city": "Greenville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GWO",
    "name": "Leflore Arpt",
    "citycode": "GWO",
    "city": "Greenwood",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GEY",
    "name": "South Big Horn County",
    "citycode": "GEY",
    "city": "Greybull",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GUF",
    "name": "Edwards Arpt",
    "citycode": "GUF",
    "city": "Gulf Shores",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GPT",
    "name": "Biloxi Regional Arpt",
    "citycode": "GPT",
    "city": "Gulfport",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GKN",
    "name": "Gulkana Arpt",
    "citycode": "GKN",
    "city": "Gulkana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GUC",
    "name": "Gunnison Cty",
    "citycode": "GUC",
    "city": "Gunnison",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GUY",
    "name": "Guymon Municipal Arpt",
    "citycode": "GUY",
    "city": "Guymon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HAE",
    "name": "HAVASUPAI ARPT",
    "citycode": "HAE",
    "city": "HAVASUPAI",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HGR",
    "name": "Washington Cty Regional",
    "citycode": "HGR",
    "city": "Hagerstown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HNS",
    "name": "Haines Municipal Arpt",
    "citycode": "HNS",
    "city": "Haines",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HAF",
    "name": "Half Moon Bay Arpt",
    "citycode": "HAF",
    "city": "Half Moon Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HAB",
    "name": "Marion County",
    "citycode": "HAB",
    "city": "Hamilton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LFI",
    "name": "Langley Air force Base",
    "citycode": "LFI",
    "city": "Hampton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HNM",
    "name": "Hana Municipal",
    "citycode": "HNM",
    "city": "Hana",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HVE",
    "name": "Intermediate Arpt",
    "citycode": "HVE",
    "city": "Hanksville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HRL",
    "name": "Rio Grande Valley Intl Arpt",
    "citycode": "HRL",
    "city": "Harlingen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HAR",
    "name": "Harrisburg Skyport Airport",
    "citycode": "HAR",
    "city": "Harrisburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MDT",
    "name": "Harrisburg Intl",
    "citycode": "HAR",
    "city": "Harrisburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZUG",
    "name": "Harrisburg Railway Station",
    "citycode": "HAR",
    "city": "Harrisburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HRO",
    "name": "Boone County Arpt",
    "citycode": "HRO",
    "city": "Harrison",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ZRT",
    "name": "Hartford Railway Station",
    "citycode": "HFD",
    "city": "Hartford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BNH",
    "name": "Barnes Airport",
    "citycode": "HFD",
    "city": "Hartford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HFD",
    "name": "Brainard Arpt",
    "citycode": "HFD",
    "city": "Hartford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BDL",
    "name": "Bradley Intl Arpt",
    "citycode": "HFD",
    "city": "Hartford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HSI",
    "name": "Hastings Municipal",
    "citycode": "HSI",
    "city": "Hastings",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HNC",
    "name": "Hatteras Arpt",
    "citycode": "HNC",
    "city": "Hatteras",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HBG",
    "name": "Bobby L Chain Municipal",
    "citycode": "HBG",
    "city": "Hattiesburg",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HVR",
    "name": "City County",
    "citycode": "HVR",
    "city": "Havre",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HHR",
    "name": "Hawthorne Arpt",
    "citycode": "HHR",
    "city": "Hawthorne",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HAY",
    "name": "Haycock Arpt",
    "citycode": "HAY",
    "city": "Haycock",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HDN",
    "name": "Hayden Arpt",
    "citycode": "HDN",
    "city": "Hayden",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HYS",
    "name": "Hays Municipal",
    "citycode": "HYS",
    "city": "Hays",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HWD",
    "name": "Hayward Air Terminal",
    "citycode": "HWD",
    "city": "Hayward",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HYR",
    "name": "Hayward Municipal",
    "citycode": "HYR",
    "city": "Hayward",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HKB",
    "name": "Healy Lake Arpt",
    "citycode": "HKB",
    "city": "Healy Lake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HLN",
    "name": "Helena Municipal",
    "citycode": "HLN",
    "city": "Helena",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HEE",
    "name": "Helena Arpt",
    "citycode": "HEE",
    "city": "Helena",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HED",
    "name": "Herendeen Arpt",
    "citycode": "HED",
    "city": "Herendeen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AHC",
    "name": "Herlong Arpt",
    "citycode": "AHC",
    "city": "Herlong",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HIB",
    "name": "Hibbing Chisolm Arpt",
    "citycode": "HIB",
    "city": "Hibbing",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HKY",
    "name": "Hickory Municipal",
    "citycode": "HKY",
    "city": "Hickory",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HIO",
    "name": "Portland Hillsboro Arpt",
    "citycode": "HIO",
    "city": "Hillsboro",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ITO",
    "name": "Hilo Hawaii Intl",
    "citycode": "ITO",
    "city": "Hilo",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HHH",
    "name": "Hilton Head Municipal",
    "citycode": "HHH",
    "city": "Hilton Head",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HBH",
    "name": "Hobart Bay Arpt",
    "citycode": "HBH",
    "city": "Hobart Bay",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HOB",
    "name": "Lea County Arpt",
    "citycode": "HOB",
    "city": "Hobbs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HBB",
    "name": "Industrial Airpark Arpt",
    "citycode": "HOB",
    "city": "Hobbs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HGZ",
    "name": "Hogatza Arpt",
    "citycode": "HGZ",
    "city": "Hogatza",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HLM",
    "name": "Park Township",
    "citycode": "HLM",
    "city": "Holland",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HYL",
    "name": "Sea Plane Base",
    "citycode": "HYL",
    "city": "Hollis",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HLI",
    "name": "Hollister Arpt",
    "citycode": "HLI",
    "city": "Hollister",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HOM",
    "name": "Homer Municipal Arpt",
    "citycode": "HOM",
    "city": "Homer",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HST",
    "name": "Homestead Municipal",
    "citycode": "HST",
    "city": "Homestead",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HIK",
    "name": "Hickam Air Force Base",
    "citycode": "HNL",
    "city": "Honolulu",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MKK",
    "name": "Molokai Arpt",
    "citycode": "MKK",
    "city": "Hoolehua",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HNH",
    "name": "Hoonah Municipal Arpt",
    "citycode": "HNH",
    "city": "Hoonah",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HOP",
    "name": "Hopkinsville Christian Country Arpt",
    "citycode": "HOP",
    "city": "Hopkinsville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HOT",
    "name": "Memorial Field",
    "citycode": "HOT",
    "city": "Hot Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HSP",
    "name": "Ingalls Field",
    "citycode": "HSP",
    "city": "Hot Springs",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CMX",
    "name": "Houghton Cty Memorial Arpt",
    "citycode": "CMX",
    "city": "Houghton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HUM",
    "name": "Terrebonne Arpt",
    "citycode": "HUM",
    "city": "Houma",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JWH",
    "name": "Westchase Hilton Heliport",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "IWS",
    "name": "West Houston",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JWL",
    "name": "Woodlawns Airport",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JMA",
    "name": "Marriot Astrodome Arpt",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DWH",
    "name": "David Wayne Hooks Arpt",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JGQ",
    "name": "Transco Twr Galleria",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "SPX",
    "name": "Spacelandarpt",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "JGP",
    "name": "Greenway Plaza Heliport",
    "citycode": "HOU",
    "city": "Houston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RME",
    "name": "Griffiss International Airport",
    "citycode": "RME",
    "city": "Rome",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MCD",
    "name": "Mackinac Island Airport",
    "citycode": "MCD",
    "city": "Mackinac Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ATE",
    "name": "Antlers Municipal Airport (FAA: 80F)",
    "citycode": "ATE",
    "city": "Antlers, Oklahoma",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HAO",
    "name": "Butler County Regional Airport",
    "citycode": "HAO",
    "city": "Hamilton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HZL",
    "name": "Hazleton Municipal Airport",
    "citycode": "HZL",
    "city": "Hazleton, Pennsylvania, United States",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RNC",
    "name": "Warren County Memorial Airport",
    "citycode": "RNC",
    "city": "McMinnville",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "ILN",
    "name": "Wilmington Air Park",
    "citycode": "ILN",
    "city": "Wilmington",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AMN",
    "name": "Gratiot Community Airport",
    "citycode": "AMN",
    "city": "Alma",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DKK",
    "name": "Chautauqua County\/Dunkirk Airport",
    "citycode": "DKK",
    "city": "Dunkirk",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HCC",
    "name": "Columbia County Airport (FAA: 1B1)",
    "citycode": "HCC",
    "city": "Ghent",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MUT",
    "name": "Muscatine Municipal Airport",
    "citycode": "MUT",
    "city": "Muscatine",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MMN",
    "name": "Minute Man Air Field (FAA: 6B6)",
    "citycode": "MMN",
    "city": "Stow",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "TSP",
    "name": "Tehachapi Municipal Airport",
    "citycode": "TSP",
    "city": "Tehachapi",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HTL",
    "name": "Roscommon CountyBlodgett Memorial Airport",
    "citycode": "HTL",
    "city": "HoughtonLake",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "UES",
    "name": "Waukesha County Airport (Crites Field)",
    "citycode": "UES",
    "city": "Waukesha",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AVX",
    "name": "Catalina Airport",
    "citycode": "AVX",
    "city": "Avalon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MNN",
    "name": "Marion Municipal Airport",
    "citycode": "MNN",
    "city": "Marion",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "NYC",
    "name": "Metropolitan area2",
    "citycode": "NYC",
    "city": "New York City, New York",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GSH",
    "name": "Goshen Municipal Airport",
    "citycode": "GSH",
    "city": "Goshen",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CSQ",
    "name": "Creston Municipal Airport",
    "citycode": "CSQ",
    "city": "Creston",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "FID",
    "name": "Elizabeth Field (FAA: 0B8)",
    "citycode": "FID",
    "city": "Fishers Island",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BAF",
    "name": "Westfield-Barnes Regional Airport",
    "citycode": "BAF",
    "city": "Westfield",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "RID",
    "name": "Richmond Municipal Airport",
    "citycode": "RID",
    "city": "Richmond",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "HMT",
    "name": "Hemet-Ryan Airport",
    "citycode": "HMT",
    "city": "Hemet",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BAM",
    "name": "Battle Mountain Airport (Lander County Airport)",
    "citycode": "BAM",
    "city": "Battle Mountain",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "PBG",
    "name": "Plattsburgh International Airport",
    "citycode": "PBG",
    "city": "Plattsburgh",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "GRE",
    "name": "Greenville Airport",
    "citycode": "GRE",
    "city": "Greer",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BLM",
    "name": "Monmouth Executive Airport",
    "citycode": "BLM",
    "city": "Wall Township",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "KLL",
    "name": "Levelock Airport",
    "citycode": "KLL",
    "city": "Levelock",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "USA",
    "name": "Concord Regional Airport (FAA: JQF)",
    "citycode": "USA",
    "city": "Concord",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "OXC",
    "name": "Waterbury Oxford Airport",
    "citycode": "OXC",
    "city": "Oxford",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "AFN",
    "name": "Jaffrey AirportSilver Ranch",
    "citycode": "AFN",
    "city": "Jaffrey",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "DDN",
    "name": "Delta Downs Airport",
    "citycode": "DDN",
    "city": "Orange",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "CTO",
    "name": "Calverton Executive Airpark (FAA: 3C8)",
    "citycode": "CTO",
    "city": "Calverton",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MLL",
    "name": "Marshall Don Hunter Airport",
    "citycode": "MLL",
    "city": "Marshall",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "BBX",
    "name": "Wings Field",
    "citycode": "BBX",
    "city": "Philadelphia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LKP",
    "name": "Lake Placid Airport",
    "citycode": "LKP",
    "city": "Lake Placid",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MMS",
    "name": "Selfs Airport",
    "citycode": "MMS",
    "city": "Marks",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MVL",
    "name": "Morrisville–Stowe State Airport",
    "citycode": "MVL",
    "city": "Morristown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "VLA",
    "name": "Vandalia Municipal Airport",
    "citycode": "VLA",
    "city": "Vandalia",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "EFK",
    "name": "Newport State Airport",
    "citycode": "EFK",
    "city": "Middletown",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "LLX",
    "name": "Caledonia County Airport (FAA: CDA)",
    "citycode": "LLX",
    "city": "Lyndon",
    "country": "United States",
    "countrycode": "US"
  },
  {
    "code": "MDY",
    "name": "Sand Island Field",
    "citycode": "MDY",
    "city": "Midway Island",
    "country": "United States Minor Outlying Islands",
    "countrycode": "UM"
  },
  {
    "code": "PDP",
    "name": "Cap Curbelo Arpt",
    "citycode": "PDP",
    "city": "Punta Del Este",
    "country": "Uruguay",
    "countrycode": "UY"
  },
  {
    "code": "STY",
    "name": "Salto Arpt",
    "citycode": "STY",
    "city": "Salto",
    "country": "Uruguay",
    "countrycode": "UY"
  },
  {
    "code": "MLZ",
    "name": "Melo Arpt",
    "citycode": "MLZ",
    "city": "Melo",
    "country": "Uruguay",
    "countrycode": "UY"
  },
  {
    "code": "ATI",
    "name": "Artigas Arpt",
    "citycode": "ATI",
    "city": "Artigas",
    "country": "Uruguay",
    "countrycode": "UY"
  },
  {
    "code": "CYR",
    "name": "Colonia Arpt",
    "citycode": "CYR",
    "city": "Colonia",
    "country": "Uruguay",
    "countrycode": "UY"
  },
  {
    "code": "PDU",
    "name": "Paysandu Arpt",
    "citycode": "PDU",
    "city": "Paysandu",
    "country": "Uruguay",
    "countrycode": "UY"
  },
  {
    "code": "MVD",
    "name": "Carrasco Arpt",
    "citycode": "MVD",
    "city": "Montevideo",
    "country": "Uruguay",
    "countrycode": "UY"
  },
  {
    "code": "UGC",
    "name": "Urgench Arpt",
    "citycode": "UGC",
    "city": "Urgench",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "BHK",
    "name": "Bukhara Arpt",
    "citycode": "BHK",
    "city": "Bukhara",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "KSQ",
    "name": "Karshi Airport",
    "citycode": "KSQ",
    "city": "Karshi",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "NMA",
    "name": "Namangan Airport",
    "citycode": "NMA",
    "city": "Namangan",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "FEG",
    "name": "Fergana International Airport",
    "citycode": "FEG",
    "city": "Oepraha",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "NCU",
    "name": "Nukus Airport",
    "citycode": "NCU",
    "city": "Nukus",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "SKD",
    "name": "Samarkand Arpt",
    "citycode": "SKD",
    "city": "Samarkand",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "TAS",
    "name": "Vostochny Arpt",
    "citycode": "TAS",
    "city": "Tashkent",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "AZN",
    "name": "Andizhan Airport",
    "citycode": "AZN",
    "city": "Andizhan",
    "country": "Uzbekistan",
    "countrycode": "UZ"
  },
  {
    "code": "TAH",
    "name": "Tanna Arpt",
    "citycode": "TAH",
    "city": "Tanna",
    "country": "Vanuatu",
    "countrycode": "VU"
  },
  {
    "code": "SON",
    "name": "Pekoa Arpt",
    "citycode": "SON",
    "city": "Espiritu Santo",
    "country": "Vanuatu",
    "countrycode": "VU"
  },
  {
    "code": "NUS",
    "name": "Norsup Airport",
    "citycode": "NUS",
    "city": "Norsup",
    "country": "Vanuatu",
    "countrycode": "VU"
  },
  {
    "code": "VLI",
    "name": "Bauerfield Arpt",
    "citycode": "VLI",
    "city": "Port Vila",
    "country": "Vanuatu",
    "countrycode": "VU"
  },
  {
    "code": "CCV",
    "name": "Craig Cove Arpt",
    "citycode": "CCV",
    "city": "Craig Cove",
    "country": "Vanuatu",
    "countrycode": "VU"
  },
  {
    "code": "TOH",
    "name": "Torres Airstrip",
    "citycode": "TOH",
    "city": "Torres",
    "country": "Vanuatu",
    "countrycode": "VU"
  },
  {
    "code": "SSR",
    "name": "Sara Airport",
    "citycode": "SSR",
    "city": "Sara",
    "country": "Vanuatu",
    "countrycode": "VU"
  },
  {
    "code": "SCI",
    "name": "Aeropuerto Santo Domingo",
    "citycode": "SCI",
    "city": "San Crystobal",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "SVZ",
    "name": "San Antonio Arpt",
    "citycode": "SVZ",
    "city": "San Antonio",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "PZO",
    "name": "Puerto Ordaz Arpt",
    "citycode": "PZO",
    "city": "Puerto Ordaz",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "PMV",
    "name": "Delcaribe Gen S Marino Arpt",
    "citycode": "PMV",
    "city": "Porlamar",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "MRD",
    "name": "Alberto Carnevalli Arpt",
    "citycode": "MRD",
    "city": "Merida",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "MUN",
    "name": "Quiriquire Arpt",
    "citycode": "MUN",
    "city": "Maturin",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "MYC",
    "name": "Maracay Arpt",
    "citycode": "MYC",
    "city": "Maracay",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "VLV",
    "name": "Carvajal Arpt",
    "citycode": "VLV",
    "city": "Valera",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "VLN",
    "name": "Valencia Airport",
    "citycode": "VLN",
    "city": "Valencia",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "STD",
    "name": "Mayor Humberto Vivas Guerrero Arpt",
    "citycode": "STD",
    "city": "Santo Domingo",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "ICA",
    "name": "Icabarú Airport",
    "citycode": "ICA",
    "city": "Icabaru",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "STB",
    "name": "Las Delicias Arpt",
    "citycode": "STB",
    "city": "Santa Barbara",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "SOM",
    "name": "El Tigre Arpt",
    "citycode": "SOM",
    "city": "San Tome",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "SFD",
    "name": "Las Flecheras",
    "citycode": "SFD",
    "city": "San Fernando De Apure",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "SFX",
    "name": "San Felix Arpt",
    "citycode": "SFX",
    "city": "San Felix",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "SNF",
    "name": "San Felipe Airport",
    "citycode": "SNF",
    "city": "San Felipe",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "MAR",
    "name": "La Chinita Arpt",
    "citycode": "MAR",
    "city": "Maracaibo",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "LSP",
    "name": "Josefa Camejo Arpt",
    "citycode": "LSP",
    "city": "Las Piedras",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "VIG",
    "name": "El Vigia Arpt",
    "citycode": "VIG",
    "city": "El Vigia",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "CUM",
    "name": "Antonio Jose De Sucre",
    "citycode": "CUM",
    "city": "Cumana",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "CZE",
    "name": "Coro Arpt",
    "citycode": "CZE",
    "city": "Coro",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "CBL",
    "name": "Ciudad Bolivar Arpt",
    "citycode": "CBL",
    "city": "Ciudad Bolivar",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "CCS",
    "name": "Simon Bolivar Arpt",
    "citycode": "CCS",
    "city": "Caracas",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "BLA",
    "name": "Gen J A Anzoategui Arpt",
    "citycode": "BLA",
    "city": "Barcelona",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "CBS",
    "name": "Oro Negro Arpt",
    "citycode": "CBS",
    "city": "Cabimas",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "BRM",
    "name": "Airport Barquisimeto",
    "citycode": "BRM",
    "city": "Barquisimeto",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "BNS",
    "name": "Barinasairport",
    "citycode": "BNS",
    "city": "Barinas",
    "country": "Venezuela",
    "countrycode": "VE"
  },
  {
    "code": "THD",
    "name": "Tho Xuan Airport",
    "citycode": "THD",
    "city": "Thanh Hóa, Vietnam",
    "country": "Vietnam",
    "countrycode": "VN"
  },
  {
    "code": "VCL",
    "name": "Chulai Arpt",
    "citycode": "VCL",
    "city": "Tamky",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "SQH",
    "name": "Na San Arpt",
    "citycode": "SQH",
    "city": "Son La",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "VKG",
    "name": "Rach Gia Arpt",
    "citycode": "VKG",
    "city": "Rach Gia",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "UIH",
    "name": "Qui Nhon Arpt",
    "citycode": "UIH",
    "city": "Qui Nhon",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "PXU",
    "name": "Pleiku Arpt",
    "citycode": "PXU",
    "city": "Pleiku",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "PQC",
    "name": "Duong Dang Arpt",
    "citycode": "PQC",
    "city": "Phu Quoc",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "TBB",
    "name": "Tuy Hoa Arpt",
    "citycode": "TBB",
    "city": "Tuy Hoa",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "CXR",
    "name": "Cam Ranh Arpt",
    "citycode": "CXR",
    "city": "Cam Ranh",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "BMV",
    "name": "Phung Duc Arpt",
    "citycode": "BMV",
    "city": "Banmethuot",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "VII",
    "name": "Vinh City Arpt",
    "citycode": "VII",
    "city": "Vinh City",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "HAN",
    "name": "Noibai Arpt",
    "citycode": "HAN",
    "city": "Hanoi",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "VCA",
    "name": "Can Tho Arpt",
    "citycode": "VCA",
    "city": "Can Tho",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "PHH",
    "name": "Phan Thiet Arpt",
    "citycode": "PHH",
    "city": "Phan Thiet",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "NHA",
    "name": "Nha Trang Arpt",
    "citycode": "NHA",
    "city": "Nha Trang",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "HUI",
    "name": "Phu Bai Arpt",
    "citycode": "HUI",
    "city": "Hu",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "VCS",
    "name": "Coong Arpt",
    "citycode": "VCS",
    "city": "Con Dao",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "HPH",
    "name": "Catbi Arpt",
    "citycode": "HPH",
    "city": "Haiphong",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "VDH",
    "name": "Dong Hoi Airport",
    "citycode": "VDH",
    "city": "Dong Hoi",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "DAD",
    "name": "Da Nang Arpt",
    "citycode": "DAD",
    "city": "Da Nang",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "DIN",
    "name": "Gialam Arpt",
    "citycode": "DIN",
    "city": "Dien Bien Phu",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "DLI",
    "name": "Lienkhang",
    "citycode": "DLI",
    "city": "Dalat",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "SGN",
    "name": "Tan Son Nhut Arpt",
    "citycode": "SGN",
    "city": "Ho Chi Minh City",
    "country": "Viet Nam",
    "countrycode": "VN"
  },
  {
    "code": "RAD",
    "name": "Road Town Arpt",
    "citycode": "TOV",
    "city": "Tortola Westend",
    "country": "Virgin Islands",
    "countrycode": "VG"
  },
  {
    "code": "TOV",
    "name": "Tortola British Virgin Isles",
    "citycode": "EIS",
    "city": "Beef Island",
    "country": "Virgin Islands",
    "countrycode": "VG"
  },
  {
    "code": "EIS",
    "name": "Beef Island Arpt",
    "citycode": "EIS",
    "city": "Beef Island",
    "country": "Virgin Islands",
    "countrycode": "VG"
  },
  {
    "code": "VIJ",
    "name": "Virgin Gorda Arpt",
    "citycode": "VIJ",
    "city": "Virgin Gorda",
    "country": "Virgin Islands",
    "countrycode": "VG"
  },
  {
    "code": "MKX",
    "name": "Mukalla Arpt",
    "citycode": "MKX",
    "city": "Mukalla",
    "country": "Yemen",
    "countrycode": "YE"
  },
  {
    "code": "HOD",
    "name": "Hodeidah Arpt",
    "citycode": "HOD",
    "city": "Hodeidah",
    "country": "Yemen",
    "countrycode": "YE"
  },
  {
    "code": "AAY",
    "name": "Al Ghaydah Arpt",
    "citycode": "AAY",
    "city": "Al Ghaydah",
    "country": "Yemen",
    "countrycode": "YE"
  },
  {
    "code": "ADE",
    "name": "Yemen Intl Arpt",
    "citycode": "ADE",
    "city": "Aden",
    "country": "Yemen",
    "countrycode": "YE"
  },
  {
    "code": "EAB",
    "name": "Abbs Airport",
    "citycode": "EAB",
    "city": "Abbs",
    "country": "Yemen",
    "countrycode": "YE"
  },
  {
    "code": "TAI",
    "name": "Taizz International Airport",
    "citycode": "TAI",
    "city": "Taiz",
    "country": "Yemen",
    "countrycode": "YE"
  },
  {
    "code": "SAH",
    "name": "Sanaa Intl Airport",
    "citycode": "SAH",
    "city": "Sanaa",
    "country": "Yemen",
    "countrycode": "YE"
  },
  {
    "code": "RIY",
    "name": "Riyan Mukalla Arpt",
    "citycode": "RIY",
    "city": "Riyan",
    "country": "Yemen",
    "countrycode": "YE"
  },
  {
    "code": "MFU",
    "name": "Mfuwe Airport",
    "citycode": "MFU",
    "city": "Mfuwe, Zambia",
    "country": "Zambia",
    "countrycode": "ZM"
  },
  {
    "code": "LUN",
    "name": "Lusaka Airport",
    "citycode": "LUN",
    "city": "Lusaka",
    "country": "Zambia",
    "countrycode": "ZM"
  },
  {
    "code": "LVI",
    "name": "Livingstone Arpt",
    "citycode": "LVI",
    "city": "Livingstone",
    "country": "Zambia",
    "countrycode": "ZM"
  },
  {
    "code": "NLA",
    "name": "Ndola Arpt",
    "citycode": "NLA",
    "city": "N Dola",
    "country": "Zambia",
    "countrycode": "ZM"
  },
  {
    "code": "VFA",
    "name": "Victoria Falls Arpt",
    "citycode": "VFA",
    "city": "Victoria Falls",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "BZH",
    "name": "Bumi Hills Arpt",
    "citycode": "BZH",
    "city": "Bumi Hills",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "BUQ",
    "name": "Bulawayo Arpt",
    "citycode": "BUQ",
    "city": "Bulawayo",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "GWE",
    "name": "Gweru Airport",
    "citycode": "GWE",
    "city": "Gweru",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "HWN",
    "name": "Hwange Arpt",
    "citycode": "HWN",
    "city": "Hwange",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "KAB",
    "name": "Kariba Arpt",
    "citycode": "KAB",
    "city": "Kariba Dam",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "UTA",
    "name": "Mutare Arpt",
    "citycode": "UTA",
    "city": "Mutare",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "MJW",
    "name": "Mahenye Airfield",
    "citycode": "MJW",
    "city": "Mahenye",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "MVZ",
    "name": "Ft Victoria Arpt",
    "citycode": "MVZ",
    "city": "Masvingo",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  },
  {
    "code": "HRE",
    "name": "Harare Arpt",
    "citycode": "HRE",
    "city": "Harare",
    "country": "Zimbabwe",
    "countrycode": "ZW"
  }
];
