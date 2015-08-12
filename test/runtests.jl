using Faker
using Base.Test

@test  ismatch(r"[0-9]", Faker.random_digit())
@test  ismatch(r"([0-9])|([0-9]{2})|([0-9]{3})|([0-9]{4})", Faker.random_int())
@test  ismatch(r"[0-9]", Faker.random_digit() )
@test  ismatch(r"[0-9]", Faker.random_digit_not_null() )
#print(Faker.random_digit_or_empty() )
#print(Faker.random_digit_not_null_or_empty() )
@test  ismatch(r"[0-9]", Faker.random_number() )
@test  ismatch(r"[0-9]", Faker.randomize_nb_elements() )
@test  ismatch(r"[a-zA-Z]", Faker.random_letter() )
@test  ismatch(r"[a-zA-Z]", Faker.random_element() )
@test  ismatch(r"[0-9]{2}[a-zA-Z]{2}", Faker.bothify("##??") )


#Faker.state_abbr()
#Faker.latitude()
#Faker.street_name()
#Faker.address()
#Faker.street_address()
#Faker.postcode()
#Faker.longitude()
#Faker.country()
#Faker.geo_coordinate("None", 0.001)
#Faker.secondary_address()
#Faker.city_prefix()
#Faker.city_suffix()
#Faker.building_number()
#Faker.city() 
#Faker.state()


#Faker.company()
#Faker.company_suffix()
#Faker.company_prefix()
#Faker.catch_phrase()
#Faker.bs()

#Faker.date_time_ad()
#Faker.months()
#Faker.am_pm()
#Faker.iso8601()
#Faker.date_time_this_century()
#Faker.date_time()
#Faker.month_name()
#Faker.date_time_this_month()
#Faker.date_time_this_decade()
#Faker.day_of_week()
#Faker.day_of_month()
#Faker.time("%H:%M:%S")
#Faker.date_time_between("-30y", "now")
#Faker.unix_time()
#Faker.date_time_this_year()
#Faker.timezone()
#Faker.century()
#Faker.date("%Y-%m-%d")
#Faker.year()
 
#Faker.email()
#Faker.free_email()
#Faker.safe_email()
#Faker.user_name()
#Faker.domain_name()
#Faker.domain_word()
#Faker.domain_suffix()
#Faker.ipv4()
#Faker.ipv6()
#Faker.uri()
#Faker.url()


#Faker.text()
#Faker.sentence()
#Faker.word()
#Faker.paragraphs()
#Faker.words()
#Faker.paragraph()
#Faker.sentences()

#Faker.phone_number())


#Faker.password()
#Faker.locale()
#Faker.md5()
#Faker.sha1()
#Faker.null_boolean()
#Faker.sha256()
#Faker.country_code()
#Faker.language_code()
#Faker.boolean()

#colores
#Faker.color_name()
#Faker.safe_color_name()
#Faker.hex_color()
#Faker.safe_hex_color()
#Faker.rgb_color_list()
#Faker.rgb_color()
#Faker.rgb_css_color()


#CREDITCARD
#Faker.credit_card_provider()
#Faker.credit_card_number()
#Faker.credit_card_full()
#Faker.credit_card_security_code()
#Faker.credit_card_type()
#Faker.generate_number("52",16)

#file
#Faker.mime_type()
#Faker.file_extension()
#Faker.file_name()

#person
#Faker.first_name()
#Faker.last_name()
#Faker.prefixe()

#profile
#Faker.simple_profile()
#Faker.profile()

#job
#Faker.job()


#useragent
#Faker.mac_processor()
#Faker.linux_processor()
#Faker.user_agent()
#Faker.windows_platform_token()
#Faker.linux_platform_token()
#Faker.mac_platform_token()
#Faker.chrome()
#Faker.firefox()
#Faker.safari()
#Faker.opera()
#Faker.internet_explorer()

# write your own tests here
#@test 1 == 1

