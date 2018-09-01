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

#### Version 0.2.1
  + Unicode symbol generator

#### Version 0.2.2
  + Possibility of creating a generator

#### Version 0.2.3
  + Modularization of the method Faker.simple_profile()
  > Possible syntax :
  ```bash
  Faker.simple_profile("name,birthdate")   # => ("name"=>"Benito","birthdate"=>"1997-3-16")
  ```
  + Modularization of the method Faker.profile()
  > Possible syntax :
  ```bash
  Faker.profile("blood_group,job")   # => ("blood_group"=>"AB-","job"=>"Radiographer)
  ```

Installing
----------
```julia
# Stable version
  Pkg> add Faker
# Development version
  Pkg> add Faker#master
```

```julia
using Faker

Faker.email() #  => "kirsten.greenholt@corkeryfisher.info"
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
Faker.random_digit()                                        # => 9
Faker.random_digit_not_null()                               # => 1
Faker.random_digit_or_empty()                               # => 5
Faker.random_number(digits= 1)                              # => 31730
Faker.random_int(min=0, max=9999)                           # => 7545
Faker.randomize_nb_elements(number=10, le=false, ge=false)  # => 8.0
Faker.random_letter()                                       # => N
Faker.random_element(("a", "b", "b"))                       # => b
Faker.lexify("????")                                        # => cIxw
Faker.numerify("####")                                      # => 643
Faker.bothify("## ??")                                      # => 92 Hu
```

### Address
-----------------

```julia

Faker.state_abbr()                                 # => AP
Faker.latitude()                                   # => -74.518224
Faker.street_name()                                # => Green Knoll
Faker.address()                                    # => 741 Drucilla Lights Marlenport, VT 54198-4463
Faker.street_address()                             # => 4630 Kling Throughway
Faker.postcode()                                   # => 18604-5538
Faker.longitude()                                  # => 41.536069
Faker.country()                                    # => Montserrat
Faker.geo_coordinate(center="None", radius=0.001)  # => 48.396071
Faker.secondary_address()                          # => Apt. 621
Faker.city_prefix()                                # => Lake
Faker.city_suffix()                                # => ville
Faker.building_number()                            # => 7065
Faker.city()                                       # => West Donato
Faker.state()                                      # => WestVirginia


```



### Company
-----------------

```julia

Faker.company()                                 # => Kohler-Ward
Faker.company_suffix()                          # => Inc
Faker.catch_phrase()                            # => Multi-layered user-facing functionalities
Faker.bs()                                      # => WestVirginia

```

### Date
---------------------

```julia
Faker.date_time_ad()                                           # => 1446-03-17 04:03:47
Faker.months()                                                 # => 10
Faker.am_pm()                                                  # => PM
Faker.iso8601()                                                # => 1986-05-02T21:01:04
Faker.date_time()                                              # => 1981-10-29 21:56:29
Faker.month_name()                                             # => November
Faker.day_of_week()                                            # => Thursday
Faker.day_of_month()                                           # => 14
Faker.date_time_between("-30y", "now")                         # => 1990-01-30 11:47:01
Faker.time("H:M:S")                                            # => 21:44:43
Faker.unix_time()                                              # => 711770812
Faker.timezone()                                               # => Atlantic/Reykjavik
Faker.century()                                                # => XV
Faker.date("Y-m-d")                                            # => 1998-09-11
Faker.year()                                                   # => 1998
Faker.date_time_this_century(before_now=true, after_now=false) # => 1941-12-05 15:52:02
Faker.date_time_this_decade(before_now=true, after_now=false)  # => 2013-02-24 18:47:46
Faker.date_time_this_year(before_now=true, after_now=false)    # => 2013-04-22 14:51:26
Faker.date_time_this_month(before_now=true, after_now=false)   # => 2014-04-02 08:38:48

```
### Internet
---------------

```julia

Faker.email()                                   # => "eliza@mann.net"
Faker.free_email()                              # => "freddy@gmail.com"
Faker.safe_email()                              # => "christelle@example.org"
Faker.user_name()                               # => "melissa.price"
Faker.domain_name()                             # => "effertz.info"
Faker.domain_word()                             # => "haleyziemann"
Faker.domain_suffix()                           # => "info"
Faker.ipv4()                                    # => "24.29.18.175"
Faker.ipv6()                                    # => "ac5f:d696:3807:1d72:2eb5:4e81:7d2b:e1df"
Faker.uri()                                     # => "http://osinski.com/register/"
Faker.url()                                     # => "http://schmeler.com/"

```

### Lorem
---------------

```julia

Faker.text(number_chars=200)                              # => Et dolor voluptates quaerat. Natus qui consequatur dolor facere. Tenetur repudiandae totam id vitae aut.
Faker.sentence(number_words=6, variable_nb_words=true)    # => Alias officiis dignissimos maxime nam ad distinctio.
Faker.word()                                              # => qui
Faker.paragraphs()                                        # => [u'Numquam cupiditate omnis impedit nesciunt laboriosam. Vitae hic iste qui deleniti quo incidunt ratione.
                       Natus ullam libero dolore sunt.', u'Veritatis nostrum quod dolorem soluta cupiditate qui incidunt.
                       Rerum minus commodi repreh enderit. Sed in dolor quia ut est. Impedit eos nihil aut m olestiae
                       reiciendis.', u'Ullam dolor molestias sit officii s expedita fuga repellat. Et fuga sequi sit. Aperiam
                      quaer at sint quasi vel nam.']
Faker.words(number_words=3)                                # => [u'corrupti', u'ipsum', u'inventore']
Faker.paragraph(number=3)                                  # => Voluptatibus quae nihil aut amet quos. Vitae fugiat adipisci inventore eaque adipisci quia. Nostrum non et numquam illum. Sed id dolore quia.
Faker.sentences(number_sentences=3)                        # => [u'Ipsam rerum molestias quod magni totam pariatur enim.',u'Dolores perspiciatis consequatur porro
                      recusandae sit voluptatem sint accusamus.', u'Repellendus explicabo delectus ad #Name
```

```julia

Faker.phone_number()                            # => 456-089-3337x803

```


### Misc
---------------------
```julia
Faker.password()                                # => cQYVB)X%0$
Faker.locale()                                  # => en_SE
Faker.null_boolean()                            # => True
Faker.country_code()                            # => DO
Faker.language_code()                           # => ru
Faker.boolean()                                 # => True
```


### Color
---------------------
```julia
Faker.color_name()                              # => DarkMagenta
Faker.safe_color_name()                         # => purple
Faker.hex_color()                               # => #77cc00
Faker.safe_hex_color()                          # => #16a100
Faker.rgb_color_list()                          # => (230, 94, 69)
Faker.rgb_color()                               # => 213,100,110
Faker.rgb_css_color()                           # => rgb(88,244,35)
```


### Credit_card
---------------------
```julia
Faker.credit_card_security_code()               # => 768
Faker.credit_card_full()                        # => VISA 16 digit Keon Marvin 4493818436107305 CVC 976
Faker.credit_card_number()                      # => 4916619442820082
Faker.credit_card_provider()                    # => American Express
Faker.generate_number("52",16)                  # => 5268029839131090
```

### File
---------------------
```julia
Faker.mime_type()                               # => video/quicktime
Faker.file_extension()                          # => css
Faker.file_name()                               # => sUwb.flac
```


### Person
---------------------
```julia
Faker.first_name()                              # => Cayden
Faker.last_name()                               # => Hickle
Faker.prefixe()                                 # => Mrs
```

### Profile
---------------------
```julia
Faker.simple_profile()                          # =>
  "name"      => "Iván"
  "mail"      => "XMeléndez@hotmail.com"
  "username"  => "Genaro.Garibay"
  "birthdate" => "1990-3-10"
  "sex"       => "M"
  "address"   => "Privada Sur Malave 059 Edif. 163 , Depto. 573 San Emilio de la Montaña, SIN 64501-6962"
```

### Job
---------------------
```julia
Faker.job()                                     # => Geneticist, molecular
```

### User_agent
---------------------
```julia
Faker.mac_processor()                           # => U; PPC
Faker.linux_processor()                         # => x86_64
Faker.user_agent()                              # => safari
Faker.windows_platform_token()                  # => Windows NT 6.0
Faker.linux_platform_token()                    # => X11; Linux x86_64
Faker.mac_platform_token()                      # => Macintosh; U; PPC Mac OS X 10_6_5
Faker.chrome()                                  # => Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5311 (KHTML, like Gecko)                                          # => Chrome/14.0.867.0 Safari/5311
Faker.firefox()                                 # => Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_7; rv:1.9.3.20)                                    # => Gecko/2002-10-25 15:36:53 Firefox/7.0
Faker.safari()                                  # => Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_9 rv:3.0; it-IT)                                          # => AppleWebKit/532.42.3 (KHTML, like Gecko) Version/5.0.1 Safari/532.42.3
Faker.opera()                                   # => Opera/9.97.(Windows CE; sl-SI) Presto/2.9.182 Version/12.00)
Faker.internet_explorer()                       # => Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.01; Trident/5.0)
```


License
-------
This code is free to use under the terms of the MIT license.
