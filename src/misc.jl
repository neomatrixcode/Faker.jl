    const language_codes = ("cn", "de", "el", "en", "es", "fr", "it", "pt", "ru")

    boolean(chance_of_getting_true::Int=50)::Bool = rand(1:100) <= chance_of_getting_true

    null_boolean()::Union{Bool,String} = Dict{Int64,Any}( 0=> "none", 1=> true, -1=> false)[rand(-1:1)]

    #md5() = hexdigest("md5", "$(rand())")

    #sha1() = hexdigest("sha1", "$(rand())")

    #sha256() = hexdigest("sha256", "$(rand())")

    country_code()::String = rand(data["faker"]["address"]["country_code"])
    language_code()::String = rand(language_codes)
    locale(items::Tuple=(language_code(),"_",country_code()))::String = reduce(string, items )

    #=uuid4()==#

    function password(; longitud::Int=10, special_caracteres::Bool=true, digitos::Bool=true, upper_case::Bool=true, lower_case::Bool=true)::String
        functions::Tuple = ();

        if special_caracteres==true
            functions = (functions..., random_special_caracteres )
        end

        if digitos==true
            functions = (functions..., random_digit )
        end

        if upper_case==true
            functions = (functions..., random_uppercase_letter)
        end

        if lower_case==true
            functions = (functions..., random_lowercase_letter)
        end

         return join(map( x -> rand(functions)(), 1:longitud),"")

 end