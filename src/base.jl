
function seed(seed)
    Random.seed!(seed)
end

random_int(;min=0::Int, max=9999::Int)="$(rand(min : max))"
random_digit()= "$(rand(0:9))"
random_digit_not_null()= "$(rand(1:9))"

function random_digit_or_empty()
    if (rand(0:1) == 1)
        return "$(rand(0:9))"
    else
        return " "
    end
end

function random_digit_not_null_or_empty()
 if (rand(0:1)==1)
    return "$(rand(1:9))"
else
    return " "
end
end

random_number(;digits= 1::Int ) = "$(rand(0 : (10^digits) - 1))"
random_letter()= (rand(0:1) >= 0.5) ? "$(rand('a':'z'))" : "$(rand('A':'Z'))"
random_element(elements=("a", "b", "b"))= elements[rand(1: length(elements))]

function randomize_nb_elements(;number=10::Int, le=false::Bool, ge=false::Bool)
    if le==true && ge==true
        return "$(number)"
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
    "$(((rand(min : max))number / 100) + 1 )"
end

function numerify( text = "####"::String)
    for i in text
        text= replace(text,"#"=>"$(rand(0:9))",count=1)
    end
    return text
end

lexify( text="????"::String)= (for i=text  text= replace(text,"?"=>"$(random_letter())",count=1) end ; return text)
bothify( text="## ??"::String)=lexify(numerify(text))