module Faker

#export
#bothify
  #email
#state_abbr
#latitude
#street_name
#address
#street_address
#postcode
#longitude
#country
#secondary_address
#street_suffix
#city_prefix
#city_suffix
#building_number
#city
#state
#company
#company_suffix
#catch_phrase
#bs
#date_time_ad
#month
#am_pm
#iso8601
#date_time_this_century
#date_time
#month_name
#date_time_this_month
#date_time_this_decade
#day_of_week
#day_of_month
#unix_time
#date_time_this_year
#timezone
#time
#date_time_between
#geo_coordinate 
#century
#year
#email
#free_email
#safe_email
#user_name
#domain_name
#domain_word
#domain_suffix
#ip_v4_address
#ip_v6_address
#uri
#url
#text
#sentence
#word
#paragraphs
#words
#paragraph
#sentences
#phone_number
#password
#locale
#md5
#sha1
#null_boolean
#sha256
#country_code
#language_code
#boolean


importall Base
import Base.Callable
import Base: getindex
#:  #isequal isfinite isinf, isinteger,
            # isless, isnan, isnull, isnumber, isreal, issubnormal,
            # typemin, typemax

# ---------------------------------------------------------------------------------------
include("creditcard.jl")
include("persona.jl")
include("direccion.jl")
include("trabajo.jl")
include("datatime.jl")
include("phone_number.jl")
include("color.jl")
include("base.jl")
include("company.jl")
include("file.jl")
include("internet.jl")
include("lorem.jl")
include("misc.jl")
include("profile.jl")
include("country.jl")
include("user_agent.jl")

end # module
