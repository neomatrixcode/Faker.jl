module Faker

using Dates
using Random

import YAML

data=Dict()
data["en"]=Dict()
data["en"]["faker"]=Dict()

function language(file::String) #"es-MX"
	original= pwd()
	 cd("../src/locales")
     data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("$(file).yml"))[file]["faker"])
	cd(original)
end

function loadfiles(nivel::String)
	original= pwd()

	cd("../src/locales/en")
	if (nivel=="base")
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("address.yml"))["en"]["faker"])
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("business.yml"))["en"]["faker"])
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("file.yml"))["en"]["faker"])
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("internet.yml"))["en"]["faker"])
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("job.yml"))["en"]["faker"])
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("lorem.yml"))["en"]["faker"])
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("name.yml"))["en"]["faker"])
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("nation.yml"))["en"]["faker"])
		data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open("phone_number.yml"))["en"]["faker"])
	else
		ls= readdir()
		for i=1:length(ls)
			if ( (occursin(Regex("((.)*\\.(yml))"),ls[i])) && (!occursin(r"^(\.)",ls[i])))
				data["en"]["faker"]=merge(data["en"]["faker"],YAML.load(open(ls[i]))["en"]["faker"])
			end
		end
	end
	cd(original)
end

loadfiles("base")


function executor(data :: Array)

 fn= data[rand(1:length(data))]

if occursin(r"#{.+}",fn)
	elements = collect((m.match for m = eachmatch(r"#{[a-zA-Z\_\.]+}", fn)))
	for i in elements
      fn= replace(fn, i => eval(Meta.parse(i[3:end-1]*"()")))
    end
end
return fn

end

include("base.jl")   #/
include("persona.jl") # /
include("creditcard.jl") #/
include("datatime.jl") #/
include("misc.jl")     #/
include("phone_number.jl")#/
include("trabajo.jl")
include("color.jl")
include("company.jl")
include("file.jl")    #/
include("internet.jl")
include("lorem.jl") #/
include("profile.jl")
include("direccion.jl") #/
include("user_agent.jl")

end # module
