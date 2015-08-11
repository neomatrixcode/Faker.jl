
     random_int(min=0, max=9999)= rand(min : max)

        """
        Returns a random integer between two values.

        :param min: lower bound value (inclusive; default=0)
        :param max: upper bound value (inclusive; default=9999)
        :returns: random integer between min and max
        """

     random_digit()= rand(0:9)
        """
        Returns a random digit/number
        between 0 and 9.
        """


     random_digit_not_null()= rand(1:9)
        """
        Returns a random non-zero digit/number
        between 1 and 9.
        """


     random_digit_or_empty()= rand(0:1)==1? rand(0:9) : " "
        """
        Returns a random digit/number
        between 0 and 9 or an empty string.
        """
        

     random_digit_not_null_or_empty()= rand(0:1)==1? rand(1:9) : " "
        """
        Returns a random non-zero digit/number
        between 1 and 9 or and empty string.
        """
       

     random_number( digits="None" ) = digits == "None" ? random_digit() : rand(0 : (10^digits) - 1)
        """
        Returns a random number with 1 digit (default, when digits==None)
        or a random number with 0 to given number of digits.

        :param digits: maximum number of digits
        :returns: random number with 0 to given number of digits
        """
        
 

     random_letter()= rand(0:1)>=0.5? rand('a':'z') : rand('A':'Z')
        """Returns a random letter (between a-z and A-Z)."""

     random_element( elements=('a', 'b', 'b'))= elements[rand(1: length(elements))]
        """
        Returns a random element from a passed object.

        If `elements` is a dictionary, the value will be used as
        a weighting element. For example:: leng

        """

    randomize_nb_elements( number=10, le=false, ge=false) = ( (le && ge) && return number ; ge? min = 100 : min=60 ; le? max = 100 : max=140 ; (((rand(min : max))number / 100) + 1 )  )
    
        """
        Returns a random value near number.

        :param number: value to which the result must be near
        :param le: result must be lower or equal to number
        :param ge: result must be greater or equal to number
        :returns: a random int near number
        """


     numerify( text="####")=(for i=text  text= replace(text,"#","$(rand(0:9))",1) end ; return text)

    
     lexify( text="????")= (for i=text  text= replace(text,"?","$(random_letter())",1) end ; return text)
        """
        Replaces all question mark ('?') occurrences with a random letter.

        :param text: string to be parsed
        :returns: string with all letter placeholders filled in
        """


     bothify( text="## ??")=lexify(numerify(text))