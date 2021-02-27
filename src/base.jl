seed(seed) = Random.seed!(seed)
random_int(;min=0::Int, max=9999::Int)="$(rand(min : max))"
random_digit()= string(rand(0:9))
random_digit_not_null()= string(rand(1:9))
random_digit_or_empty() = string(rand(append!([' '],collect('0':'9'))))
random_digit_not_null_or_empty() = string(rand(append!([' '],collect('1':'9'))))
random_number(;digits= 1::Int ) = string(rand(0 : ((10^digits) - 1)))
random_letter()= string(rand(append!(collect('a':'z'),collect('A':'Z'))))
random_element(elements=("a", "b", "b"))= rand(elements)

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

function numerify( text = "####"::String)
    for i in text
        text= replace(text,"#"=>string(rand(0:9)),count=1)
    end
    return text
end

lexify( text="????"::String)= (for i=text  text= replace(text,"?"=>"$(random_letter())",count=1) end ; return text)
bothify( text="## ??"::String)=lexify(numerify(text))