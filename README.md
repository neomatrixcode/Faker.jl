Faker
=====
This gem is a port of Perl's Data::Faker library that generates fake data.

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

email() # => "kirsten.greenholt@corkeryfisher.info"
```

###Address
-----------------

```julia

state_abbr()                              # => AP
latitude()                                # => -74.518224
street_name()                             # => Green Knoll
address()                                 # => 741 Drucilla Lights Marlenport, VT 54198-4463
street_address()                          # => 4630 Kling Throughway
postcode()                                # => 18604-5538
longitude()                               # => 41.536069
country()                                 # => Montserrat
geo_coordinate(center=None, radius=0.001) # => 48.396071
secondary_address()                       # => Apt. 621
street_suffix()                           # => Crossing
city_prefix()                             # => Lake
city_suffix()                             # => ville
building_number()                         # => 7065
city()                                    # => West Donato
state()                                   # => WestVirginia


```



###Company
-----------------

```julia

company()        # => Kohler-Ward
company_suffix() # => Inc
catch_phrase()   # => Multi-layered user-facing functionalities
bs()             # => WestVirginia

```

###Date
---------------------

```julia
date_time_ad()                                       # => 1446-03-17 04:03:47
month()                                              # => 10
am_pm()                                              # => PM
iso8601()                                            # => 1986-05-02T21:01:04
date_time_this_century()                             # => 1941-12-05 15:52:02
date_time()                                          # => 1981-10-29 21:56:29
month_name()                                         # => November
date_time_this_month()                               # => 2014-04-02 08:38:48
date_time_this_decade()                              # => 2013-02-24 18:47:46
day_of_week()                                        # => Thursday
day_of_month()                                       # => 14
time("%H:%M:%S")                                     # => 21:44:43
date_time_between("-30y", "now")                     # => 1990-01-30 11:47:01
unix_time()                                          # => 711770812
date_time_this_year()                                # => 2013-04-22 14:51:26
timezone()                                           # => Atlantic/Reykjavik
century()                                            # => XV
date("%Y-%m-%d")                                     # => 1998-09-11
year()         

```
###Internet
---------------

```julia

email()             # => "eliza@mann.net"
free_email()        # => "freddy@gmail.com"
safe_email()        # => "christelle@example.org"
user_name()         # => "melissa.price"
domain_name()       # => "effertz.info"
domain_word()       # => "haleyziemann"
domain_suffix()     # => "info"
ip_v4_address()     # => "24.29.18.175"
ip_v6_address()     # => "ac5f:d696:3807:1d72:2eb5:4e81:7d2b:e1df"
uri()               # => "http://osinski.com/register/"
url()               # => "http://schmeler.com/"

```

###Lorem
---------------

```julia

text()           # => Et dolor voluptates quaerat. Natus qui consequatur dolor facere. Tenetur repudiandae totam id vitae aut.
sentence()       # => Alias officiis dignissimos maxime nam ad distinctio.
word()           # => qui
paragraphs()     # => [u'Numquam cupiditate omnis impedit nesciunt laboriosam. Vitae hic iste qui deleniti quo incidunt ratione.
                       Natus ullam libero dolore sunt.', u'Veritatis nostrum quod dolorem soluta cupiditate qui incidunt. 
                       Rerum minus commodi repreh enderit. Sed in dolor quia ut est. Impedit eos nihil aut m olestiae 
                       reiciendis.', u'Ullam dolor molestias sit officii s expedita fuga repellat. Et fuga sequi sit. Aperiam
                      quaer at sint quasi vel nam.']
words()          # => [u'corrupti', u'ipsum', u'inventore']
paragraph()      # => Voluptatibus quae nihil aut amet quos. Vitae fugiat adipisci inventore eaque adipisci quia. Nostrum non et numquam illum. Sed id dolore quia.
sentences()      # => [u'Ipsam rerum molestias quod magni totam pariatur enim.',u'Dolores perspiciatis consequatur porro 
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

phone_number()                                       # => 456-089-3337x803

```


###Misc
---------------------
```julia
password()                                           # => cQYVB)X%0$
locale()                                             # => en_SE
md5()                                                # => 74c3bf36bfc61f2bda75492b422bfaa7
sha1()                                               # => b221ee6090aa125f9acca8ea851d0dc7d9fb0886
null_boolean()                                       # => True
sha256()                                             # => 87a636998cfd1b73b371079d51df2b6b419c94053d73b0da29a7f2e2da7f070a
country_code()                                       # => DO
language_code()                                      # => ru
boolean()                                            # => True
```

License
-------
This code is free to use under the terms of the MIT license.