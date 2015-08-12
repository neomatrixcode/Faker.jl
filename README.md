Faker
=====
[![Build Status](https://travis-ci.org/codeneomatrix/Faker.jl.svg)](https://travis-ci.org/codeneomatrix/Faker.jl)

This package is a port of Perl's Data::Faker library that generates fake data.

Experimental! Use at your own risk!
===================================

NOTE: While Faker generates data at random, returned values are not guaranteed to be unique.

Installing
----------
```bash
Pkg.clone("git://github.com/codeneomatrix/Faker.jl.git")
```

##Usage
-----
```julia
using Faker

Faker.email() # => "kirsten.greenholt@corkeryfisher.info"
```

###Address
-----------------

```julia

Faker.state_abbr()                              # => AP
Faker.latitude()                                # => -74.518224
Faker.street_name()                             # => Green Knoll
Faker.address()                                 # => 741 Drucilla Lights Marlenport, VT 54198-4463
Faker.street_address()                          # => 4630 Kling Throughway
Faker.postcode()                                # => 18604-5538
Faker.longitude()                               # => 41.536069
Faker.country()                                 # => Montserrat
geo_coordinate(center=None, radius=0.001) # => 48.396071
Faker.secondary_address()                       # => Apt. 621
Faker.street_suffix()                           # => Crossing
Faker.city_prefix()                             # => Lake
Faker.city_suffix()                             # => ville
Faker.building_number()                         # => 7065
Faker.city()                                    # => West Donato
Faker.state()                                   # => WestVirginia


```



###Company
-----------------

```julia

Faker.company()        # => Kohler-Ward
Faker.company_suffix() # => Inc
Faker.catch_phrase()   # => Multi-layered user-facing functionalities
Faker.bs()             # => WestVirginia

```

###Date
---------------------

```julia
Faker.date_time_ad()                                       # => 1446-03-17 04:03:47
Faker.month()                                              # => 10
Faker.am_pm()                                              # => PM
Faker.iso8601()                                            # => 1986-05-02T21:01:04
Faker.date_time_this_century()                             # => 1941-12-05 15:52:02
Faker.date_time()                                          # => 1981-10-29 21:56:29
Faker.month_name()                                         # => November
Faker.date_time_this_month()                               # => 2014-04-02 08:38:48
Faker.date_time_this_decade()                              # => 2013-02-24 18:47:46
Faker.day_of_week()                                        # => Thursday
Faker.day_of_month()                                       # => 14
time("%H:%M:%S")                                     # => 21:44:43
date_time_between("-30y", "now")                     # => 1990-01-30 11:47:01
Faker.unix_time()                                          # => 711770812
Faker.date_time_this_year()                                # => 2013-04-22 14:51:26
Faker.timezone()                                           # => Atlantic/Reykjavik
Faker.century()                                            # => XV
date("%Y-%m-%d")                                     # => 1998-09-11
Faker.year()         

```
###Internet
---------------

```julia

Faker.email()             # => "eliza@mann.net"
Faker.free_email()        # => "freddy@gmail.com"
Faker.safe_email()        # => "christelle@example.org"
Faker.user_name()         # => "melissa.price"
Faker.domain_name()       # => "effertz.info"
Faker.domain_word()       # => "haleyziemann"
Faker.domain_suffix()     # => "info"
Faker.ip_v4_address()     # => "24.29.18.175"
Faker.ip_v6_address()     # => "ac5f:d696:3807:1d72:2eb5:4e81:7d2b:e1df"
Faker.uri()               # => "http://osinski.com/register/"
Faker.url()               # => "http://schmeler.com/"

```

###Lorem
---------------

```julia

Faker.text()           # => Et dolor voluptates quaerat. Natus qui consequatur dolor facere. Tenetur repudiandae totam id vitae aut.
Faker.sentence()       # => Alias officiis dignissimos maxime nam ad distinctio.
Faker.word()           # => qui
Faker.paragraphs()     # => [u'Numquam cupiditate omnis impedit nesciunt laboriosam. Vitae hic iste qui deleniti quo incidunt ratione.
                       Natus ullam libero dolore sunt.', u'Veritatis nostrum quod dolorem soluta cupiditate qui incidunt. 
                       Rerum minus commodi repreh enderit. Sed in dolor quia ut est. Impedit eos nihil aut m olestiae 
                       reiciendis.', u'Ullam dolor molestias sit officii s expedita fuga repellat. Et fuga sequi sit. Aperiam
                      quaer at sint quasi vel nam.']
Faker.words()          # => [u'corrupti', u'ipsum', u'inventore']
Faker.paragraph()      # => Voluptatibus quae nihil aut amet quos. Vitae fugiat adipisci inventore eaque adipisci quia. Nostrum non et numquam illum. Sed id dolore quia.
Faker.sentences()      # => [u'Ipsam rerum molestias quod magni totam pariatur enim.',u'Dolores perspiciatis consequatur porro 
                      recusandae sit voluptatem sint accusamus.', u'Repellendus explicabo delectus ad #Name
```


###PhoneNumber
---------------------

Phone numbers may be in any of the following formats:

  * +33(3)3333333333
  * +33(3)3333333333
  * 03333333333
  * 03333333333
  * 333-333-3333
  * (333)333-3333
  * 1-333-333-3333
  * 333.333.3333
  * 333-333-3333
  * (333)333-3333
  * 1-333-333-3333
  * 333-333-3333x333

(Don't let the example output below fool you - any format can be returned at random.)

```julia

Faker.phone_number()                                       # => 456-089-3337x803

```


###Misc
---------------------
```julia
Faker.password()                                           # => cQYVB)X%0$
Faker.locale()                                             # => en_SE
Faker.md5()                                                # => 74c3bf36bfc61f2bda75492b422bfaa7
Faker.sha1()                                               # => b221ee6090aa125f9acca8ea851d0dc7d9fb0886
Faker.null_boolean()                                       # => True
Faker.sha256()                                             # => 87a636998cfd1b73b371079d51df2b6b419c94053d73b0da29a7f2e2da7f070a
Faker.country_code()                                       # => DO
Faker.language_code()                                      # => ru
Faker.boolean()                                            # => True
```

License
-------
This code is free to use under the terms of the MIT license.