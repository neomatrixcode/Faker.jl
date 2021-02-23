
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

@test Faker.state_abbr() == "RI"
@test Faker.latitude() == 2.505859375
@test Faker.street_name() == "Erinn Coves"
@test Faker.address() == "56169 Edra Walk Port Neville, VT 59156-0600"
@test Faker.street_address() == "09400 Leroy Square"
@test Faker.postcode() == "06121"
@test Faker.longitude() == 15.0078125
@test Faker.country() == "Croatia"
@test Faker.geo_coordinate(center="None", radius=0.001) == Float16(2.01)
@test Faker.secondary_address() == "Apt. 936"
@test Faker.city_prefix() == "Port"
@test Faker.city_suffix() == "mouth"
@test Faker.building_number() == "935"
@test Faker.city() == "South Jarrod"
@test Faker.state() == "Montana"

Faker.seed(85)

@test Faker.company()                                 ==  "Okuneva, Crist and Kertzmann"
@test Faker.company_suffix()                          == "and Sons"
@test Faker.catch_phrase()                            == "Cross-platform multi-state ability "
@test Faker.bs()                                      == "deliver seamless initiatives "

Faker.seed(85)

@test Faker.months() ==10
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

Faker.seed(85)

@test Faker.email()                                   == "Johanna21@hotmail.com"
@test Faker.free_email()                              == "BLakin@yahoo.com"
@test Faker.safe_email()                              == "BReichert@example.net"
@test Faker.user_name()                               == "XChristiansen"
@test Faker.domain_name()                             == "sg.com"
@test Faker.domain_word()                             == "ltaw"
@test Faker.domain_suffix()                           ==  "info"
@test Faker.ipv4()                                    == "218.39.27.93"
@test Faker.ipv6()                                    == "693a:ef86:6ef8:57a1:78e1:af47:83f1:8c3d"
@test Faker.uri()                                     == "http://www.ns.biz/"
@test Faker.url()                                     == "http://www.vi.co/"
@test Faker.image_url()                               == "http://dummyimage.com/967x151"
@test Faker.uri_extension()                           == ".html"
@test Faker.uri_path()                                == "tag/posts"
@test Faker.uri_page()                                == "faq"
@test Faker.mac_address()                             == "5c:68:54:b1:4e:8b"
@test Faker.company_email()                           == "DBorer@pmak.co"

Faker.seed(85)

@test Faker.text(number_chars=200) ==  "Sequi iusto quis quia. Aut ut est quia. Ut et atque iusto. Consectetur sit sed et.. Alias rem quaerat aut totam reiciendis. Quo necessitatibus temporibus quas. Qui mollitia expedita alias harum inventore.."
@test Faker.sentence(number_words=6, variable_nb_words=true) == "Omnis."
@test Faker.word() == "magni"
@test Faker.paragraphs() ==  ["Eveniet explicabo aspernatur qui. Quia consequatur et quisquam quidem maxime. Et corrupti omnis..", "Ut. Illo..", "Inventore accusantium quibusdam. Corrupti. Perferendis rem. Commodi aliquam molestiae.."]
@test Faker.words(number_words=3) == ["ad", "provident", "animi"]
@test Faker.paragraph(number=3) == "Quasi. Consectetur veniam aut aspernatur. Quo repellendus reprehenderit. Optio atque.."
@test Faker.sentences(number_sentences=3) ==  ["Voluptates earum eius.", "Odit asperiores eum optio.", "Placeat.", "Quod perferendis reiciendis sed perferendis."]

Faker.seed(85)

@test Faker.phone_number()  ==  "614.216.0561 x6994"
@test Faker.cell_phone() ==  "069-042-9495"

Faker.seed(85)

@test Faker.password() == ")6E)\$SRA&6Eq*9Yl51Ix!6Z'&+Zm2a1fd5Ml'6aq"
@test Faker.locale() == "es_AT"
@test Faker.null_boolean() == false
@test Faker.country_code() == "TR"
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
@test Faker.generate_number("52",16)                  == "5260071458008918"

Faker.seed(85)

@test Faker.mime_type()                               == "application/vnd.sun.xml.writer.global"
@test Faker.file_extension()                          == "rl"
@test Faker.file_name()                               == "HROe.deploy"

Faker.seed(85)

@test Faker.first_name()                              == "Marvin"
@test Faker.last_name()                               ==  "Crist"
@test Faker.prefixe()                                 == "Ms."
@test Faker.simple_profile()                    ==  Dict("name" => "Tarra","mail" => "Mann.Yuriko@hotmail.com","username" => "Maybell.Altenwerth","birthdate" => "2021-4-18","sex" => "M","address" => "400 Easter Via South Rey, CT 61211")
@test Faker.job()                               == "Claims inspector/assessor"
a=Faker.profile()
b= Dict("username"=>"Ondricka.Scottie",
 "sex"=>"M",
 "address"=>"9209 Rodolfo Mall Port Arturo, WV 74853-8463",
 "name"=>"Gwyneth",
 "job"=>"Clinical embryologist",
 "mail"=>"Krista08@gmail.com",
 "birthdate"=>"2018-12-17",
 "current_location"=> (-1.9951171875, -5.98828125),
 "blood_group"=>"B-",
 "residence"=>"1754 Schulist Springs Edmundoside, KY 71020-5393",
 "company"=>"Hand Group",
 "website"=>"http://www.mm.com/"
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

@test Faker.profile("username")             ==  Dict{Any,Any}("username" => "Hester55")
@test Faker.profile("username","blood_group")==  Dict{Any,Any}("blood_group" => "B-","username" => "Blick.Hoyt")
@test Faker.simple_profile("birthdate","address","sex")    == Dict{Any,Any}("birthdate" => "2097-2-24","sex" => "M","address" => "9513 Lavera Lights Merlemouth, DE 77378-0832")
@test Faker.simple_profile("name")  == Dict{Any,Any}("name" => "Rutha")

Faker.seed(85)

@test Faker.mac_processor()                           == "U; PPC"
@test Faker.linux_processor()                         == "x86_64"
@test Faker.user_agent()                              == "chrome"
@test Faker.windows_platform_token()                  == "Windows NT 5.0"
@test Faker.linux_platform_token()                    == "X11; Linux i686"
@test Faker.mac_platform_token()                      ==  "Macintosh; Intel Mac OS X 10_7_0"
@test Faker.chrome()                                  =="Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5341 (KHTML, like Gecko) Chrome/41.0.843.0 Safari/5341"