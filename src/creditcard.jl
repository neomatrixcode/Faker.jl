
struct CreditCard
    name :: AbstractString
    prefixes :: AbstractString
    length :: Int64
    security_code :: AbstractString
    security_code_length :: Int64
end

    prefix_mastercard = ["51", "52", "53", "54", "55"]
    prefix_visa = ["4"]
    prefix_amex = ["34", "37"]
    prefix_discover = ["6011"]
    prefix_diners = ["300", "301", "302", "303", "304", "305"]
    prefix_jcb16 = ["3088", "3096", "3112", "3158", "3337", "3528"]
    prefix_jcb15 = ["2100", "1800"]
    prefix_voyager = ["8699"]

    credit_card_types = Dict(
        "mastercard"=>    CreditCard("Mastercard",      rand(prefix_mastercard), 16, "CVV",3)
        ,"visa16"=>       CreditCard("VISA 16 digit",   rand(prefix_visa), 16, "CVC",3)
        ,"visa13"=>       CreditCard("VISA 13 digit",   rand(prefix_visa) , 13, "CVC",3)
        ,"amex"=>         CreditCard("American Express",rand(prefix_amex), 15, "CID",4)
        ,"discover"=>     CreditCard("Discover",        rand(prefix_discover), 16, "CVC",3)
        ,"diners"=>       CreditCard("Diners Club / Carte Blanche", rand(prefix_diners), 14, "CVC",3)
        ,"jcb15"=>        CreditCard("JCB 15 digit",    rand(prefix_jcb15), 15, "CVC",3)
        ,"jcb16"=>        CreditCard("JCB 16 digit",    rand(prefix_jcb16), 16, "CVC",3)
        ,"voyager"=>      CreditCard("Voyager",         rand(prefix_voyager) , 15, "CVC",3)
    )
    credit_card_types["visa"] = credit_card_types["visa16"]
    credit_card_types["jcb"] = credit_card_types["jcb16"]

    credit_card_provider()::String  = select_random(data["faker"]["business"]["credit_card_types"])

    function getcard(card::String="None")::CreditCard
        if card == "None"
            return collect(rand(credit_card_types))[2]
        else
            return credit_card_types[card]
        end
    end

    function credit_card_number(card::String="None")::String
        card::CreditCard = getcard(card)
        return generate_card_number(card.prefixes, card.length)
    end

    #=function credit_card_expire(start="now", end="+10y", date_format="%m/%y")

        expire_date = DateTime.date_time_between(start, end)
        return expire_date.strftime(date_format)
    end=#

    function credit_card_full(card::String="None")::String
        card::CreditCard = getcard(card)
        return string(card.name," ",first_name()," ",last_name()," ",generate_card_number(card.prefixes,card.length)," ",card.security_code," ",credit_card_security_code(card.security_code_length))
    end

    credit_card_security_code(code_length::Int=3)::String  = numerify("#"^(code_length))

    function generate_card_number(prefix::String="52", len::Int=16)::String
        """
        "prefix" is the start of the CC number as a AbstractString, any number of digits.
        "len" is the len of the CC number to generate. Typically 13 or 16
        """
        # Generate random char digits
        number::String = numerify(string(prefix,"#"^(len - length(prefix) - 1)))

        result::Array{Int64,1} =  map( x -> parse(Int,x), collect(number))
        odds::Array{Int64,1}  = map( x ->(z=x*2;div(z,10)+rem(z,10)), result[end:-2:1])
        # Calculate sum
        tot::Int = reduce(+, append!(result[end-1:-2:1],odds))
        # Calculate check digit
        check_digit::Int = (10 - (tot % 10)) % 10
        return string(number,check_digit)
    end