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
include("datatime.jl")
include("phone_number.jl")
include("color.jl")

for i = 1:4
	t= time("%H-%M:%S")
	d = date("%Y-%m:%d")
	println(" \n $(prefixe()) $(first_name()) $(last_name()) vive en $(state()) trabaja en $(trabajo()) $(zip_code("OAX")) $(timezone()) $(am_pm())  $(day_of_week()) $(months()) $(month_name()) $(time()) $(t) $(date()) $(d) $(iso8601()) $(date_time()) $(unix_time()) \n numero telefonico $(phone_number()) \ncolores: $(color_name())  $(safe_color_name())  $(hex_color())  $(safe_hex_color())  $(rgb_color_list())  $(rgb_css_color())   \n\n")	
end




