
    color_name()= executor(data["faker"]["color"]["allcolor"])
    safe_color_name()= executor(data["faker"]["color"]["name"])
    hex_color()= executor(data["faker"]["color"]["code"])

    rgb_color()=string(rand(1:255),",",rand(1:255),",",rand(1:255))
    rgb_color_list()=string("(",rgb_color(),")")
    rgb_css_color()=string("rgb(",rgb_color(),")")
