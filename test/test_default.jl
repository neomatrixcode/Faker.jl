
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

@test Faker.company()                                 ==  "Hammes Group"
@test Faker.company_suffix()                          == "Group"
@test Faker.catch_phrase()                            == "Synergistic uniform projection "
@test Faker.bs()                                      == "integrate transparent users "

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

Faker.text(number_chars=200)
Faker.sentence(number_words=6, variable_nb_words=true)
Faker.word()
Faker.paragraphs()
Faker.words(number_words=3)
Faker.paragraph(number=3)
Faker.sentences(number_sentences=3)

Faker.seed(1234)

@test Faker.phone_number()  ==  "736-329-3523 x8270"
@test Faker.cell_phone() ==  "(265) 714-5444"

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

Faker.first_name()                              == "Cayden"
Faker.last_name()                               == "Hickle"
Faker.prefixe()                                 == "Mrs"
@test Faker.simple_profile()                    ==  Dict("name"=>"Domingo","mail"=>"Durgan.Krystle@hotmail.com","username"=>"Kimbery29","birthdate"=>"2007-5-18","sex"=>"F","address"=>"8557 McDermott Shores West Alex, OR 96510-7890")
@test Faker.job()                               == "Immigration officer"
@test "$(Faker.profile())"                      ==  "Dict{String,Any}(\"username\"=>\"Howell.Dannie\",\"sex\"=>\"M\",\"address\"=>\"931 Grover Court Soilashire, WY 69092-3732\",\"name\"=>\"Marissa\",\"job\"=>\"Land/geomatics surveyor\",\"mail\"=>\"Blondell71@yahoo.com\",\"birthdate\"=>\"1984-12-1\",\"current_location\"=>(-1.49512, -5.98828),\"blood_group\"=>\"B-\",\"residence\"=>\"6427 Treutel Divide Tienfort, MT 97964-8925\",\"company\"=>\"Legros and Sons\",\"website\"=>\"http://ol.info/\")"
@test Faker.profile("username")             ==  Dict{Any,Any}("username"=>"Olson.Willy")
@test Faker.profile("username","blood_group")==  Dict{Any,Any}("blood_group"=>"A-","username"=>"Ronda.Heller")
@test Faker.simple_profile("birthdate","address","sex")    == Dict{Any,Any}("birthdate"=>"1974-11-23","sex"=>"F","address"=>"16379 Quigley Ramp Smithamborough, OK 39559-7992")
@test Faker.simple_profile("name")  == Dict{Any,Any}("name"=>"Elina")

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
