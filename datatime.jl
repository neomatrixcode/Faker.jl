	#Pkg.add("Dates")
 	#using Dates

    centuries = ("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII", "XIII", "XIV", "XV", "XVI","XVII", "XVIII", "XIX", "XX", "XXI")

    countries = (Dict("timezones"=> ["Europe/Andorra"], "code"=> "AD", "continent"=> "Europe", "name"=> "Andorra", "capital"=> "Andorra la Vella"),Dict("timezones"=> ["Asia/Kabul"], "code"=> "AF", "continent"=> "Asia", "name"=> "Afghanistan", "capital"=> "Kabul"),Dict("timezones"=> ["America/Antigua"], "code"=> "AG", "continent"=> "North America", "name"=> "Antigua and Barbuda", "capital"=> "St. John's"),Dict("timezones"=> ["Europe/Tirane"], "code"=> "AL", "continent"=> "Europe", "name"=> "Albania", "capital"=> "Tirana"),Dict("timezones"=> ["Asia/Yerevan"], "code"=> "AM", "continent"=> "Asia", "name"=> "Armenia", "capital"=> "Yerevan"),Dict("timezones"=> ["Africa/Luanda"], "code"=> "AO", "continent"=> "Africa", "name"=> "Angola", "capital"=> "Luanda"),Dict("timezones"=> ["America/Argentina/Buenos_Aires", "America/Argentina/Cordoba", "America/Argentina/Jujuy", "America/Argentina/Tucuman", "America/Argentina/Catamarca", "America/Argentina/La_Rioja", "America/Argentina/San_Juan", "America/Argentina/Mendoza", "America/Argentina/Rio_Gallegos", "America/Argentina/Ushuaia"], "code"=> "AR", "continent"=> "South America", "name"=> "Argentina", "capital"=> "Buenos Aires"),Dict("timezones"=> ["Europe/Vienna"], "code"=> "AT", "continent"=> "Europe", "name"=> "Austria", "capital"=> "Vienna"),Dict("timezones"=> ["Australia/Lord_Howe", "Australia/Hobart", "Australia/Currie", "Australia/Melbourne", "Australia/Sydney", "Australia/Broken_Hill", "Australia/Brisbane", "Australia/Lindeman", "Australia/Adelaide", "Australia/Darwin", "Australia/Perth"], "code"=> "AU", "continent"=> "Oceania", "name"=> "Australia", "capital"=> "Canberra"),Dict("timezones"=> ["Asia/Baku"], "code"=> "AZ", "continent"=> "Asia", "name"=> "Azerbaijan", "capital"=> "Baku"),Dict("timezones"=> ["America/Barbados"], "code"=> "BB", "continent"=> "North America", "name"=> "Barbados", "capital"=> "Bridgetown"),Dict("timezones"=> ["Asia/Dhaka"], "code"=> "BD", "continent"=> "Asia", "name"=> "Bangladesh", "capital"=> "Dhaka"),Dict("timezones"=> ["Europe/Brussels"], "code"=> "BE", "continent"=> "Europe", "name"=> "Belgium", "capital"=> "Brussels"),Dict("timezones"=> ["Africa/Ouagadougou"], "code"=> "BF", "continent"=> "Africa", "name"=> "Burkina Faso", "capital"=> "Ouagadougou"),Dict("timezones"=> ["Europe/Sofia"], "code"=> "BG", "continent"=> "Europe", "name"=> "Bulgaria", "capital"=> "Sofia"),Dict("timezones"=> ["Asia/Bahrain"], "code"=> "BH", "continent"=> "Asia", "name"=> "Bahrain", "capital"=> "Manama"),Dict("timezones"=> ["Africa/Bujumbura"], "code"=> "BI", "continent"=> "Africa", "name"=> "Burundi", "capital"=> "Bujumbura"),Dict("timezones"=> ["Africa/Porto-Novo"], "code"=> "BJ", "continent"=> "Africa", "name"=> "Benin", "capital"=> "Porto-Novo"),Dict("timezones"=> ["Asia/Brunei"], "code"=> "BN", "continent"=> "Asia", "name"=> "Brunei Darussalam", "capital"=> "Bandar Seri Begawan"),Dict("timezones"=> ["America/La_Paz"], "code"=> "BO", "continent"=> "South America", "name"=> "Bolivia", "capital"=> "Sucre"),Dict("timezones"=> ["America/Noronha", "America/Belem", "America/Fortaleza", "America/Recife", "America/Araguaina", "America/Maceio", "America/Bahia", "America/Sao_Paulo", "America/Campo_Grande", "America/Cuiaba", "America/Porto_Velho", "America/Boa_Vista", "America/Manaus", "America/Eirunepe", "America/Rio_Branco"], "code"=> "BR", "continent"=> "South America", "name"=> "Brazil", "capital"=> "Brasília"),Dict("timezones"=> ["America/Nassau"], "code"=> "BS", "continent"=> "North America", "name"=> "Bahamas", "capital"=> "Nassau"),Dict("timezones"=> ["Asia/Thimphu"], "code"=> "BT", "continent"=> "Asia", "name"=> "Bhutan", "capital"=> "Thimphu"),Dict("timezones"=> ["Africa/Gaborone"], "code"=> "BW", "continent"=> "Africa", "name"=> "Botswana", "capital"=> "Gaborone"),Dict("timezones"=> ["Europe/Minsk"], "code"=> "BY", "continent"=> "Europe", "name"=> "Belarus", "capital"=> "Minsk"),Dict("timezones"=> ["America/Belize"], "code"=> "BZ", "continent"=> "North America", "name"=> "Belize", "capital"=> "Belmopan"),Dict("timezones"=> ["America/St_Johns", "America/Halifax", "America/Glace_Bay", "America/Moncton", "America/Goose_Bay", "America/Blanc-Sablon", "America/Montreal", "America/Toronto", "America/Nipigon", "America/Thunder_Bay", "America/Pangnirtung", "America/Iqaluit", "America/Atikokan", "America/Rankin_Inlet", "America/Winnipeg", "America/Rainy_River", "America/Cambridge_Bay", "America/Regina", "America/Swift_Current", "America/Edmonton", "America/Yellowknife", "America/Inuvik", "America/Dawson_Creek", "America/Vancouver", "America/Whitehorse", "America/Dawson"], "code"=> "CA", "continent"=> "North America", "name"=> "Canada", "capital"=> "Ottawa"),Dict("timezones"=> ["Africa/Kinshasa", "Africa/Lubumbashi"], "code"=> "CD", "continent"=> "Africa", "name"=> "Democratic Republic of the Congo", "capital"=> "Kinshasa"),Dict("timezones"=> ["Africa/Brazzaville"], "code"=> "CG", "continent"=> "Africa", "name"=> "Republic of the Congo", "capital"=> "Brazzaville"),Dict("timezones"=> ["Africa/Abidjan"], "code"=> "CI", "continent"=> "Africa", "name"=> "Cöte d´Ivoire", "capital"=> "Yamoussoukro"),Dict("timezones"=> ["America/Santiago", "Pacific/Easter"], "code"=> "CL", "continent"=> "South America", "name"=> "Chile", "capital"=> "Santiago"),Dict("timezones"=> ["Africa/Douala"], "code"=> "CM", "continent"=> "Africa", "name"=> "Cameroon", "capital"=> "Yaound\xc3\xa9"),Dict("timezones"=> ["Asia/Shanghai", "Asia/Harbin", "Asia/Chongqing", "Asia/Urumqi", "Asia/Kashgar"], "code"=> "CN", "continent"=> "Asia", "name"=> "People´s Republic of China", "capital"=> "Beijing"),Dict("timezones"=> ["America/Bogota"], "code"=> "CO", "continent"=> "South America", "name"=> "Colombia", "capital"=> "Bogot\xc3\xa1"),Dict("timezones"=> ["America/Costa_Rica"], "code"=> "CR", "continent"=> "North America", "name"=> "Costa Rica", "capital"=> "San Jos\xc3\xa9"),Dict("timezones"=> ["America/Havana"], "code"=> "CU", "continent"=> "North America", "name"=> "Cuba", "capital"=> "Havana"),Dict("timezones"=> ["Atlantic/Cape_Verde"], "code"=> "CV", "continent"=> "Africa", "name"=> "Cape Verde", "capital"=> "Praia"),Dict("timezones"=> ["Asia/Nicosia"], "code"=> "CY", "continent"=> "Asia", "name"=> "Cyprus", "capital"=> "Nicosia"),Dict("timezones"=> ["Europe/Prague"], "code"=> "CZ", "continent"=> "Europe", "name"=> "Czech Republic", "capital"=> "Prague"),Dict("timezones"=> ["Europe/Berlin"], "code"=> "DE", "continent"=> "Europe", "name"=> "Germany", "capital"=> "Berlin"),Dict("timezones"=> ["Africa/Djibouti"], "code"=> "DJ", "continent"=> "Africa", "name"=> "Djibouti", "capital"=> "Djibouti City"),Dict("timezones"=> ["Europe/Copenhagen"], "code"=> "DK", "continent"=> "Europe", "name"=> "Denmark", "capital"=> "Copenhagen"),Dict("timezones"=> ["America/Dominica"], "code"=> "DM", "continent"=> "North America", "name"=> "Dominica", "capital"=> "Roseau"),Dict("timezones"=> ["America/Santo_Domingo"], "code"=> "DO", "continent"=> "North America", "name"=> "Dominican Republic", "capital"=> "Santo Domingo"),Dict("timezones"=> ["America/Guayaquil", "Pacific/Galapagos"], "code"=> "EC", "continent"=> "South America", "name"=> "Ecuador", "capital"=> "Quito"),Dict("timezones"=> ["Europe/Tallinn"], "code"=> "EE", "continent"=> "Europe", "name"=> "Estonia", "capital"=> "Tallinn"),Dict("timezones"=> ["Africa/Cairo"], "code"=> "EG", "continent"=> "Africa", "name"=> "Egypt", "capital"=> "Cairo"),Dict("timezones"=> ["Africa/Asmera"], "code"=> "ER", "continent"=> "Africa", "name"=> "Eritrea", "capital"=> "Asmara"),Dict("timezones"=> ["Africa/Addis_Ababa"], "code"=> "ET", "continent"=> "Africa", "name"=> "Ethiopia", "capital"=> "Addis Ababa"),Dict("timezones"=> ["Europe/Helsinki"], "code"=> "FI", "continent"=> "Europe", "name"=> "Finland", "capital"=> "Helsinki"),Dict("timezones"=> ["Pacific/Fiji"], "code"=> "FJ", "continent"=> "Oceania", "name"=> "Fiji", "capital"=> "Suva"),Dict("timezones"=> ["Europe/Paris"], "code"=> "FR", "continent"=> "Europe", "name"=> "France", "capital"=> "Paris"),Dict("timezones"=> ["Africa/Libreville"], "code"=> "GA", "continent"=> "Africa", "name"=> "Gabon", "capital"=> "Libreville"),Dict("timezones"=> ["Asia/Tbilisi"], "code"=> "GE", "continent"=> "Asia", "name"=> "Georgia", "capital"=> "Tbilisi"),Dict("timezones"=> ["Africa/Accra"], "code"=> "GH", "continent"=> "Africa", "name"=> "Ghana", "capital"=> "Accra"),Dict("timezones"=> ["Africa/Banjul"], "code"=> "GM", "continent"=> "Africa", "name"=> "The Gambia", "capital"=> "Banjul"),Dict("timezones"=> ["Africa/Conakry"], "code"=> "GN", "continent"=> "Africa", "name"=> "Guinea", "capital"=> "Conakry"),Dict("timezones"=> ["Europe/Athens"], "code"=> "GR", "continent"=> "Europe", "name"=> "Greece", "capital"=> "Athens"),Dict("timezones"=> ["America/Guatemala"], "code"=> "GT", "continent"=> "North America", "name"=> "Guatemala", "capital"=> "Guatemala City"),Dict("timezones"=> ["America/Guatemala"], "code"=> "GT", "continent"=> "North America", "name"=> "Haiti", "capital"=> "Port-au-Prince"),Dict("timezones"=> ["Africa/Bissau"], "code"=> "GW", "continent"=> "Africa", "name"=> "Guinea-Bissau", "capital"=> "Bissau"),Dict("timezones"=> ["America/Guyana"], "code"=> "GY", "continent"=> "South America", "name"=> "Guyana", "capital"=> "Georgetown"),Dict("timezones"=> ["America/Tegucigalpa"], "code"=> "HN", "continent"=> "North America", "name"=> "Honduras", "capital"=> "Tegucigalpa"),Dict("timezones"=> ["Europe/Budapest"], "code"=> "HU", "continent"=> "Europe", "name"=> "Hungary", "capital"=> "Budapest"),Dict("timezones"=> ["Asia/Jakarta", "Asia/Pontianak", "Asia/Makassar", "Asia/Jayapura"], "code"=> "ID", "continent"=> "Asia", "name"=> "Indonesia", "capital"=> "Jakarta"),Dict("timezones"=> ["Europe/Dublin"], "code"=> "IE", "continent"=> "Europe", "name"=> "Republic of Ireland", "capital"=> "Dublin"),Dict("timezones"=> ["Asia/Jerusalem"], "code"=> "IL", "continent"=> "Asia", "name"=> "Israel", "capital"=> "Jerusalem"),Dict("timezones"=> ["Asia/Calcutta"], "code"=> "IN", "continent"=> "Asia", "name"=> "India", "capital"=> "New Delhi"),Dict("timezones"=> ["Asia/Baghdad"], "code"=> "IQ", "continent"=> "Asia", "name"=> "Iraq", "capital"=> "Baghdad"),Dict("timezones"=> ["Asia/Tehran"], "code"=> "IR", "continent"=> "Asia", "name"=> "Iran", "capital"=> "Tehran"),Dict("timezones"=> ["Atlantic/Reykjavik"], "code"=> "IS", "continent"=> "Europe", "name"=> "Iceland", "capital"=> "Reykjav\xc3\xadk"),Dict("timezones"=> ["Europe/Rome"], "code"=> "IT", "continent"=> "Europe", "name"=> "Italy", "capital"=> "Rome"),Dict("timezones"=> ["America/Jamaica"], "code"=> "JM", "continent"=> "North America", "name"=> "Jamaica", "capital"=> "Kingston"),Dict("timezones"=> ["Asia/Amman"], "code"=> "JO", "continent"=> "Asia", "name"=> "Jordan", "capital"=> "Amman"),Dict("timezones"=> ["Asia/Tokyo"], "code"=> "JP", "continent"=> "Asia", "name"=> "Japan", "capital"=> "Tokyo"),Dict("timezones"=> ["Africa/Nairobi"], "code"=> "KE", "continent"=> "Africa", "name"=> "Kenya", "capital"=> "Nairobi"),Dict("timezones"=> ["Asia/Bishkek"], "code"=> "KG", "continent"=> "Asia", "name"=> "Kyrgyzstan", "capital"=> "Bishkek"),Dict("timezones"=> ["Pacific/Tarawa", "Pacific/Enderbury", "Pacific/Kiritimati"], "code"=> "KI", "continent"=> "Oceania", "name"=> "Kiribati", "capital"=> "Tarawa"),Dict("timezones"=> ["Asia/Pyongyang"], "code"=> "KP", "continent"=> "Asia", "name"=> "North Korea", "capital"=> "Pyongyang"),Dict("timezones"=> ["Asia/Seoul"], "code"=> "KR", "continent"=> "Asia", "name"=> "South Korea", "capital"=> "Seoul"),Dict("timezones"=> ["Asia/Kuwait"], "code"=> "KW", "continent"=> "Asia", "name"=> "Kuwait", "capital"=> "Kuwait City"),Dict("timezones"=> ["Asia/Beirut"], "code"=> "LB", "continent"=> "Asia", "name"=> "Lebanon", "capital"=> "Beirut"),Dict("timezones"=> ["Europe/Vaduz"], "code"=> "LI", "continent"=> "Europe", "name"=> "Liechtenstein", "capital"=> "Vaduz"),Dict("timezones"=> ["Africa/Monrovia"], "code"=> "LR", "continent"=> "Africa", "name"=> "Liberia", "capital"=> "Monrovia"),Dict("timezones"=> ["Africa/Maseru"], "code"=> "LS", "continent"=> "Africa", "name"=> "Lesotho", "capital"=> "Maseru"),Dict("timezones"=> ["Europe/Vilnius"], "code"=> "LT", "continent"=> "Europe", "name"=> "Lithuania", "capital"=> "Vilnius"),Dict("timezones"=> ["Europe/Luxembourg"], "code"=> "LU", "continent"=> "Europe", "name"=> "Luxembourg", "capital"=> "Luxembourg City"),Dict("timezones"=> ["Europe/Riga"], "code"=> "LV", "continent"=> "Europe", "name"=> "Latvia", "capital"=> "Riga"),Dict("timezones"=> ["Africa/Tripoli"], "code"=> "LY", "continent"=> "Africa", "name"=> "Libya", "capital"=> "Tripoli"),Dict("timezones"=> ["Indian/Antananarivo"], "code"=> "MG", "continent"=> "Africa", "name"=> "Madagascar", "capital"=> "Antananarivo"),Dict("timezones"=> ["Pacific/Majuro", "Pacific/Kwajalein"], "code"=> "MH", "continent"=> "Oceania", "name"=> "Marshall Islands", "capital"=> "Majuro"),Dict("timezones"=> ["Europe/Skopje"], "code"=> "MK", "continent"=> "Europe", "name"=> "Macedonia", "capital"=> "Skopje"),Dict("timezones"=> ["Africa/Bamako"], "code"=> "ML", "continent"=> "Africa", "name"=> "Mali", "capital"=> "Bamako"),Dict("timezones"=> ["Asia/Rangoon"], "code"=> "MM", "continent"=> "Asia", "name"=> "Myanmar", "capital"=> "Naypyidaw"),Dict("timezones"=> ["Asia/Ulaanbaatar", "Asia/Hovd", "Asia/Choibalsan"], "code"=> "MN", "continent"=> "Asia", "name"=> "Mongolia", "capital"=> "Ulaanbaatar"),Dict("timezones"=> ["Africa/Nouakchott"], "code"=> "MR", "continent"=> "Africa", "name"=> "Mauritania", "capital"=> "Nouakchott"),Dict("timezones"=> ["Europe/Malta"], "code"=> "MT", "continent"=> "Europe", "name"=> "Malta", "capital"=> "Valletta"),Dict("timezones"=> ["Indian/Mauritius"], "code"=> "MU", "continent"=> "Africa", "name"=> "Mauritius", "capital"=> "Port Louis"),Dict("timezones"=> ["Indian/Maldives"], "code"=> "MV", "continent"=> "Asia", "name"=> "Maldives", "capital"=> "Mal\xc3\xa9"),Dict("timezones"=> ["Africa/Blantyre"], "code"=> "MW", "continent"=> "Africa", "name"=> "Malawi", "capital"=> "Lilongwe"),Dict("timezones"=> ["America/Mexico_City", "America/Cancun", "America/Merida", "America/Monterrey", "America/Mazatlan", "America/Chihuahua", "America/Hermosillo", "America/Tijuana"], "code"=> "MX", "continent"=> "North America", "name"=> "Mexico", "capital"=> "Mexico City"),Dict("timezones"=> ["Asia/Kuala_Lumpur", "Asia/Kuching"], "code"=> "MY", "continent"=> "Asia", "name"=> "Malaysia", "capital"=> "Kuala Lumpur"),Dict("timezones"=> ["Africa/Maputo"], "code"=> "MZ", "continent"=> "Africa", "name"=> "Mozambique", "capital"=> "Maputo"),Dict("timezones"=> ["Africa/Windhoek"], "code"=> "NA", "continent"=> "Africa", "name"=> "Namibia", "capital"=> "Windhoek"),Dict("timezones"=> ["Africa/Niamey"], "code"=> "NE", "continent"=> "Africa", "name"=> "Niger", "capital"=> "Niamey"),Dict("timezones"=> ["Africa/Lagos"], "code"=> "NG", "continent"=> "Africa", "name"=> "Nigeria", "capital"=> "Abuja"),Dict("timezones"=> ["America/Managua"], "code"=> "NI", "continent"=> "North America", "name"=> "Nicaragua", "capital"=> "Managua"),Dict("timezones"=> ["Europe/Amsterdam"], "code"=> "NL", "continent"=> "Europe", "name"=> "Kingdom of the Netherlands", "capital"=> "Amsterdam"),Dict("timezones"=> ["Europe/Oslo"], "code"=> "NO", "continent"=> "Europe", "name"=> "Norway", "capital"=> "Oslo"),Dict("timezones"=> ["Asia/Katmandu"], "code"=> "NP", "continent"=> "Asia", "name"=> "Nepal", "capital"=> "Kathmandu"),Dict("timezones"=> ["Pacific/Nauru"], "code"=> "NR", "continent"=> "Oceania", "name"=> "Nauru", "capital"=> "Yaren"),Dict("timezones"=> ["Pacific/Auckland", "Pacific/Chatham"], "code"=> "NZ", "continent"=> "Oceania", "name"=> "New Zealand", "capital"=> "Wellington"),Dict("timezones"=> ["Asia/Muscat"], "code"=> "OM", "continent"=> "Asia", "name"=> "Oman", "capital"=> "Muscat"),Dict("timezones"=> ["America/Panama"], "code"=> "PA", "continent"=> "North America", "name"=> "Panama", "capital"=> "Panama City"),Dict("timezones"=> ["America/Lima"], "code"=> "PE", "continent"=> "South America", "name"=> "Peru", "capital"=> "Lima"),Dict("timezones"=> ["Pacific/Port_Moresby"], "code"=> "PG", "continent"=> "Oceania", "name"=> "Papua New Guinea", "capital"=> "Port Moresby"),Dict("timezones"=> ["Asia/Manila"], "code"=> "PH", "continent"=> "Asia", "name"=> "Philippines", "capital"=> "Manila"),Dict("timezones"=> ["Asia/Karachi"], "code"=> "PK", "continent"=> "Asia", "name"=> "Pakistan", "capital"=> "Islamabad"),Dict("timezones"=> ["Europe/Warsaw"], "code"=> "PL", "continent"=> "Europe", "name"=> "Poland", "capital"=> "Warsaw"),Dict("timezones"=> ["Europe/Lisbon", "Atlantic/Madeira", "Atlantic/Azores"], "code"=> "PT", "continent"=> "Europe", "name"=> "Portugal", "capital"=> "Lisbon"),Dict("timezones"=> ["Pacific/Palau"], "code"=> "PW", "continent"=> "Oceania", "name"=> "Palau", "capital"=> "Ngerulmud"),Dict("timezones"=> ["America/Asuncion"], "code"=> "PY", "continent"=> "South America", "name"=> "Paraguay", "capital"=> "Asunci\xc3\xb3n"),Dict("timezones"=> ["Asia/Qatar"], "code"=> "QA", "continent"=> "Asia", "name"=> "Qatar", "capital"=> "Doha"),Dict("timezones"=> ["Europe/Bucharest"], "code"=> "RO", "continent"=> "Europe", "name"=> "Romania", "capital"=> "Bucharest"),Dict("timezones"=> ["Europe/Kaliningrad", "Europe/Moscow", "Europe/Volgograd", "Europe/Samara", "Asia/Yekaterinburg", "Asia/Omsk", "Asia/Novosibirsk", "Asia/Krasnoyarsk", "Asia/Irkutsk", "Asia/Yakutsk", "Asia/Vladivostok", "Asia/Sakhalin", "Asia/Magadan", "Asia/Kamchatka", "Asia/Anadyr"], "code"=> "RU", "continent"=> "Europe", "name"=> "Russia", "capital"=> "Moscow"),Dict("timezones"=> ["Africa/Kigali"], "code"=> "RW", "continent"=> "Africa", "name"=> "Rwanda", "capital"=> "Kigali"),Dict("timezones"=> ["Asia/Riyadh"], "code"=> "SA", "continent"=> "Asia", "name"=> "Saudi Arabia", "capital"=> "Riyadh"),Dict("timezones"=> ["Pacific/Guadalcanal"], "code"=> "SB", "continent"=> "Oceania", "name"=> "Solomon Islands", "capital"=> "Honiara"),Dict("timezones"=> ["Indian/Mahe"], "code"=> "SC", "continent"=> "Africa", "name"=> "Seychelles", "capital"=> "Victoria"),Dict("timezones"=> ["Africa/Khartoum"], "code"=> "SD", "continent"=> "Africa", "name"=> "Sudan", "capital"=> "Khartoum"),Dict("timezones"=> ["Europe/Stockholm"], "code"=> "SE", "continent"=> "Europe", "name"=> "Sweden", "capital"=> "Stockholm"),Dict("timezones"=> ["Asia/Singapore"], "code"=> "SG", "continent"=> "Asia", "name"=> "Singapore", "capital"=> "Singapore"),Dict("timezones"=> ["Europe/Ljubljana"], "code"=> "SI", "continent"=> "Europe", "name"=> "Slovenia", "capital"=> "Ljubljana"),Dict("timezones"=> ["Europe/Bratislava"], "code"=> "SK", "continent"=> "Europe", "name"=> "Slovakia", "capital"=> "Bratislava"),Dict("timezones"=> ["Africa/Freetown"], "code"=> "SL", "continent"=> "Africa", "name"=> "Sierra Leone", "capital"=> "Freetown"),Dict("timezones"=> ["Europe/San_Marino"], "code"=> "SM", "continent"=> "Europe", "name"=> "San Marino", "capital"=> "San Marino"),Dict("timezones"=> ["Africa/Dakar"], "code"=> "SN", "continent"=> "Africa", "name"=> "Senegal", "capital"=> "Dakar"),Dict("timezones"=> ["Africa/Mogadishu"], "code"=> "SO", "continent"=> "Africa", "name"=> "Somalia", "capital"=> "Mogadishu"),Dict("timezones"=> ["America/Paramaribo"], "code"=> "SR", "continent"=> "South America", "name"=> "Suriname", "capital"=> "Paramaribo"),Dict("timezones"=> ["Africa/Sao_Tome"], "code"=> "ST", "continent"=> "Africa", "name"=> "S\xc3\xa3o Tom\xc3\xa9 and Pr\xc3\xadncipe", "capital"=> "S\xc3\xa3o Tom\xc3\xa9"),Dict("timezones"=> ["Asia/Damascus"], "code"=> "SY", "continent"=> "Asia", "name"=> "Syria", "capital"=> "Damascus"),Dict("timezones"=> ["Africa/Lome"], "code"=> "TG", "continent"=> "Africa", "name"=> "Togo", "capital"=> "Lom\xc3\xa9"),Dict("timezones"=> ["Asia/Bangkok"], "code"=> "TH", "continent"=> "Asia", "name"=> "Thailand", "capital"=> "Bangkok"),Dict("timezones"=> ["Asia/Dushanbe"], "code"=> "TJ", "continent"=> "Asia", "name"=> "Tajikistan", "capital"=> "Dushanbe"),Dict("timezones"=> ["Asia/Ashgabat"], "code"=> "TM", "continent"=> "Asia", "name"=> "Turkmenistan", "capital"=> "Ashgabat"),Dict("timezones"=> ["Africa/Tunis"], "code"=> "TN", "continent"=> "Africa", "name"=> "Tunisia", "capital"=> "Tunis"),Dict("timezones"=> ["Pacific/Tongatapu"], "code"=> "TO", "continent"=> "Oceania", "name"=> "Tonga", "capital"=> "Nuku\xca\xbbalofa"),Dict("timezones"=> ["Europe/Istanbul"], "code"=> "TR", "continent"=> "Asia", "name"=> "Turkey", "capital"=> "Ankara"),Dict("timezones"=> ["America/Port_of_Spain"], "code"=> "TT", "continent"=> "North America", "name"=> "Trinidad and Tobago", "capital"=> "Port of Spain"),Dict("timezones"=> ["Pacific/Funafuti"], "code"=> "TV", "continent"=> "Oceania", "name"=> "Tuvalu", "capital"=> "Funafuti"),Dict("timezones"=> ["Africa/Dar_es_Salaam"], "code"=> "TZ", "continent"=> "Africa", "name"=> "Tanzania", "capital"=> "Dodoma"),Dict("timezones"=> ["Europe/Kiev", "Europe/Uzhgorod", "Europe/Zaporozhye", "Europe/Simferopol"], "code"=> "UA", "continent"=> "Europe", "name"=> "Ukraine", "capital"=> "Kiev"),Dict("timezones"=> ["Africa/Kampala"], "code"=> "UG", "continent"=> "Africa", "name"=> "Uganda", "capital"=> "Kampala"),Dict("timezones"=> ["America/New_York", "America/Detroit", "America/Kentucky/Louisville", "America/Kentucky/Monticello", "America/Indiana/Indianapolis", "America/Indiana/Marengo", "America/Indiana/Knox", "America/Indiana/Vevay", "America/Chicago", "America/Indiana/Vincennes", "America/Indiana/Petersburg", "America/Menominee", "America/North_Dakota/Center", "America/North_Dakota/New_Salem", "America/Denver", "America/Boise", "America/Shiprock", "America/Phoenix", "America/Los_Angeles", "America/Anchorage", "America/Juneau", "America/Yakutat", "America/Nome", "America/Adak", "Pacific/Honolulu"], "code"=> "US", "continent"=> "North America", "name"=> "United States", "capital"=> "Washington, D.C."),Dict("timezones"=> ["America/Montevideo"], "code"=> "UY", "continent"=> "South America", "name"=> "Uruguay", "capital"=> "Montevideo"),Dict("timezones"=> ["Asia/Samarkand", "Asia/Tashkent"], "code"=> "UZ", "continent"=> "Asia", "name"=> "Uzbekistan", "capital"=> "Tashkent"),Dict("timezones"=> ["Europe/Vatican"], "code"=> "VA", "continent"=> "Europe", "name"=> "Vatican City", "capital"=> "Vatican City"),Dict("timezones"=> ["America/Caracas"], "code"=> "VE", "continent"=> "South America", "name"=> "Venezuela", "capital"=> "Caracas"),Dict("timezones"=> ["Asia/Saigon"], "code"=> "VN", "continent"=> "Asia", "name"=> "Vietnam", "capital"=> "Hanoi"),Dict("timezones"=> ["Pacific/Efate"], "code"=> "VU", "continent"=> "Oceania", "name"=> "Vanuatu", "capital"=> "Port Vila"),Dict("timezones"=> ["Asia/Aden"], "code"=> "YE", "continent"=> "Asia", "name"=> "Yemen", "capital"=> "Sanaa"),Dict("timezones"=> ["Africa/Lusaka"], "code"=> "ZM", "continent"=> "Africa", "name"=> "Zambia", "capital"=> "Lusaka"),Dict("timezones"=> ["Africa/Harare"], "code"=> "ZW", "continent"=> "Africa", "name"=> "Zimbabwe", "capital"=> "Harare"),Dict("timezones"=> ["Africa/Algiers"], "code"=> "DZ", "continent"=> "Africa", "name"=> "Algeria", "capital"=> "Algiers"),Dict("timezones"=> ["Europe/Sarajevo"], "code"=> "BA", "continent"=> "Europe", "name"=> "Bosnia and Herzegovina", "capital"=> "Sarajevo"),Dict("timezones"=> ["Asia/Phnom_Penh"], "code"=> "KH", "continent"=> "Asia", "name"=> "Cambodia", "capital"=> "Phnom Penh"),Dict("timezones"=> ["Africa/Bangui"], "code"=> "CF", "continent"=> "Africa", "name"=> "Central African Republic", "capital"=> "Bangui"),Dict("timezones"=> ["Africa/Ndjamena"], "code"=> "TD", "continent"=> "Africa", "name"=> "Chad", "capital"=> "N´Djamena"),Dict("timezones"=> ["Indian/Comoro"], "code"=> "KM", "continent"=> "Africa", "name"=> "Comoros", "capital"=> "Moroni"),Dict("timezones"=> ["Europe/Zagreb"], "code"=> "HR", "continent"=> "Europe", "name"=> "Croatia", "capital"=> "Zagreb"),Dict("timezones"=> ["Asia/Dili"], "code"=> "TL", "continent"=> "Asia", "name"=> "East Timor", "capital"=> "Dili"),Dict("timezones"=> ["America/El_Salvador"], "code"=> "SV", "continent"=> "North America", "name"=> "El Salvador", "capital"=> "San Salvador"),Dict("timezones"=> ["Africa/Malabo"], "code"=> "GQ", "continent"=> "Africa", "name"=> "Equatorial Guinea", "capital"=> "Malabo"),Dict("timezones"=> ["America/Grenada"], "code"=> "GD", "continent"=> "North America", "name"=> "Grenada", "capital"=> "St. George´s"),Dict("timezones"=> ["Asia/Almaty", "Asia/Qyzylorda", "Asia/Aqtobe", "Asia/Aqtau", "Asia/Oral"], "code"=> "KZ", "continent"=> "Asia", "name"=> "Kazakhstan", "capital"=> "Astana"),Dict("timezones"=> ["Asia/Vientiane"], "code"=> "LA", "continent"=> "Asia", "name"=> "Laos", "capital"=> "Vientiane"),Dict("timezones"=> ["Pacific/Truk", "Pacific/Ponape", "Pacific/Kosrae"], "code"=> "FM", "continent"=> "Oceania", "name"=> "Federated States of Micronesia", "capital"=> "Palikir"),Dict("timezones"=> ["Europe/Chisinau"], "code"=> "MD", "continent"=> "Europe", "name"=> "Moldova", "capital"=> "Chi\xc5\x9fin\xc4\x83u"),Dict("timezones"=> ["Europe/Monaco"], "code"=> "MC", "continent"=> "Europe", "name"=> "Monaco", "capital"=> "Monaco"),Dict("timezones"=> ["Europe/Podgorica"], "code"=> "ME", "continent"=> "Europe", "name"=> "Montenegro", "capital"=> "Podgorica"),Dict("timezones"=> ["Africa/Casablanca"], "code"=> "MA", "continent"=> "Africa", "name"=> "Morocco", "capital"=> "Rabat"),Dict("timezones"=> ["America/St_Kitts"], "code"=> "KN", "continent"=> "North America", "name"=> "Saint Kitts and Nevis", "capital"=> "Basseterre"),Dict("timezones"=> ["America/St_Lucia"], "code"=> "LC", "continent"=> "North America", "name"=> "Saint Lucia", "capital"=> "Castries"),Dict("timezones"=> ["America/St_Vincent"], "code"=> "VC", "continent"=> "North America", "name"=> "Saint Vincent and the Grenadines", "capital"=> "Kingstown"),Dict("timezones"=> ["Pacific/Apia"], "code"=> "WS", "continent"=> "Oceania", "name"=> "Samoa", "capital"=> "Apia"),Dict("timezones"=> ["Europe/Belgrade"], "code"=> "RS", "continent"=> "Europe", "name"=> "Serbia", "capital"=> "Belgrade"),Dict("timezones"=> ["Africa/Johannesburg"], "code"=> "ZA", "continent"=> "Africa", "name"=> "South Africa", "capital"=> "Pretoria"),Dict("timezones"=> ["Europe/Madrid", "Africa/Ceuta", "Atlantic/Canary"], "code"=> "ES", "continent"=> "Europe", "name"=> "Spain", "capital"=> "Madrid"),Dict("timezones"=> ["Asia/Colombo"], "code"=> "LK", "continent"=> "Asia", "name"=> "Sri Lanka", "capital"=> "Sri Jayewardenepura Kotte"),Dict("timezones"=> ["Africa/Mbabane"], "code"=> "SZ", "continent"=> "Africa", "name"=> "Swaziland", "capital"=> "Mbabane"),Dict("timezones"=> ["Europe/Zurich"], "code"=> "CH", "continent"=> "Europe", "name"=> "Switzerland", "capital"=> "Bern"),Dict("timezones"=> ["Asia/Dubai"], "code"=> "AE", "continent"=> "Asia", "name"=> "United Arab Emirates", "capital"=> "Abu Dhabi"),Dict("timezones"=> ["Europe/London"], "code"=> "GB", "continent"=> "Europe", "name"=> "United Kingdom", "capital"=> "London" ))

 
  	ap = ("AM","PM")


    unix_time()= rand(0: (Int((DateTime(now())) - (DateTime(1970,1,1))))) 

    function date_time()
    fec = DateTime(rand(1970:2020),1,1,rand(01:23),rand(00:59),rand(00:59)) + Dates.Day(rand(01:31)) + Dates.Month(rand(01:12))
    sar=replace((string(fec)),"T"," ")
    return sar
	end 

        
    date_time_ad()= replace((string(iso8601())),"T"," ")

    iso8601()= 
    DateTime(rand(1970:2020),1,1,rand(01:23),rand(00:59),rand(00:59)) + Dates.Day(rand(01:31)) + Dates.Month(rand(01:12))

   function date(pattern="%Y-%m-%d")
        

    x = (Date(rand(1970:2020),1,1)+Dates.Day(rand(01:31))) + Dates.Month(rand(01:12))  

    sal= replace(pattern,"%Y","$(Dates.year(x))")
    sal= replace(sal,"%m","$(Dates.month(x))")

    sal= replace(sal,"%d","$(Dates.day(x))")
    
	return sal 

   end
		


   function time(pattern="%H:%M:%S")
       
        x= DateTime(1,1,1,rand(01:23),rand(00:59),rand(00:59))

    	sal= replace(pattern,"%H","$(Dates.hour(x))")
    	sal= replace(sal,"%M","$(Dates.minute(x))")

    	sal= replace(sal,"%S","$(Dates.second(x))")
    
		return sal 
	end
   
    function date_time_between(start_date="-30y", end_date="now")
  
        if contains(end_date,"now")
        	end_date = replace(end_date,"now","0y" )
		end 

		if contains(start_date,"now")
        	start_date = replace(start_date,"now","0y" )
		end

        start_date = DateTime(now()) + Dates.Year(Int(replace(start_date,"y","")))
        end_date = DateTime(now()) + Dates.Year(Int(replace(end_date,"y","")))

         dr=(start_date : end_date)
        return replace(string(dr[rand(1:(length(dr)))]),"T"," ") 

    end

    
    function date_time_this_century(before_now=true, after_now=false) 
 
        
        r = DateTime(now())
          
        this_century_start = DateTime((int(Dates.year(r)) - (Dates.year(r) % 100)), 1, 1)
        next_century_start = DateTime(Dates.year(this_century_start) + 100, 1, 1)

        if before_now && after_now
        	dr=(this_century_start : next_century_start)
      	elseif (before_now==false) && after_now
            dr=(r : next_century_start)
        elseif (after_now==false) && before_now
            dr=(this_century_start : r)
        else
           return  replace(string(r),"T"," ")
        end

        return replace(string(dr[rand(1:(length(dr)))]),"T"," ") 
       
    end 

    function  date_time_this_decade(before_now=true, after_now=false)
 
          r = DateTime(now())
          
        this_decade_start = DateTime((int(Dates.year(r)) - (Dates.year(r) % 10)), 1, 1)
        next_decade_start = DateTime(Dates.year(this_decade_start) + 10, 1, 1)

        if before_now && after_now
        	dr=(this_decade_start : next_decade_start)
      	elseif (before_now==false) && after_now
            dr=(r : next_decade_start)
        elseif (after_now==false) && before_now
            dr=(this_decade_start : r)
        else
           return  replace(string(r),"T"," ")
        end

        return replace(string(dr[rand(1:(length(dr)))]),"T"," ") 
    end



   function date_time_this_year( before_now=true, after_now=false) 
 

        r = DateTime(now())
          
        this_year_start = DateTime(Dates.year(r), 1, 1)
        next_year_start = DateTime(Dates.year(r) + 1, 1, 1)

        if before_now && after_now
        	dr=(this_year_start : next_year_start)
      	elseif (before_now==false) && after_now
            dr=(r : next_year_start)
        elseif (after_now==false) && before_now
            dr=(this_year_start : r)
        else
           return  replace(string(r),"T"," ")
        end

        return replace(string(dr[rand(1:(length(dr)))]),"T"," ") 
    end


        
    function date_time_this_month(before_now=true, after_now=false)
 
        r = DateTime(now())
          
        this_month_start = DateTime(Dates.year(r), Dates.month(r), 1)
        next_month_start = DateTime(Dates.year(r), (Dates.month(r)+ 1)%12, 1)

        if before_now && after_now
        	dr=(this_month_start : next_month_start)
      	elseif (before_now==false) && after_now
            dr=(r : next_month_start)
        elseif (after_now==false) && before_now
            dr=(this_month_start : r)
        else
           return  replace(string(r),"T"," ")
        end

        return replace(string(dr[rand(1:(length(dr)))]),"T"," ") 
    end
        
    am_pm()= ap[rand(1:length(ap))]
          
    day_of_month()= rand(1:31)

    day_of_week()= Dates.dayname(Date(2015,07,rand(12:18)))
      
    months()=rand(1:12)
       
    month_name()= Dates.monthname(Date(2015,rand(1:12),15))
      
    year()=rand(1920:2020)
      
    century()= centuries[rand(1:length(centuries))]
       
    function timezone()

    resul = countries[rand(1:length(countries))]["timezones"]
     
    resul = resul[rand(1:length(resul))]

    return resul 
	end