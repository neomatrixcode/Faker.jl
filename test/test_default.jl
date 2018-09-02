
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

@test Faker.state_abbr() == "VT"
@test Faker.latitude() == 2.505859375
@test Faker.street_name() == "Schaden Park"
@test Faker.address() == "32935 McClure Trail East Nia, OR 11991-3585"
@test Faker.street_address() == "510 Maybell Keys"
@test Faker.postcode() == "22773"
@test Faker.longitude() == 4.01171875
@test Faker.country() == "Macedonia"
@test Faker.geo_coordinate(center="None", radius=0.001) == Float16(-15.99)
@test Faker.secondary_address() == "Apt. 312"
@test Faker.city_prefix() == "West"
@test Faker.city_suffix() == "town"
@test Faker.building_number() == "532"
@test Faker.city() == "Port Rudy"
@test Faker.state() == "Florida"

Faker.seed(1234)

@test Faker.company()                                 ==  "Hammes Group"
@test Faker.company_suffix()                          == "Group"
@test Faker.catch_phrase()                            == "Synergistic uniform projection "
@test Faker.bs()                                      == "integrate transparent users "

Faker.seed(1234)

@test Faker.months() ==8
@test Faker.am_pm() =="PM"
 Faker.iso8601() =="2076-06-20T03:19:24"
 Faker.date_time() =="2041-1-3 08:20:25"
 Faker.month_name() =="March"
 Faker.day_of_week() =="Saturday"
 Faker.day_of_month() == 13
 Faker.date_time_between("-30y", "now") =="1989-6-7 21:38:44"
 Faker.time("H:M:S") =="18:46:36"
 Faker.unix_time() ==454113618933
 Faker.timezone() =="Asia/Ulaanbaatar"
 Faker.century() =="V"
 Faker.date("Y-m-d") =="2023-2-19"
 Faker.year() ==2035
 Faker.date_time_this_century(before_now=true, after_now=false) =="2007-1-3 00:00:00"
 Faker.date_time_this_decade(before_now=true, after_now=false) =="2018-7-23 00:00:00"
 Faker.date_time_this_year(before_now=true, after_now=false) =="2018-5-17 00:00:00"
 Faker.date_time_this_month(before_now=true, after_now=false) =="2018-9-1 00:00:00"

Faker.seed(1234)

@test Faker.email()                                   == "TCronin@vh.org"
@test Faker.free_email()                              == "Franecki.Joanie@hotmail.com"
@test Faker.safe_email()                              == "Laurence73@example.co"
@test Faker.user_name()                               == "Iva.Ernser"
@test Faker.domain_name()                             == "sas.info"
@test Faker.domain_word()                             == "bg"
@test Faker.domain_suffix()                           ==  "io"
@test Faker.ipv4()                                    == "242.110.49.158"
@test Faker.ipv6()                                    == "7509:ff7a:85ec:55da:550d:4d4a:28df:e561"
@test Faker.uri()                                     == "http://www.rk.co/categories/main/search/"
@test Faker.url()                                     == "http://www.hi.org/"
@test Faker.image_url()                               == "http://placekitten.com/933/77"
@test Faker.uri_extension()                           == ".html"
@test Faker.uri_path()                                == "search/app/tag/categories"
@test Faker.uri_page()                                == "main"
@test Faker.mac_address()                             == "ae:8b:61:b4:a3:52"
@test Faker.company_email()                           == "Hilll.Delsie@td.name"

Faker.seed(1234)

@test Faker.text(number_chars=200) ==  "Laudantium molestias eos rerum. Cupiditate voluptatem exercitationem enim.. Qui qui suscipit aspernatur porro. Non. Officiis consequatur harum architecto quibusdam. Explicabo voluptas cumque distinctio maiores voluptatibus.."
@test Faker.sentence(number_words=6, variable_nb_words=true) == "Distinctio numquam velit voluptatem incidunt."
@test Faker.word() == "eaque"
@test Faker.paragraphs() == ["Numquam unde et dolorem. Rem aut harum perspiciatis. Veritatis..", "Consequuntur consequatur recusandae quis. Nobis dolorem ipsum non ipsam. Quia vel et minus sed. Molestiae velit iure..", "Culpa expedita. Quo voluptatibus voluptatem ea placeat.."]
@test Faker.words(number_words=3) == ["qui", "eos", "sit"]
@test Faker.paragraph(number=3) == "Earum exercitationem architecto deserunt dicta alias. Qui eos sint iusto aut.."
@test Faker.sentences(number_sentences=3) == ["In et voluptatem.", "Nostrum sapiente molestiae.", "Saepe ut in non quasi.", "Ab totam perspiciatis."]

Faker.seed(1234)

@test Faker.phone_number()  ==  "736-329-3523 x8270"
@test Faker.cell_phone() ==  "(265) 714-5444"

Faker.seed(1234)

@test Faker.password() == "D3Wt#5(2&5&b#7'R%9BsA5Xr%*Uu%kRy99htT8Fn"
@test Faker.locale() == "cn_NF"
@test Faker.null_boolean() == false
@test Faker.country_code() == "SS"
@test Faker.language_code() == "es"
@test Faker.boolean() == true

Faker.seed(1234)

@test Faker.color_name()                              == "LightYellow"
@test Faker.safe_color_name()                         == "orchid"
@test Faker.hex_color()                               == "#FFFAFA"
@test Faker.rgb_color_list()                          == "(215,221,84)"
@test Faker.rgb_color()                               == "131,80,74"
@test Faker.rgb_css_color()                           == "rgb(68,107,109)"

Faker.seed(1234)

@test Faker.credit_card_security_code()               == "736"
Faker.credit_card_full()                        =="JCB 16 digit Catherine Crist 3096352382707498 CVC 714"
Faker.credit_card_number()                      == "869944451199135"
@test Faker.credit_card_provider()                    == "laser"
@test Faker.generate_number("52",16)                  == "5276029874944399"

Faker.seed(1234)

@test Faker.mime_type()                               == "image/x-freehand"
@test Faker.file_extension()                          == "rmvb"
@test Faker.file_name()                               == "wTPd.pgn"

Faker.seed(1234)

@test Faker.first_name()                              == "Jacqulyn"
@test Faker.last_name()                               ==  "Cronin"
@test Faker.prefixe()                                 == "Miss"
@test Faker.simple_profile()                    ==  Dict("name"=>"Domingo","mail"=>"Durgan.Krystle@hotmail.com","username"=>"Kimbery29","birthdate"=>"2007-5-18","sex"=>"F","address"=>"8557 McDermott Shores West Alex, OR 96510-7890")
@test Faker.job()                               == "Immigration officer"
@test "$(Faker.profile())"                      ==  "Dict{String,Any}(\"username\"=>\"Howell.Dannie\",\"sex\"=>\"M\",\"address\"=>\"931 Grover Court Soilashire, WY 69092-3732\",\"name\"=>\"Marissa\",\"job\"=>\"Land/geomatics surveyor\",\"mail\"=>\"Blondell71@yahoo.com\",\"birthdate\"=>\"1984-12-1\",\"current_location\"=>(-1.49512, -5.98828),\"blood_group\"=>\"B-\",\"residence\"=>\"6427 Treutel Divide Tienfort, MT 97964-8925\",\"company\"=>\"Legros and Sons\",\"website\"=>\"http://ol.info/\")"
@test Faker.profile("username")             ==  Dict{Any,Any}("username"=>"Olson.Willy")
@test Faker.profile("username","blood_group")==  Dict{Any,Any}("blood_group"=>"A-","username"=>"Ronda.Heller")
@test Faker.simple_profile("birthdate","address","sex")    == Dict{Any,Any}("birthdate"=>"1974-11-23","sex"=>"F","address"=>"16379 Quigley Ramp Smithamborough, OK 39559-7992")
@test Faker.simple_profile("name")  == Dict{Any,Any}("name"=>"Elina")

Faker.seed(1234)

@test Faker.mac_processor()                           == "Intel"
@test Faker.linux_processor()                         == "x86_64"
@test Faker.user_agent()                              == "opera"
@test Faker.windows_platform_token()                  == "Windows CE"
@test Faker.linux_platform_token()                    == "X11; Linux i686"
@test Faker.mac_platform_token()                      ==  "Macintosh; U; Intel Mac OS X 10_5_3"
@test Faker.chrome()                                  =="Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5331 (KHTML, like Gecko) Chrome/32.0.824.0 Safari/5331"
#@test Faker.firefox()                                 =="Mozilla/5.0 (Windows NT 4.0; sl-SI; rv:1.9.0.20) Gecko/2015-4-22 21:10:48 Firefox/6.0"
#@test Faker.safari()      == "Mozilla/5.0 (iPod; U; CPU iPhone OS 3_1 like Mac OS X; it-IT) AppleWebKit/534.28.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B115 Safari/6534.28.6"
#@test Faker.opera()                             ==  "Opera/9.26.(Windows NT 6.1; sl-SI) Presto/2.9.160 Version/10.00)"
#@test Faker.internet_explorer()                 == "Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/3.1)"