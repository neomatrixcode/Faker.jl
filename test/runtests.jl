using Faker
using Test

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

Faker.company()                                 == "Kohler-Ward"
Faker.company_suffix()                          == "Inc"
Faker.catch_phrase()                            == "Multi-layered user-facing functionalities"
Faker.bs()                                      == "WestVirginia"

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

Faker.email()                                   == "eliza@mann.net"
Faker.free_email()                              == "freddy@gmail.com"
Faker.safe_email()                              == "christelle@example.org"
Faker.user_name()                               == "melissa.price"
Faker.domain_name()                             == "effertz.info"
Faker.domain_word()                             == "haleyziemann"
Faker.domain_suffix()                           == "info"
Faker.ipv4()                                    == "24.29.18.175"
Faker.ipv6()                                    == "ac5f:d696:3807:1d72:2eb5:4e81:7d2b:e1df"
Faker.uri()                                     == "http://osinski.com/register/"
Faker.url()                                     == "http://schmeler.com/"

Faker.text(number_chars=200)
Faker.sentence(number_words=6, variable_nb_words=true)
Faker.word()
Faker.paragraphs()
Faker.words(number_words=3)
Faker.paragraph(number=3)
Faker.sentences(number_sentences=3)

@test Faker.phone_number()  == "1-117-772-5161 x45382"
@test Faker.cell_phone() == "(286) 874-0814"

Faker.password()                                == "cQYVB)X%0"
Faker.locale()                                  == "en_SE"
Faker.null_boolean()                            == "True"
Faker.country_code()                            == "DO"
Faker.language_code()                           == "ru"
Faker.boolean()                                 == "True"


@test Faker.color_name()                              == "MediumSeaGreen"
@test Faker.safe_color_name()                         == "white"
@test Faker.hex_color()                               == "#C0C0C0"
@test Faker.rgb_color_list()                          == "(34,112,7)"
@test Faker.rgb_color()                               == "145,19,218"
@test Faker.rgb_css_color()                           == "rgb(113,128,99)"


Faker.credit_card_security_code()               == "768"
Faker.credit_card_full()                        == "VISA 16 digit Keon Marvin 4493818436107305 CVC 976"
Faker.credit_card_number()                      == "4916619442820082"
Faker.credit_card_provider()                    == "American Express"
Faker.generate_number("52",16)                  == "5268029839131090"

Faker.mime_type()                               == "video/quicktime"
Faker.file_extension()                          == "css"
Faker.file_name()                               == "sUwb.flac"

Faker.first_name()                              == "Cayden"
Faker.last_name()                               == "Hickle"
Faker.prefixe()                                 == "Mrs"

Faker.simple_profile()

Faker.job()

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

Faker.company()                                 == "Kohler-Ward"
Faker.company_suffix()                          == "Inc"
Faker.catch_phrase()                            == "Multi-layered user-facing functionalities"
Faker.bs()                                      == "WestVirginia"

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

Faker.email()                                   == "eliza@mann.net"
Faker.free_email()                              == "freddy@gmail.com"
Faker.safe_email()                              == "christelle@example.org"
Faker.user_name()                               == "melissa.price"
Faker.domain_name()                             == "effertz.info"
Faker.domain_word()                             == "haleyziemann"
Faker.domain_suffix()                           == "info"
Faker.ipv4()                                    == "24.29.18.175"
Faker.ipv6()                                    == "ac5f:d696:3807:1d72:2eb5:4e81:7d2b:e1df"
Faker.uri()                                     == "http://osinski.com/register/"
Faker.url()                                     == "http://schmeler.com/"

Faker.text(number_chars=200)
Faker.sentence(number_words=6, variable_nb_words=true)
Faker.word()
Faker.paragraphs()
Faker.words(number_words=3)
Faker.paragraph(number=3)
Faker.sentences(number_sentences=3)

@test Faker.phone_number()  == "316 827 6859"
@test Faker.cell_phone() == "044 482-081-4610"

Faker.password()                                == "cQYVB)X%0"
Faker.locale()                                  == "en_SE"
Faker.null_boolean()                            == "True"
Faker.country_code()                            == "DO"
Faker.language_code()                           == "ru"
Faker.boolean()                                 == "True"


@test Faker.color_name()                              == "Cornsilk"
@test Faker.safe_color_name()                         == "gold"
@test Faker.hex_color()                               == "#800080"
@test Faker.rgb_color_list()                          == "(128,99,234)"
@test Faker.rgb_color()                               == "239,250,27"
@test Faker.rgb_css_color()                           == "rgb(125,104,163)"


Faker.credit_card_security_code()               == "768"
Faker.credit_card_full()                        == "VISA 16 digit Keon Marvin 4493818436107305 CVC 976"
Faker.credit_card_number()                      == "4916619442820082"
Faker.credit_card_provider()                    == "American Express"
Faker.generate_number("52",16)                  == "5268029839131090"

Faker.mime_type()                               == "video/quicktime"
Faker.file_extension()                          == "css"
Faker.file_name()                               == "sUwb.flac"

@test Faker.first_name()                              == "Reyna"
@test Faker.last_name()                               == "Segura"
@test Faker.prefixe()                                 == "Lic."
Faker.simple_profile()

Faker.job()

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