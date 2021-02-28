seed(seed) = Random.seed!(seed)
random_int(;min=0::Int, max=9999::Int)="$(rand(min : max))"
random_digit()= string(rand(0:9))
random_digit_not_null()= string(rand(1:9))
random_digit_or_empty() = string(rand(append!([' '],collect('0':'9'))))
random_digit_not_null_or_empty() = string(rand(append!([' '],collect('1':'9'))))
random_number(;digits= 1::Int ) = string(rand(0 : ((10^digits) - 1)))
const collectaZ = append!(collect('a':'z'),collect('A':'Z'))
random_letter() = string(rand(collectaZ))
random_element(elements=("a", "b", "b")) = rand(elements)

function randomize_nb_elements(;number=10::Int, le=false::Bool, ge=false::Bool)
    if le==true && ge==true
        return string(number)
    end
    if ge==true
        min = 100
    else
        min=60
    end
    if le==true
        max = 100
    else
        max=140
    end
    string(((rand(min : max))number / 100) + 1 )
end

numerify( text = "####"::String) = map( x -> x=='#' ? rand('0':'9') : x  , text )
lexify( text="????"::String) = map( x -> x=='?' ? rand(collectaZ) : x  , text )
bothify( text="## ??"::String) = lexify(numerify(text))