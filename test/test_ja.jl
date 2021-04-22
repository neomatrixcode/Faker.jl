using Dates
Faker.language("ja")
Faker.seed(85)
@test typeof(  Faker.random_digit() )                                          == String
@test typeof(  Faker.random_digit_not_null() )                                 == String
@test typeof(  Faker.random_digit_or_empty() )                                 == String
@test typeof(  Faker.random_number(digits= 1) )                                == String
@test typeof(  Faker.random_int(min=0, max=9999) )                             == String
@test typeof(  Faker.randomize_nb_elements(number=10, le=false, ge=false) )    == String
@test typeof(  Faker.random_letter() )                                         == String
@test typeof(  Faker.random_element(("a", "b", "b")) )                         == String
@test typeof(  Faker.lexify("????") )                                          == String
@test typeof(  Faker.numerify("####") )                                        == String
@test typeof(  Faker.bothify("## ??") )                                        == String
Faker.seed(85)
@test typeof(  Faker.state_abbr() )                                            == String
@test typeof(  Faker.latitude() )                                              == Float64
@test typeof(  Faker.street_name() )                                           == String
@test typeof(  Faker.address() )                                               == String
@test typeof(  Faker.street_address() )                                        == String
@test typeof(  Faker.postcode() )                                              == String
@test typeof(  Faker.longitude() )                                             == Float64
@test typeof(  Faker.country() )                                               == String
@test typeof(  Faker.geo_coordinate(center="None", radius=0.001) )             == Float16
@test typeof(  Faker.secondary_address() )                                     == String
@test typeof(  Faker.city_prefix() )                                           == String
@test typeof(  Faker.city_suffix() )                                           == String
@test typeof(  Faker.building_number() )                                       == String
@test typeof(  Faker.city() )                                                  == String
@test typeof(  Faker.state() )                                                 == String
Faker.seed(85)
@test typeof(  Faker.company() )                                               == String
@test typeof(  Faker.company_suffix() )                                        == String
@test typeof(  Faker.catch_phrase() )                                          == String
@test typeof(  Faker.bs() )                                                    == String
Faker.seed(85)
@test typeof(  Faker.months() )                                                == Int64
@test typeof(  Faker.am_pm() )                                                 == String
@test typeof(  Faker.iso8601() )                                               == Dates.DateTime
@test typeof(  Faker.date_time("Y-m-d HH:MM:SS") )                             == String
@test typeof(  Faker.month_name() )                                            == String
@test typeof(  Faker.day_of_week() )                                           == String
@test typeof(  Faker.day_of_month() )                                          == Int64
@test typeof(  Faker.date_time_between("-30y", "now") )                        == String
@test typeof(  Faker.time("H:M:S") )                                           == String
@test typeof(  Faker.unix_time() )                                             == Int64
@test typeof(  Faker.timezone() )                                              == String
@test typeof(  Faker.century() )                                               == String
@test typeof(  Faker.date("Y-m-d") )                                           == String
@test typeof(  Faker.year() )                                                  == Int64
@test typeof(  Faker.date_time_this_century(before_now=true, after_now=false, pattern="Y-m-d HH:MM:SS") )== String
@test typeof(  Faker.date_time_this_decade(before_now=true, after_now=false, pattern="Y-m-d HH:MM:SS") ) == String
@test typeof(  Faker.date_time_this_year(before_now=true, after_now=false, pattern="Y-m-d HH:MM:SS") )   == String
@test typeof(  Faker.date_time_this_month(before_now=true, after_now=false, pattern="Y-m-d HH:MM:SS") )  == String
Faker.seed(85)
@test typeof(  Faker.email() )                                                 == String
@test typeof(  Faker.free_email() )                                            == String
@test typeof(  Faker.safe_email() )                                            == String
@test typeof(  Faker.user_name() )                                             == String
@test typeof(  Faker.domain_name() )                                           == String
@test typeof(  Faker.domain_word() )                                           == String
@test typeof(  Faker.domain_suffix() )                                         == String
@test typeof(  Faker.ipv4() )                                                  == String
@test typeof(  Faker.ipv6() )                                                  == String
@test typeof(  Faker.uri() )                                                   == String
@test typeof(  Faker.url() )                                                   == String
@test typeof(  Faker.image_url() )                                             == String
@test typeof(  Faker.uri_extension() )                                         == String
@test typeof(  Faker.uri_path() )                                              == String
@test typeof(  Faker.uri_page() )                                              == String
@test typeof(  Faker.mac_address() )                                           == String
@test typeof(  Faker.company_email() )                                         == String
Faker.seed(85)
@test typeof(  Faker.text(number_chars=200) )                                  == String
@test typeof(  Faker.sentence(number_words=6, variable_nb_words=true) )        == String
@test typeof(  Faker.word() )                                                  == String
@test typeof(  Faker.paragraphs() )                                            == Array{String,1}
@test typeof(  Faker.words(number_words=3) )                                   == Array{String,1}
@test typeof(  Faker.paragraph(number=3) )                                     == String
@test typeof(  Faker.sentences(number_sentences=3) )                           == Array{String,1}
Faker.seed(85)
@test typeof(  Faker.phone_number() )                                          == String
@test typeof(  Faker.cell_phone() )                                            ==  String
Faker.seed(85)
@test typeof(  Faker.password() )                                              == String
@test typeof(  Faker.locale() )                                                == String
@test typeof(  Faker.null_boolean() )                                          == Bool
@test typeof(  Faker.country_code() )                                          == String
@test typeof(  Faker.language_code() )                                         == String
@test typeof(  Faker.boolean() )                                               == Bool
Faker.seed(85)
@test typeof(  Faker.color_name() )                                            == String
@test typeof(  Faker.safe_color_name() )                                       == String
@test typeof(  Faker.hex_color() )                                             == String
@test typeof(  Faker.rgb_color_list() )                                        == String
@test typeof(  Faker.rgb_color() )                                             == String
@test typeof(  Faker.rgb_css_color() )                                         == String
Faker.seed(85)
@test typeof(  Faker.credit_card_security_code() )                             == String
@test typeof(  Faker.credit_card_full() )                                      == String
@test typeof(  Faker.credit_card_full("amex") )                                == String
@test typeof(  Faker.credit_card_number() )                                    == String
@test typeof(  Faker.credit_card_number("amex") )                              == String
@test typeof(  Faker.credit_card_provider() )                                  == String
@test typeof(  Faker.generate_card_number() )                                  == String
@test typeof(  Faker.generate_card_number("52",16) )                           == String
Faker.seed(85)
@test typeof(  Faker.mime_type() )                                             == String
@test typeof(  Faker.file_extension() )                                        == String
@test typeof(  Faker.file_name() )                                             == String
Faker.seed(85)
@test typeof(  Faker.first_name() )                                            == String
@test typeof(  Faker.last_name() )                                             == String
@test typeof(  Faker.prefixe() )                                               == String
@test typeof(  Faker.simple_profile() )                                        == Dict{String,String}
@test typeof(  Faker.job() )                                                   == String
@test typeof(  Faker.profile() )                                               == Dict{String,Any}
@test typeof(  Faker.profile("username") )                                     == Dict{Any,Any}
@test typeof(  Faker.profile("username","blood_group") )                       == Dict{Any,Any}
@test typeof(  Faker.simple_profile("birthdate","address","sex") )             == Dict{Any,Any}
@test typeof(  Faker.simple_profile("name") )                                  == Dict{Any,Any}
Faker.seed(85)
@test typeof(  Faker.mac_processor() )                                         == String
@test typeof(  Faker.linux_processor() )                                       == String
@test typeof(  Faker.user_agent() )                                            == String
@test typeof(  Faker.windows_platform_token() )                                == String
@test typeof(  Faker.linux_platform_token() )                                  == String
@test typeof(  Faker.mac_platform_token() )                                    == String
@test typeof(  Faker.chrome() )                                                == String