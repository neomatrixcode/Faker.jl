#s = open("/home/neomatrix/Escritorio/datos.txt", "a+")
# a+ es creacion, lectura y escritura
#for i=1:1000 
#          write(s, string(rand(1701:254595)))
#          write(s, "\n")
#       end
#close(s)

include("persona.jl")
include("direccion.jl")
include("trabajo.jl")


for i = 1:2
	println("$(prefixe()) $(first_name()) $(last_name()) vive en $(state()) trabaja en $(trabajo()) $(zip_code("OAX"))")	
end




