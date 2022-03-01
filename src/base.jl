const lowercaseletters = collect('a':'z')
const uppercaseletters = collect('A':'Z')
const letters = append!(collect('a':'z'),collect('A':'Z'))

seed(seed::Int=83) = Random.seed!(seed)
random_int(;min::Int=0, max::Int=9999)::String = string(rand(min : max))
intrandom_int(;min::Int=0, max::Int=9999)::Int = rand(min : max)
random_digit()::String = string(rand(0:9))
random_digit_not_null()::String= string(rand(1:9))
random_digit_or_empty()::String = string(rand(append!([' '],collect('0':'9'))))
random_digit_not_null_or_empty()::String = string(rand(append!([' '],collect('1':'9'))))
random_number(;digits::Int= 1 )::String = string(rand(0 : ((10^digits) - 1)))
random_letter()::String = string(rand(letters))

random_lowercase_letter()::String = string(rand(lowercaseletters))
random_uppercase_letter()::String = string(rand(uppercaseletters))
random_special_caracteres()::String = string(rand('!':'+'))

random_element(elements::Tuple=("a", "b", "b")) = rand(elements)

function randomize_nb_elements(;number::Int=10, le::Bool=false, ge::Bool=false)::String
    if le==true && ge==true
        return string(number)
    end
    min::Int=60
    max::Int=140

    if ge==true
        min = 100
    end

    if le==true
        max = 100
    end
    string(((rand(min : max))*number / 100) + 1 )
end

numerify( text::String = "####")::String = map( x -> x=='#' ? rand('0':'9') : x  , text )
lexify( text::String="????")::String = map( x -> x=='?' ? rand(letters) : x  , text )
bothify( text::String="## ??")::String = lexify(numerify(text))
unicode()::String = string(Char(rand(0x2200:0x22FF)))

generator(;items::Tuple=(user_name(),first_name(),city(),postcode(), user_name(),"@",domain_name()), separator=stringWithComa) = reduce(separator, items )





