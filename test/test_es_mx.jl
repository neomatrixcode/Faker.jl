
Faker.language("es-MX")
Faker.seed(85)

@test Faker.random_digit() == "7"
@test Faker.random_digit_not_null() == "6"
@test Faker.random_digit_or_empty() == " "
@test Faker.random_number(digits= 1) == "4"
@test Faker.random_int(min=0, max=9999) == "2886"
@test Faker.randomize_nb_elements(number=10, le=false, ge=false) == "7.9"
@test Faker.random_letter() == "a"
@test Faker.random_element(("a", "b", "b")) == "b"
@test Faker.lexify("????") == "exmO"
@test Faker.numerify("####") == "1320"
@test Faker.bothify("## ??") == "69 mp"

Faker.seed(85)

@test Faker.state_abbr() == "SIN"
@test Faker.latitude() == 2.505859375
@test Faker.street_name() == "Jardines Luis Alberto"
@test Faker.address() == "Arroyo Nayarit 169 Arteaga, OAX 04294"
@test Faker.street_address() == "Avenida Baja California 1458"
@test Faker.postcode() == "74745"
@test Faker.longitude() == -14.9921875
@test Faker.country() == "Jersey"
@test Faker.geo_coordinate(center="None", radius=0.001) == Float16(-8.99)
@test Faker.secondary_address() == "Apartamento 44"
@test Faker.city_prefix() == "Norte"
@test Faker.city_suffix() == "de la Montaña"
@test Faker.building_number() == "7"
@test Faker.city() == "Caborca"
@test Faker.state() == "Sinaloa"

Faker.seed(85)

@test Faker.company()                                 == "Dávila Guerrero S.A.B."
@test Faker.company_suffix()                          == "S.R.L"
@test Faker.catch_phrase()                            == "array multitarea adaptivo "
@test Faker.bs()                                      == "entrega comercio electrónico estratégicas "

Faker.seed(85)

@test Faker.months() ==10
@test Faker.am_pm() =="PM"
 Faker.iso8601() == "2076-06-20T03:19:24"
 Faker.date_time() =="2041-1-3 08:20:25"
 Faker.month_name() =="March"
 Faker.day_of_week() =="Saturday"
 Faker.day_of_month() == 13
 Faker.date_time_between("-30y", "now") =="1989-6-7 21:38:44"
 Faker.time("H:M:S") =="18:46:36"
 Faker.unix_time() ==454113618933
 Faker.timezone() =="Atlantic/Azores"
 Faker.century() =="V"
 Faker.date("Y-m-d") =="2023-2-19"
 Faker.year() ==2035
 Faker.date_time_this_century(before_now=true, after_now=false) =="2007-1-3 00:00:00"
 Faker.date_time_this_decade(before_now=true, after_now=false) =="2018-7-23 00:00:00"
 Faker.date_time_this_year(before_now=true, after_now=false) =="2018-5-17 00:00:00"
 Faker.date_time_this_month(before_now=true, after_now=false) =="2018-9-1 00:00:00"
Faker.seed(85)

@test Faker.email()                                   == "Alfredo42@hotmail.com"
@test Faker.free_email()                              == "BAmador@hotmail.com"
@test Faker.safe_email()                              == "Raquel47@example.info"
@test Faker.user_name()                               == "Manuela10"
@test Faker.domain_name()                             == "csdc.com"
@test Faker.domain_word()                             == "maytas"
@test Faker.domain_suffix()                           ==  "org"
@test Faker.ipv4()                                    ==  "175.148.95.29"
@test Faker.ipv6()                                    == "cb0a:d767:233d:fb3c:906f:e547:f5a5:627f"
@test Faker.uri()                                     == "http://www.ms.org.mx/homepage.html"
@test Faker.url()                                     == "http://www.bdjsdc.com/"
@test Faker.image_url()                               == "http://www.lorempixum.com/648/882"
@test Faker.uri_extension()                           == ".html"
@test Faker.uri_path()                                == "search/list/app"
@test Faker.uri_page()                                == "author"
@test Faker.mac_address()                             == "5c:68:54:b1:4e:8b"
@test Faker.company_email()                           == "xLira@ns.org.mx"

Faker.seed(85)

@test Faker.text(number_chars=200) ==  "Sequi iusto quis quia. Aut ut est quia. Ut et atque iusto. Consectetur sit sed et.. Alias rem quaerat aut totam reiciendis. Quo necessitatibus temporibus quas. Qui mollitia expedita alias harum inventore.."
@test Faker.sentence(number_words=6, variable_nb_words=true) == "Omnis."
@test Faker.word() == "magni"
@test Faker.paragraphs() ==  ["Eveniet explicabo aspernatur qui. Quia consequatur et quisquam quidem maxime. Et corrupti omnis..", "Ut. Illo..", "Inventore accusantium quibusdam. Corrupti. Perferendis rem. Commodi aliquam molestiae.."]
@test Faker.words(number_words=3) == ["ad", "provident", "animi"]
@test Faker.paragraph(number=3) == "Quasi. Consectetur veniam aut aspernatur. Quo repellendus reprehenderit. Optio atque.."
@test Faker.sentences(number_sentences=3) ==  ["Voluptates earum eius.", "Odit asperiores eum optio.", "Placeat.", "Quod perferendis reiciendis sed perferendis."]

Faker.seed(85)

@test Faker.phone_number()  == "55-2160-5616"
@test Faker.cell_phone() ==  "044 33 0690 4294"

Faker.seed(85)

@test Faker.password() == ")6E)\$SRA&6Eq*9Yl51Ix!6Z'&+Zm2a1fd5Ml'6aq"
@test Faker.locale() == "es_AUT"
@test Faker.null_boolean() == false
@test Faker.country_code() == "TTO"
@test Faker.language_code() == "de"
@test Faker.boolean() == true

Faker.seed(85)

@test Faker.color_name()                              == "Peru"
@test Faker.safe_color_name()                         == "olive"
@test Faker.hex_color()                               == "#00008B"
@test Faker.rgb_color_list()                          == "(112,74,32)"
@test Faker.rgb_color()                               == "169,3,138"
@test Faker.rgb_css_color()                           == "rgb(155,46,166)"

Faker.seed(85)

@test Faker.credit_card_security_code()               == "761"
Faker.credit_card_full()                        =="JCB 16 digit Catherine Crist 3096352382707498 CVC 714"
Faker.credit_card_number()                      == "869944451199135"
@test Faker.credit_card_provider()                    == "visa"
@test Faker.generate_number("52",16)                  == "5207145800891381"

Faker.seed(85)

@test Faker.mime_type()                               == "application/vnd.sun.xml.writer.global"
@test Faker.file_extension()                          == "rl"
@test Faker.file_name()                               == "HROe.deploy"

Faker.seed(85)

@test Faker.first_name()                              == "Guillermina"
@test Faker.last_name()                               ==  "Dávila"
@test Faker.prefixe()                                 == "Sr."
@test Faker.simple_profile()                    ==  Dict("name" => "Rosalba","mail" => "Andrea.Lira@gmail.com","username" => "Luis Alberto.Castro","birthdate" => "1983-5-11","sex" => "M","address" => "Huerta Armería S/N Cuauhtémoc, NAY 71061")
@test Faker.job()                               == "Inspector de salud y seguridad"
a=Faker.profile()
b= Dict("username"=>"Benito51",
 "sex"=>"M",
 "address"=>"Escalinata Coahuila 4 Hocaba, GRO 29866",
 "name"=>"Esperanza",
 "job"=>"Profesor de necesidades educativas especiales",
 "mail"=>"FVázquez@prodigy.net.mx",
 "birthdate"=>"2089-10-12",
 "current_location"=> (-8.4921875, -14.9921875),
 "blood_group"=>"B-",
 "residence"=>"Arroyo Carlos Arreola 91 La Paz, PUE 07106",
 "company"=>"Paredes y Arellano e Hijos",
 "website"=>"http://ps.com/"
 )

@test a["username"]== b["username"]
@test a["sex"]== b["sex"]
@test a["address"]== b["address"]
@test a["name"]== b["name"]
@test a["job"]== b["job"]
@test a["mail"]== b["mail"]
@test a["birthdate"]== b["birthdate"]
@test a["current_location"]== b["current_location"]
@test a["blood_group"]== b["blood_group"]
@test a["residence"]== b["residence"]
@test a["company"]== b["company"]
@test a["website"]== b["website"]

@test Faker.profile("username")             ==  Dict{Any,Any}("username" => "qAguirre")
@test Faker.profile("username","blood_group")==  Dict{Any,Any}("blood_group" => "O-","username" => "IPalma")
@test Faker.simple_profile("birthdate","address","sex")    == Dict{Any,Any}("birthdate" => "2058-3-19","sex" => "M","address" => "Salida Juan Treviño 2 Planta alta León, ZAC 05381")
@test Faker.simple_profile("name")  == Dict{Any,Any}("name" => "Ramón")

Faker.seed(85)

@test Faker.mac_processor()                           == "U; PPC"
@test Faker.linux_processor()                         == "x86_64"
@test Faker.user_agent()                              == "chrome"
@test Faker.windows_platform_token()                  == "Windows NT 5.0"
@test Faker.linux_platform_token()                    == "X11; Linux i686"
@test Faker.mac_platform_token()                      ==  "Macintosh; Intel Mac OS X 10_7_0"
@test Faker.chrome()                                  =="Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5341 (KHTML, like Gecko) Chrome/41.0.843.0 Safari/5341"