module Faker

import Base.Callable
import Base: getindex

include("persona.jl")
include("creditcard.jl")
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
include("country.jl")
include("direccion.jl")
include("user_agent.jl")

end # module
