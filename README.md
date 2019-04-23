# Faker

<p align="center"><img src="faker.png" width="25%" ></p>
<p align="center">
<strong>Generator of fake data for julia.</strong>
<br><br>
<a href="https://travis-ci.org/codeneomatrix/Faker.jl"><img src="https://travis-ci.org/codeneomatrix/Faker.jl.svg?branch=master"></a>
<a href="https://codecov.io/gh/codeneomatrix/Faker.jl">
  <img src="https://codecov.io/gh/codeneomatrix/Faker.jl/branch/master/graph/badge.svg" />
</a>
&nbsp;&nbsp
<a href="https://pkg.julialang.org/detail/Faker"><img src="https://pkg.julialang.org/badges/Faker_0.4.svg"></a>
 &nbsp;&nbsp;
<a href="https://raw.githubusercontent.com/codeneomatrix/Faker.jl/master/LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>

Roadmap
-----
Below are some of the features that are planned to be added in future versions of Faker.jl once version 1.0 of the language is released.
### All contributions and suggestions are welcome !!!!
#### Version 0.1.0
 + Julia version 0.7 syntax update

#### Version 0.2.0
 + Julia version 1.0 syntax update
 + Implementation of the seed () method.
 + Language support
 + Modularization of the method Faker.simple_profile()
 + Modularization of the method Faker.profile()

#### Version 0.3.0
  + Unicode symbol generator

#### Version 0.4.0
  + Possibility of creating a generator

Installing
----------
Pkg comes with its own REPL mode, which can be entered from the Julia REPL by pressing ]. To get back to the Julia REPL press backspace or ^C.
```julia
  # Stable version
    Pkg> add Faker
  # Development version
    Pkg> add Faker#master
```

```julia
  using Faker

  Faker.email() # => "kirsten.greenholt@corkeryfisher.info"
```


## Features available in the current release
------------------
### Seed
-----------------
Seed for the random number generator. Calling the same script twice with the same seed will produce the same results.
```julia
  Faker.seed(4321)
```
### Language support
-----------------
Data generation in the formats of each language
```julia
   Faker.language("es-MX")   - Espanish (Mexico)
```

### Base
-----------------
```julia
  Faker.random_digit()                                            # => "7"
  Faker.random_digit_not_null()                                   # => "4"
  Faker.random_digit_or_empty()                                   # => " "
  Faker.random_number(digits= 1)                                  # => "6"
  Faker.random_int(min=0, max=9999)                               # => "4994"
  Faker.randomize_nb_elements(number=10, le=false, ge=false)      # => "14.9"
  Faker.random_letter()                                           # => "d"
  Faker.random_element(("a", "b", "b"))                           # => "b"
  Faker.lexify("????")                                            # => "VTSa"
  Faker.numerify("####")                                          # => "7491"
  Faker.bothify("## ??")                                          # => "26 Eu"
```

### Address
-----------------

```julia

  Faker.state_abbr()                                # => "VT"
  Faker.latitude()                                  # => 2.505859375
  Faker.street_name()                               # => "Schaden Park"
  Faker.address()                                   # => "32935 McClure Trail East Nia, OR 11991-3585"
  Faker.street_address()                            # => "510 Maybell Keys"
  Faker.postcode()                                  # => "22773"
  Faker.longitude()                                 # => 4.01171875
  Faker.country()                                   # => "Macedonia"
  Faker.geo_coordinate(center="None", radius=0.001) # => Float16(-15.99)
  Faker.secondary_address()                         # => "Apt. 312"
  Faker.city_prefix()                               # => "West"
  Faker.city_suffix()                               # => "town"
  Faker.building_number()                           # => "532"
  Faker.city()                                      # => "Port Rudy"
  Faker.state()                                     # => "Florida"


```



### Company
-----------------

```julia

  Faker.company()                                 # =>  "Hammes Group"
  Faker.company_suffix()                          # => "Group"
  Faker.catch_phrase()                            # => "Synergistic uniform projection "
  Faker.bs()                                      # => "integrate transparent users "
```

### Date
---------------------

```julia
   Faker.months()                                                 # =>8
   Faker.am_pm()                                                  # =>"PM"
   Faker.iso8601()                                                # =>"2076-06-20T03:19:24"
   Faker.date_time()                                              # =>"2041-1-3 08:20:25"
   Faker.month_name()                                             # =>"March"
   Faker.day_of_week()                                            # =>"Saturday"
   Faker.day_of_month()                                           # => 13
   Faker.date_time_between("-30y", "now")                         # =>"1989-6-7 21:38:44"
   Faker.time("H:M:S")                                            # =>"18:46:36"
   Faker.unix_time()                                              # =>454113618933
   Faker.timezone()                                               # =>"Asia/Ulaanbaatar"
   Faker.century()                                                # =>"V"
   Faker.date("Y-m-d")                                            # =>"2023-2-19"
   Faker.year()                                                   # =>2035
   Faker.date_time_this_century(before_now=true, after_now=false) # =>"2007-1-3 00:00:00"
   Faker.date_time_this_decade(before_now=true, after_now=false)  # =>"2018-7-23 00:00:00"
   Faker.date_time_this_year(before_now=true, after_now=false)    # =>"2018-5-17 00:00:00"
   Faker.date_time_this_month(before_now=true, after_now=false)   # =>"2018-9-1 00:00:00"

```
### Internet
---------------

```julia

  Faker.email()                                   # => "TCronin@vh.org"
  Faker.free_email()                              # => "Franecki.Joanie@hotmail.com"
  Faker.safe_email()                              # => "Laurence73@example.co"
  Faker.user_name()                               # => "Iva.Ernser"
  Faker.domain_name()                             # => "sas.info"
  Faker.domain_word()                             # => "bg"
  Faker.domain_suffix()                           # =>  "io"
  Faker.ipv4()                                    # => "242.110.49.158"
  Faker.ipv6()                                    # => "7509:ff7a:85ec:55da:550d:4d4a:28df:e561"
  Faker.uri()                                     # => "http://www.rk.co/categories/main/search/"
  Faker.url()                                     # => "http://www.hi.org/"
  Faker.image_url()                               # => "http://placekitten.com/933/77"
  Faker.uri_extension()                           # => ".html"
  Faker.uri_path()                                # => "search/app/tag/categories"
  Faker.uri_page()                                # => "main"
  Faker.mac_address()                             # => "ae:8b:61:b4:a3:52"
  Faker.company_email()                           # => "Hilll.Delsie@td.name"

```

### Lorem
---------------

```julia

  Faker.text(number_chars=200)                           # =>  "Laudantium molestias eos rerum. Cupiditate voluptatem exercitationem enim.. Qui qui suscipit aspernatur porro. Non. Officiis consequatur harum architecto quibusdam. Explicabo voluptas cumque distinctio maiores voluptatibus.."
  Faker.sentence(number_words=6, variable_nb_words=true) # => "Distinctio numquam velit voluptatem incidunt."
  Faker.word()                                           # => "eaque"
  Faker.paragraphs()                                     # => ["Numquam unde et dolorem. Rem aut harum perspiciatis. Veritatis..", "Consequuntur consequatur recusandae quis. Nobis dolorem ipsum non ipsam. Quia vel et minus sed. Molestiae velit iure..", "Culpa expedita. Quo voluptatibus voluptatem ea placeat.."]
  Faker.words(number_words=3)                            # =>["qui", "eos", "sit"]
  Faker.paragraph(number=3)                              # =>"Earum exercitationem architecto deserunt dicta alias. Qui eos sint iusto aut.."
  Faker.sentences(number_sentences=3)                    # => ["In et voluptatem.", "Nostrum sapiente molestiae.", "Saepe ut in non quasi.", "Ab totam perspiciatis."]

```

```julia

  Faker.phone_number()   # => "736-329-3523 x8270"
  Faker.cell_phone()     # =>  "(265) 714-5444"

```


### Misc
---------------------
```julia
  Faker.password()      # => "D3Wt#5(2&5&b#7'R%9BsA5Xr%*Uu%kRy99htT8Fn"
  Faker.locale()        # => "cn_NF"
  Faker.null_boolean()  # => false
  Faker.country_code()  # => "SS"
  Faker.language_code() # => "es"
  Faker.boolean()       # => true
```


### Color
---------------------
```julia
  Faker.color_name()                              # => "LightYellow"
  Faker.safe_color_name()                         # => "orchid"
  Faker.hex_color()                               # => "#FFFAFA"
  Faker.rgb_color_list()                          # => "(215,221,84)"
  Faker.rgb_color()                               # => "131,80,74"
  Faker.rgb_css_color()                           # => "rgb(68,107,109)"
```


### Credit_card
---------------------
```julia
  Faker.credit_card_security_code()               # => "736"
  Faker.credit_card_full()                        # =>"JCB 16 digit Catherine Crist 3096352382707498 CVC 714"
  Faker.credit_card_number()                      # => "869944451199135"
  Faker.credit_card_provider()                    # => "laser"
  Faker.generate_number("52",16)                  # => "5276029874944399"
```

### File
---------------------
```julia
  Faker.mime_type()                               # => "image/x-freehand"
  Faker.file_extension()                          # => "rmvb"
  Faker.file_name()                               # => "wTPd.pgn"
```


### Person
---------------------
```julia
  Faker.first_name()                                   # => "Jacqulyn"
  Faker.last_name()                                    # =>  "Cronin"
  Faker.prefixe()                                      # => "Miss"
  Faker.simple_profile()                               # =>  Dict("name"=>"Domingo","mail"=>"Durgan.Krystle@hotmail.com","username"=>"Kimbery29","birthdate"=>"2007-5-18","sex"=>"F","address"=>"8557 McDermott Shores West Alex, OR 96510-7890")
  Faker.job()                                          # => "Immigration officer"
  Faker.profile())                                     # =>  "Dict{String,Any}(\"username\"=>\"Howell.Dannie\",\"sex\"=>\"M\",\"address\"=>\"931 Grover Court Soilashire, WY 69092-3732\",\"name\"=>\"Marissa\",\"job\"=>\"Land/geomatics surveyor\",\"mail\"=>\"Blondell71@yahoo.com\",\"birthdate\"=>\"1984-12-1\",\"current_location\"=>(-1.49512, -5.98828),\"blood_group\"=>\"B-\",\"residence\"=>\"6427 Treutel Divide Tienfort, MT 97964-8925\",\"company\"=>\"Legros and Sons\",\"website\"=>\"http://ol.info/\")"
  Faker.profile("username")                            # =>  Dict{Any,Any}("username"=>"Olson.Willy")
  Faker.profile("username","blood_group")              # =>  Dict{Any,Any}("blood_group"=>"A-","username"=>"Ronda.Heller")
  Faker.simple_profile("birthdate","address","sex")    # => Dict{Any,Any}("birthdate"=>"1974-11-23","sex"=>"F","address"=>"16379 Quigley Ramp Smithamborough, OK 39559-7992")
  Faker.simple_profile("name")                         # => Dict{Any,Any}("name"=>"Elina")
```


### User_agent
---------------------
```julia
  Faker.mac_processor()                           # => "Intel"
  Faker.linux_processor()                         # => "x86_64"
  Faker.user_agent()                              # => "opera"
  Faker.windows_platform_token()                  # => "Windows CE"
  Faker.linux_platform_token()                    # => "X11; Linux i686"
  Faker.mac_platform_token()                      # =>  "Macintosh; U; Intel Mac OS X 10_5_3"
  Faker.chrome()                                  # =>"Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5331 (KHTML, like Gecko) Chrome/32.0.824.0 Safari/5331"
  Faker.firefox()                                 # =>"Mozilla/5.0 (Windows NT 4.0; sl-SI; rv:1.9.0.20) Gecko/2015-4-22 21:10:48 Firefox/6.0"
  Faker.safari()                                  # => "Mozilla/5.0 (iPod; U; CPU iPhone OS 3_1 like Mac OS X; it-IT) AppleWebKit/534.28.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B115 Safari/6534.28.6"
  Faker.opera()                                   # =>  "Opera/9.26.(Windows NT 6.1; sl-SI) Presto/2.9.160 Version/10.00)"
  Faker.internet_explorer()                       # => "Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/3.1)"
```


License
-------
This code is free to use under the terms of the MIT license.
