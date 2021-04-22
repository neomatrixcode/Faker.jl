seed(seed::Int)::Random.MersenneTwister = Random.seed!(seed)
random_int(;min::Int=0, max::Int=9999)::String = string(rand(min : max))
random_digit()::String = string(rand(0:9))
random_digit_not_null()::String= string(rand(1:9))
random_digit_or_empty()::String = string(rand(append!([' '],collect('0':'9'))))
random_digit_not_null_or_empty()::String = string(rand(append!([' '],collect('1':'9'))))
random_number(;digits::Int= 1 )::String = string(rand(0 : ((10^digits) - 1)))
const collectaZ = append!(collect('a':'z'),collect('A':'Z'))
random_letter()::String = string(rand(collectaZ))
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
lexify( text::String="????")::String = map( x -> x=='?' ? rand(collectaZ) : x  , text )
bothify( text::String="## ??")::String = lexify(numerify(text))