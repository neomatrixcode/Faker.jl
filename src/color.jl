
    color_name()= executor(data["faker"]["color"]["allcolor"])
    safe_color_name()= executor(data["faker"]["color"]["name"])
    hex_color()= executor(data["faker"]["color"]["code"])

    rgb_color_list()="($(rand(1:255)),$(rand(1:255)),$(rand(1:255)))"
    rgb_color()="$(rand(1:255)),$(rand(1:255)),$(rand(1:255))"
    rgb_css_color()="rgb($(rand(1:255)),$(rand(1:255)),$(rand(1:255)))"
