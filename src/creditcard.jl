
mutable struct CreditCard
    name :: AbstractString
    prefixes :: AbstractString
    length :: Int64
    security_code :: AbstractString
    security_code_length :: Int64
end


    prefix_mastercard = ["51", "52", "53", "54", "55"]
    prefix_visa = ["4"]
    prefix_amex = ["34", "37"]
    prefix_discover = ["6011",]
    prefix_diners = ["300", "301", "302", "303", "304", "305"]
    prefix_jcb16 = ["3088", "3096", "3112", "3158", "3337", "3528"]
    prefix_jcb15 = ["2100", "1800"]
    prefix_voyager = ["8699"]

    credit_card_types = Dict(
        "mastercard"=>   CreditCard("Mastercard",      prefix_mastercard[rand(1:length(prefix_mastercard))], 16, "CVV",3),
        "visa16"=>       CreditCard("VISA 16 digit",   prefix_visa[rand(1:length(prefix_visa))], 16, "CVC",3),
        "visa13"=>       CreditCard("VISA 13 digit",   prefix_visa[rand(1:length(prefix_visa))] , 13, "CVC",3),
        "amex"=>         CreditCard("American Express",prefix_amex[rand(1:length(prefix_amex))], 15, "CID",4),
        "discover"=>     CreditCard("Discover",        prefix_discover[rand(1:length(prefix_discover))], 16, "CVC",3),
        "diners"=>       CreditCard("Diners Club / Carte Blanche", prefix_diners[rand(1:length(prefix_diners))] , 14, "CVC",3),
        "jcb15"=>        CreditCard("JCB 15 digit",    prefix_jcb15[rand(1:length(prefix_jcb15))] , 15, "CVC",3),
        "jcb16"=>        CreditCard("JCB 16 digit",    prefix_jcb16[rand(1:length(prefix_jcb16))], 16, "CVC",3),
        "voyager"=>      CreditCard("Voyager",         prefix_voyager[rand(1:length(prefix_voyager))] , 15, "CVC",3),
    )
    credit_card_types["visa"] = credit_card_types["visa16"]
    credit_card_types["jcb"] = credit_card_types["jcb16"]

    luhn_lookup = Dict("0"=> 0, "1"=> 2, "2"=> 4, "3"=> 6, "4"=> 8,
                   "5"=> 1, "6"=> 3, "7"=> 5, "8"=> 7, "9"=> 9)

    function credit_card_provider()
        executor(data["en"]["faker"]["business"]["credit_card_types"])
    end

    function credit_card_number(card="None")
         if card == "None"
            card = [key for key in  keys(credit_card_types)][rand(1:9)]
            card = credit_card_types[card]
        end
        prefix = card.prefixes
        number = generate_number(prefix, card.length)
        return number
    end

    #=function credit_card_expire(start="now", end="+10y", date_format="%m/%y")

        expire_date = DateTime.date_time_between(start, end)
        return expire_date.strftime(date_format)
    end=#

    function credit_card_full(card_types="None")
        if card_types == "None"
            card = [key for key in  keys(credit_card_types)][rand(1:9)]
        end
        card = credit_card_types[card]

        tpl = ("$(card.name) $(first_name()) $(last_name()) $(generate_number(card.prefixes,card.length)) $(card.security_code) $(credit_card_security_code())")

        tpl
    end


    function credit_card_security_code()
        return numerify("###")
    end

    function credit_card_type()

        card_type = [key for key in  keys(credit_card_types)][rand(1:9)]

        credit_card_types[card_type]
    end

    function generate_number(prefix, len)
        """
        "prefix" is the start of the CC number as a AbstractString, any number of digits.
        "len" is the len of the CC number to generate. Typically 13 or 16
        """
        number = prefix
        # Generate random char digits
        number *= "#"^(len - length(prefix) - 1)

        number = numerify(number)
        reverse = number[end:-1:1]
        # Calculate sum
        tot = 1
        pos = 1
        while pos < (len - 1)
            tot += luhn_lookup["$(reverse[pos])"]
            if pos != (len - 2)
                tot += Int(reverse[pos+1])
            end
        pos += 2
        end
        # Calculate check digit
        check_digit = (10 - (tot % 10)) % 10
        number *= "$(check_digit)"
        return number
    end