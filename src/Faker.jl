module Faker

using Dates
using Random

import YAML
#data = YAML.load(open("es-MX.yml"))
#data["es-MX"]["faker"]

include("base.jl")
include("persona.jl")
include("creditcard.jl")
include("trabajo.jl")
include("datatime.jl")
include("phone_number.jl")
include("color.jl")
include("company.jl")
include("file.jl")
include("internet.jl")
include("lorem.jl")
include("misc.jl")
include("profile.jl")
include("country.jl")
include("direccion.jl")
include("user_agent.jl")

end # module
