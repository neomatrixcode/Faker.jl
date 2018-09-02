
Faker.language("es-MX")
Faker.seed(1234)

@test Faker.random_digit() == "7"
@test Faker.random_digit_not_null() == "4"
@test Faker.random_digit_or_empty() == " "
@test Faker.random_number(digits= 1) == "6"
@test Faker.random_int(min=0, max=9999) == "4994"
@test Faker.randomize_nb_elements(number=10, le=false, ge=false) == "14.9"
@test Faker.random_letter() == "d"
@test Faker.random_element(("a", "b", "b")) == "b"
@test Faker.lexify("????") == "VTSa"
@test Faker.numerify("####") == "7491"
@test Faker.bothify("## ??") == "26 Eu"

Faker.seed(1234)

Faker.state_abbr()                                 == "AP"
Faker.latitude()                                   == "-74.518224"
Faker.street_name()                                == "Green Knoll"
Faker.address()                                    == "741 Drucilla Lights Marlenport, VT 54198-4463"
Faker.street_address()                             == "4630 Kling Throughway"
Faker.postcode()                                   == "18604-5538"
Faker.longitude()                                  == "41.536069"
Faker.country()                                    == "Montserrat"
Faker.geo_coordinate(center="None", radius=0.001)  == "48.396071"
Faker.secondary_address()                          == "Apt. 621"
Faker.city_prefix()                                == "Lake"
Faker.city_suffix()                                == "ville"
Faker.building_number()                            == "7065"
Faker.city()                                       == "West Donato"
Faker.state()                                      == "WestVirginia"

Faker.seed(1234)

@test Faker.company()                                 == "Osorio, Peña y Andrade Asociados S. R.L. de C.V."
@test Faker.company_suffix()                          == "S.A.B."
@test Faker.catch_phrase()                            == "adaptador defectos cero actualizable "
@test Faker.bs()                                      == "optimiza interfaces magnéticas "

Faker.seed(1234)

Faker.date_time_ad()                                           == "1446-03-17 04:03:47"
Faker.months()                                                 == "10"
Faker.am_pm()                                                  == "PM"
Faker.iso8601()                                                == "1986-05-02T21:01:04"
Faker.date_time()                                              == "1981-10-29 21:56:29"
Faker.month_name()                                             == "November"
Faker.day_of_week()                                            == "Thursday"
Faker.day_of_month()                                           == "14"
Faker.date_time_between("-30y", "now")                         == "1990-01-30 11:47:01"
Faker.time("H:M:S")                                            == "21:44:43"
Faker.unix_time()                                              == "711770812"
Faker.timezone()                                               == "Atlantic/Reykjavik"
Faker.century()                                                == "XV"
Faker.date("Y-m-d")                                            == "1998-09-11"
Faker.year()                                                   == "1998"
Faker.date_time_this_century(before_now=true, after_now=false) == "1941-12-05 15:52:02"
Faker.date_time_this_decade(before_now=true, after_now=false)  == "2013-02-24 18:47:46"
Faker.date_time_this_year(before_now=true, after_now=false)    == "2013-04-22 14:51:26"
Faker.date_time_this_month(before_now=true, after_now=false)   == "2014-04-02 08:38:48"

Faker.seed(1234)

@test Faker.email()                                   == "kPeña@agyaasrdc.org"
@test Faker.free_email()                              == "rGranados@prodigy.net.mx"
@test Faker.safe_email()                              == "Contreras.Julio César@example.info"
@test Faker.user_name()                               == "odel Ángel"
@test Faker.domain_name()                             == "ddlssrdc.info"
@test Faker.domain_word()                             == "lcs"
@test Faker.domain_suffix()                           ==  "me"
@test Faker.ipv4()                                    ==  "242.225.18.190"
@test Faker.ipv6()                                    == "2f04:35d1:dc5c:57a8:8850:40a5:35e2:c8a7"
@test Faker.uri()                                     == "http://www.áos.mx/"
@test Faker.url()                                     == "http://www.mygs.com.mx/"
@test Faker.image_url()                               == "http://www.lorempixum.com/116/188"
@test Faker.uri_extension()                           == ".html"
@test Faker.uri_path()                                == "blog/app/blog"
@test Faker.uri_page()                                == "privacy"
@test Faker.mac_address()                             == "81:32:31:b1:2a:06"
@test Faker.company_email()                           == "Alfonso.Beltrán@mysa.info"

Faker.seed(1234)

Faker.text(number_chars=200)
Faker.sentence(number_words=6, variable_nb_words=true)
Faker.word()
Faker.paragraphs()
Faker.words(number_words=3)
Faker.paragraph(number=3)
Faker.sentences(number_sentences=3)

Faker.seed(1234)

@test Faker.phone_number()  == "81-2935-2382"
@test Faker.cell_phone() ==  "044 (223) 714 5444"

Faker.seed(1234)

Faker.password()                                == "cQYVB)X%0"
Faker.locale()                                  == "en_SE"
Faker.null_boolean()                            == "True"
Faker.country_code()                            == "DO"
Faker.language_code()                           == "ru"
Faker.boolean()                                 == "True"

Faker.seed(1234)

@test Faker.color_name()                              == "LightYellow"
@test Faker.safe_color_name()                         == "orchid"
@test Faker.hex_color()                               == "#FFFAFA"
@test Faker.rgb_color_list()                          == "(215,221,84)"
@test Faker.rgb_color()                               == "131,80,74"
@test Faker.rgb_css_color()                           == "rgb(68,107,109)"

Faker.seed(1234)

Faker.credit_card_security_code()               == "768"
Faker.credit_card_full()                        == "VISA 16 digit Keon Marvin 4493818436107305 CVC 976"
Faker.credit_card_number()                      == "4916619442820082"
Faker.credit_card_provider()                    == "American Express"
Faker.generate_number("52",16)                  == "5268029839131090"

Faker.seed(1234)

Faker.mime_type()                               == "video/quicktime"
Faker.file_extension()                          == "css"
Faker.file_name()                               == "sUwb.flac"

Faker.seed(1234)

@test Faker.first_name()                              == "Lorena"
@test Faker.last_name()                               == "Peña"
@test Faker.prefixe()                                 == "Dr."
@test Faker.simple_profile()                          == Dict("name"=>"Elizabeth","mail"=>"Omar23@hotmail.com","username"=>"Marcos29","birthdate"=>"2022-2-9","sex"=>"M","address"=>"Avenida Luis Alberto de los Santos 3 5ª Planta Cerritos, SON 34045")
@test Faker.job()                                     == "Administrador de alojamiento"
@test "$(Faker.profile())"                            ==   "Dict{String,Any}(\"username\"=>\"Villegas.María Elena\",\"sex\"=>\"M\",\"address\"=>\"Huerta México 63143 Interior 080 Choix, COL 62719\",\"name\"=>\"Erika\",\"job\"=>\"Agrimensor, minero\",\"mail\"=>\"Rentería.Adriana@prodigy.net.mx\",\"birthdate\"=>\"2027-12-6\",\"current_location\"=>(-0.995117, 8.00781),\"blood_group\"=>\"AB-\",\"residence\"=>\"Barranco Querétaro 71590 Planta baja Nazareno Etla, TLA 69478\",\"company\"=>\"Morán y Trujillo S.R.L\",\"website\"=>\"http://www.neh.mx/\")"
@test Faker.profile("username")            ==  Dict{Any,Any}("username"=>"Delgado.Gerardo")
@test Faker.profile("username","blood_group")   == Dict{Any,Any}("blood_group"=>"AB+","username"=>"zRamos")
@test Faker.simple_profile("birthdate","address","sex")    ==  Dict{Any,Any}("birthdate"=>"2087-3-15","sex"=>"M","address"=>"Camino Luis Alberto Zárate S/N Int. 9 Bacalar, BCN 72662")
@test Faker.simple_profile("name")    ==  Dict{Any,Any}("name"=>"David")

Faker.seed(1234)

Faker.mac_processor()                           == "U; PPC"
Faker.linux_processor()                         == "x86_64"
Faker.user_agent()                              == "safari"
Faker.windows_platform_token()                  == "Windows NT 6.0"
Faker.linux_platform_token()                    == "X11; Linux x86_64"
Faker.mac_platform_token()                      == "Macintosh; U; PPC Mac OS X 10_6_5"
Faker.chrome()                                  == "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5311 (KHTML, like Gecko) Chrome/14.0.867.0 Safari/5311"
Faker.firefox()                                 == "Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_7; rv:1.9.3.20) Gecko/2002-10-25 15:36:53 Firefox/7.0"
Faker.safari()      == "Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_9 rv:3.0; it-IT) AppleWebKit/532.42.3 (KHTML, like Gecko) Version/5.0.1 Safari/532.42.3"
Faker.opera()                             == "Opera/9.97.(Windows CE; sl-SI) Presto/2.9.182 Version/12.00)"
Faker.internet_explorer()                 == "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.01;Trident/5.0)"