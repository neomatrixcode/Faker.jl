
country()::String = executor(data["faker"]["address"]["country"])
city_prefix()::String = executor(data["faker"]["address"]["city_prefix"])
city_suffix()::String = executor(data["faker"]["address"]["city_suffix"])
street_prefix()::String = executor(data["faker"]["address"]["street_prefix"])
street_suffix()::String = executor(data["faker"]["address"]["street_suffix"])
secondary_address()::String = bothify(executor(data["faker"]["address"]["secondary_address"]))
state()::String = executor(data["faker"]["address"]["state"])
state_abbr()::String = executor(data["faker"]["address"]["state_abbr"])
municipality()::String = executor(data["faker"]["address"]["municipality"])
street_name()::String = executor(data["faker"]["address"]["street_name"])
street_address()::String = executor(data["faker"]["address"]["street_address"])
postcode()::String = bothify(executor(data["faker"]["address"]["postcode"]))
building_number()::String = bothify(executor(data["faker"]["address"]["building_number"]))
city()::String = executor(data["faker"]["address"]["city"])
address(items::Tuple=(street_address(),city(),state_abbr(),postcode()))::String = reduce(tostring, items )

function geo_coordinate(;center::Int=0, radius::Float64=0.001)::Float16

        if center == 0
            return Float16(rand(-17.99 : 17.99))
        else
            return Float16(rand( center - radius : center + radius))
        end
end

latitude()::Float64 = geo_coordinate()/ 2.0
longitude()::Float64 = geo_coordinate()/ 1.0
