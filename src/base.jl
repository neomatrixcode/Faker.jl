
    @generated random_int(min=0, max=9999)= rand(min : max)

     

    @generated random_digit()= rand(0:9)
       

    @generated random_digit_not_null()= rand(1:9)
        

    @generated random_digit_or_empty()= rand(0:1)==1? rand(0:9) : " "
       
    @generated random_digit_not_null_or_empty()= rand(0:1)==1? rand(1:9) : " "
        

    @generated random_number( digits="None" ) = digits == "None" ? random_digit() : rand(0 : (10^digits) - 1)
       

    @generated random_letter()= rand(0:1)>=0.5? rand('a':'z') : rand('A':'Z')
        
    @generated random_element( elements=('a', 'b', 'b'))= elements[rand(1: length(elements))]
        
    @generated randomize_nb_elements( number=10, le=false, ge=false) = ( (le && ge) && return number ; ge? min = 100 : min=60 ; le? max = 100 : max=140 ; (((rand(min : max))number / 100) + 1 )  )
    

    @generated function numerify( text = "####")
                    for i in text  
                    text= replace(text,"#","$(rand(0:9))",1) 
                    end 
                return text
                end

    
    @generated lexify( text="????")= (for i=text  text= replace(text,"?","$(random_letter())",1) end ; return text)
       

    @generated bothify( text="## ??")=lexify(numerify(text))