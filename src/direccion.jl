
country() = executor(data["faker"]["address"]["country"])
city_prefix() = executor(data["faker"]["address"]["city_prefix"])
city_suffix()= executor(data["faker"]["address"]["city_suffix"])
street_prefix()= executor(data["faker"]["address"]["street_prefix"])
street_suffix()= executor(data["faker"]["address"]["street_suffix"])
secondary_address() = bothify(executor(data["faker"]["address"]["secondary_address"]))
state() = executor(data["faker"]["address"]["state"])
state_abbr() = executor(data["faker"]["address"]["state_abbr"])
municipality() = executor(data["faker"]["address"]["municipality"])
street_name() = executor(data["faker"]["address"]["street_name"])
street_address() = executor(data["faker"]["address"]["street_address"])
address() = ("$(street_address()) $(city()), $(state_abbr()) $(postcode())")
postcode() = bothify(executor(data["faker"]["address"]["postcode"]))
building_number() = bothify(executor(data["faker"]["address"]["building_number"]))
city() = executor(data["faker"]["address"]["city"])

function geo_coordinate(;center="None", radius=0.001)

        if center=="None"
            center=0
        end

        if center == 0
            return Float16(rand(-17.99 : 17.99))
        else
            return Float16(rand( center - radius : center + radius))
        end
end

latitude() = geo_coordinate() / 2.0
longitude() = geo_coordinate()/ 1.0
