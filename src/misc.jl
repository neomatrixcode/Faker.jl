#Pkg.add("Nettle")
using Nettle


    language_codes = ("cn", "de", "el", "en", "es", "fr", "it", "pt", "ru")

    boolean( chance_of_getting_true=50)= rand(1:100) <= chance_of_getting_true

    null_boolean()=Dict( 0=> "none", 1=> true, -1=> false)[rand(-1:1)]

    md5() = hexdigest("md5", AbstractString(rand()))

    sha1() = hexdigest("sha1", AbstractString(rand()))

    sha256() = hexdigest("sha256", AbstractString(rand()))

    country_code()= timeszon[rand(1:length(timeszon))]["code"]

    language_code() = language_codes[rand(1:length(language_codes))]

    locale()="$(language_code())_$(country_code())"



    #=uuid4()==#

    password( longitud=10, special_caracteres=true, digitos=true, upper_case=true, lower_case=true)=
       ( caracteres = [];
        for x=1:longitud
             special_caracteres==true && (push!(caracteres, AbstractString(rand('!':'+'))) )
             digitos==true && (push!(caracteres, AbstractString(rand(0:9))))
             upper_case==true && (push!(caracteres, AbstractString(rand('A':'Z'))))
             lower_case==true && (push!(caracteres, AbstractString(rand('a':'z'))))
        end;

        for x=1:longitud
            ini = rand(1:length(caracteres))
            fin = rand(1:length(caracteres))
            intermedio = caracteres[ini]
            caracteres[ini] = caracteres[fin]
            caracteres[fin] = intermedio
        end;

       join(caracteres,""); )
