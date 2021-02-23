
Faker.language("es-MX")
Faker.seed(85)

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

Faker.seed(85)

@test Faker.state_abbr() == "HID"
@test Faker.latitude() == 2.505859375
@test Faker.street_name() == "Paseo Coquimatlán"
@test Faker.address() == "Escalinata Xochitepec 52 Querétaro, PUE 12657"
@test Faker.street_address() == "Mercado Silvia Espinoza S/N 7ª Planta"
@test Faker.postcode() == "77309"
@test Faker.longitude() == 17.015625
@test Faker.country() == "Kazajistán"
@test Faker.geo_coordinate(center="None", radius=0.001) == Float16(-16.98)
@test Faker.secondary_address() == "Depto. 894"
@test Faker.city_prefix() == "Sur"
@test Faker.city_suffix() == "los bajos"
@test Faker.building_number() == "8"
@test Faker.city() == "Asientos"
@test Faker.state() == "Quintana Roo"

Faker.seed(85)

@test Faker.company()                                 == "Osorio, Peña y Andrade Asociados S. R.L. de C.V."
@test Faker.company_suffix()                          == "S.A.B."
@test Faker.catch_phrase()                            == "adaptador defectos cero actualizable "
@test Faker.bs()                                      == "optimiza interfaces magnéticas "

Faker.seed(85)

@test Faker.months() ==8
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

Faker.seed(85)

@test Faker.text(number_chars=200) ==  "Laudantium molestias eos rerum. Cupiditate voluptatem exercitationem enim.. Qui qui suscipit aspernatur porro. Non. Officiis consequatur harum architecto quibusdam. Explicabo voluptas cumque distinctio maiores voluptatibus.."
@test Faker.sentence(number_words=6, variable_nb_words=true) == "Distinctio numquam velit voluptatem incidunt."
@test Faker.word() == "eaque"
@test Faker.paragraphs() == ["Numquam unde et dolorem. Rem aut harum perspiciatis. Veritatis..", "Consequuntur consequatur recusandae quis. Nobis dolorem ipsum non ipsam. Quia vel et minus sed. Molestiae velit iure..", "Culpa expedita. Quo voluptatibus voluptatem ea placeat.."]
@test Faker.words(number_words=3) == ["qui", "eos", "sit"]
@test Faker.paragraph(number=3) == "Earum exercitationem architecto deserunt dicta alias. Qui eos sint iusto aut.."
@test Faker.sentences(number_sentences=3) == ["In et voluptatem.", "Nostrum sapiente molestiae.", "Saepe ut in non quasi.", "Ab totam perspiciatis."]

Faker.seed(85)

@test Faker.phone_number()  == "81-2935-2382"
@test Faker.cell_phone() ==  "044 (223) 714 5444"

Faker.seed(85)

@test Faker.password() == "D3Wt#5(2&5&b#7'R%9BsA5Xr%*Uu%kRy99htT8Fn"
@test Faker.locale() == "cn_NGA"
@test Faker.null_boolean() == false
@test Faker.country_code() == "SLV"
@test Faker.language_code() == "es"
@test Faker.boolean() == true

Faker.seed(85)

@test Faker.color_name()                              == "LightYellow"
@test Faker.safe_color_name()                         == "orchid"
@test Faker.hex_color()                               == "#FFFAFA"
@test Faker.rgb_color_list()                          == "(215,221,84)"
@test Faker.rgb_color()                               == "131,80,74"
@test Faker.rgb_css_color()                           == "rgb(68,107,109)"

Faker.seed(85)

@test Faker.credit_card_security_code()               == "736"
Faker.credit_card_full()                        =="JCB 16 digit Beatriz Acosta 3096935238270743 CVC 571"
Faker.credit_card_number()                      == "3096544451199132"
@test Faker.credit_card_provider()                    == "laser"
@test Faker.generate_number("52",16)                  == "5276029874944399"

Faker.seed(85)

@test Faker.mime_type()                               == "image/x-freehand"
@test Faker.file_extension()                          == "rmvb"
@test Faker.file_name()                               == "wTPd.pgn"

Faker.seed(85)

@test Faker.first_name()                              == "Guillermina"
@test Faker.last_name()                               == "Dávila"
@test Faker.prefixe()                                 == "Sr."
@test Faker.simple_profile()                          == Dict("name" => "Rosalba","mail" => "Andrea.Lira@gmail.com","username" => "Luis Alberto.Castro","birthdate" => "1983-5-11","sex" => "M","address" => "Huerta Armería S/N Cuauhtémoc, NAY 71061")
@test Faker.job()                                     == "Inspector de salud y seguridad"
a= Faker.profile()
b= Dict(
 "username" => "Benito51",
  "sex" => "M",
  "address" => "Escalinata Coahuila 4 Hocaba, GRO 29866",
  "name" => "Esperanza",
  "job" => "Profesor de necesidades educativas especiales",
  "mail" => "FVázquez@prodigy.net.mx",
  "birthdate" => "2089-10-12",
  "current_location" => (-8.4921875, -14.9921875),
  "blood_group" => "B-",
  "residence" => "Arroyo Carlos Arreola 91 La Paz, PUE 07106",
  "company" => "Paredes y Arellano e Hijos",
  "website" => "http://ps.com/"
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

@test Faker.profile("username")            ==  Dict{Any,Any}("username" => "qAguirre")
@test Faker.profile("username","blood_group")   == Dict{Any,Any}("blood_group" => "O-","username" => "IPalma")
@test Faker.simple_profile("birthdate","address","sex")    ==  Dict{Any,Any}("birthdate" => "2058-3-19","sex" => "M","address" => "Salida Juan Treviño 2 Planta alta León, ZAC 05381")
@test Faker.simple_profile("name")    ==  Dict{Any,Any}("name"=>"Ramón")

Faker.seed(85)

@test Faker.mac_processor()                           == "U; PPC"
@test Faker.linux_processor()                         == "x86_64"
@test Faker.user_agent()                              == "chrome"
@test Faker.windows_platform_token()                  == "Windows NT 5.0"
@test Faker.linux_platform_token()                    == "X11; Linux i686"
@test Faker.mac_platform_token()                      ==  "Macintosh; Intel Mac OS X 10_7_0"
@test Faker.chrome()                                  =="Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5341 (KHTML, like Gecko) Chrome/41.0.843.0 Safari/5341"
#@test Faker.firefox()                                 =="Mozilla/5.0 (Windows NT 4.0; sl-SI; rv:1.9.0.20) Gecko/2015-4-22 21:10:48 Firefox/6.0"
#@test Faker.safari()      == "Mozilla/5.0 (iPod; U; CPU iPhone OS 3_1 like Mac OS X; it-IT) AppleWebKit/534.28.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B115 Safari/6534.28.6"
#@test Faker.opera()                             ==  "Opera/9.26.(Windows NT 6.1; sl-SI) Presto/2.9.160 Version/10.00)"
#@test Faker.internet_explorer()                 == "Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/3.1)"