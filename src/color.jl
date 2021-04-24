
    color_name()::String = executor(data["faker"]["color"]["allcolor"])
    safe_color_name()::String = executor(data["faker"]["color"]["name"])
    hex_color()::String = executor(data["faker"]["color"]["code"])
    rgb_color()::String = string(rand(1:255),",",rand(1:255),",",rand(1:255))
    rgb_color_list()::String = string("(",rgb_color(),")")
    rgb_css_color()::String = string("rgb(",rgb_color(),")")
