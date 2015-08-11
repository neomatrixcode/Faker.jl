include("persona.jl")
include("direccion.jl")
include("trabajo.jl")
include("company.jl")
include("internet.jl")
include("datatime.jl")
include("trabajo.jl")
#include("misc.jl")

 simple_profile()=
        return Dict(
            "username"=> user_name(),
            "name"=> first_name(),
            "sex"=> rand(["M","F"]),
            "address"=> address(),
            "mail"=> free_email(),
            #"password"=>password(),
            "birthdate"=> date() )

     profile( fields="None")=
(
        fields == "None" && (fields = []);
        d = Dict(
            "job"=> job(),
            "company"=> company(),
            #"ssn"=> ssn(),
            "residence"=> address(),
            "current_location"=> (latitude(), longitude()),

            "blood_group"=> rand(["A", "B", "AB", "O"])*rand(["+", "-"]),

            "website"=> [url() for i=1:rand(2:5)]
        );
        if length(fields) >= 1
                e = Dict()
                for (k, v) in d
                    if (k in fields) 
                        push!(e, k => v)
                    end 
                end
                return e 
        end; 

        return d
)
