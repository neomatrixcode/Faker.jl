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
include("base.jl")
include("company.jl")
include("file.jl")
include("internet.jl")
include("lorem.jl")
include("misc.jl")
include("profile.jl")

t= time("%H-%M:%S")
d = date("%Y-%m:%d")
p = bothify("## ??")

for i=1:2
	println(" \n $(prefixe()) $(first_name()) $(last_name()) vive en $(state()) trabaja en $(job()) $(zip_code("OAX")) $(timezone()) $(am_pm())  $(day_of_week()) $(months()) $(month_name()) $(time()) $(t) $(date()) $(d) $(iso8601())$(date_time()) $(unix_time()) \n numero telefonico $(phone_number()) \n colores: $(color_name())  $(safe_color_name()) $(hex_color())  $(safe_hex_color())  $(rgb_color_list())  $(rgb_css_color()) \n$(street_name() ) \n $(p) \n $(company()) \n $(mime_type()) \n $(uri()) \n $(text(10)) \n $(password()) \n $(profile())")	

end




