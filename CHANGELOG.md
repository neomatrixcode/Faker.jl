
# Faker v0.2.3

## New features
- random_lowercase_letter()
- random_uppercase_letter()
- random_special_caracteres()

## Updates features
- Update testing to Julia version 1.5
- Added static typing
- Faker.date_time("Y-m-d HH:MM:SS") accept pattern
- Faker.date_time_between("Y-m-d HH:MM:SS") accept pattern
- Faker.date_time_this_century("Y-m-d HH:MM:SS") accept pattern
- Faker.date_time_this_decade("Y-m-d HH:MM:SS") accept pattern
- Faker.date_time_this_year("Y-m-d HH:MM:SS") accept pattern
- Faker.date_time_this_month("Y-m-d HH:MM:SS") accept pattern
- Faker.address((Faker.street_address(),Faker.city(),Faker.state_abbr(),Faker.postcode())) accept tuple of functions
- safe_email((Faker.user_name(),"@example.", Faker.domain_suffix())) accept tuple of data
- free_email((Faker.user_name(),"@",Faker.free_email_domain())) accept tuple of data
- Faker.geo_coordinate(center="None", radius=0.001)) to Faker.geo_coordinate(center=0, radius=0.001))
- Faker.uri_path("None") to Faker.uri_path(deep=0)
- Faker.domain_name((Faker.domain_word(),".",Faker.domain_suffix())) accept tuple of data
- Faker.company_email((Faker.user_name(),"@",Faker.domain_name())) accept tuple of data
- Faker.locale(items::Tuple=(language_code(),"\_",country_code())) accept tuple of data
- Faker.password(longitud=10, special_caracteres=true, digitos=true, upper_case=true, lower_case=true) add parameters configuration

# Faker v0.2.2

## Bug fixes
- Switch language to zh-CN error reported by @huaxk

## New features
- Add docs
- Add Project.toml

# Faker v0.2.1

## Bug fixes

- Error locating language files reported by @essenciary
- Date handling error in functions.
Faker.date_time_this_century
Faker.date_time_this_decade
Faker.date_time_this_year
Faker.date_time_this_month

# Faker v0.2.0

## New features
- Julia version 1.0 syntax update
- Implementation of the seed () method.
- Language support
- Modularization of the method Faker.simple_profile()
- Modularization of the method Faker.profile()
- Introduced bugs and degraded performance
- Documentation update

# Faker v0.1.0

## New features

- Compatibility with julia version 0.7
- Documentation update

## Deprecated
- Elimination of the critptographic section (sha1, md5) [to be added again in next releases]

# Faker v0.0.3

## Bug fixes
- Fixed bug in data_time.jl, creditcard.jl,user_agent.jl,misc.jl and direccion.jl

# Faker v0.0.2

## Bug fixes

- fixed bug Cannot convert Char an AbstractString

## New features

- precompile
- update string -> AbstractString



# Faker v0.0.1
## New features
v0.0.1