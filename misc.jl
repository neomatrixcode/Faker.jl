#Pkg.add("Nettle")
using Nettle
include("datatime.jl")

    language_codes = ("cn", "de", "el", "en", "es", "fr", "it", "pt", "ru")

    boolean( chance_of_getting_true=50)= rand(1:100) <= chance_of_getting_true

    null_boolean()=Dict( 0=> "none", 1=> true, -1=> false)[rand(-1:1)]

    md5()= bytes2hex(md5_hash(string(rand())))

    sha1() = bytes2hex(sha1_hash(string(rand())))

    sha256()= bytes2hex(sha256_hash(string(rand())))

    country_code()= countries[rand(1:length(countries))]["code"]

    language_code() = language_codes[rand(1:length(language_codes))] 

    locale()="$(language_code())_$(country_code())"

    

    #=uuid4()==#
        
    password( longitud=10, special_caracteres=true, digitos=true, upper_case=true, lower_case=true)=
       ( caracteres = [];
        for x=1:longitud
             special_caracteres==true && (push!(caracteres, string(rand('!':'+'))) )
             digitos==true && (push!(caracteres, string(rand(0:9))))
             upper_case==true && (push!(caracteres, string(rand('A':'Z'))))  
             lower_case==true && (push!(caracteres, string(rand('a':'z'))))
        end;

        for x=1:longitud
            ini = rand(1:length(caracteres))
            fin = rand(1:length(caracteres))
            intermedio = caracteres[ini]
            caracteres[ini] = caracteres[fin]
            caracteres[fin] = intermedio
        end;

       join(caracteres,""); )