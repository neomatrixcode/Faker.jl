module Faker
using Dates
using Random

import YAML

data=Dict()
data["faker"]=Dict()

tostring(a::String,b::String)::String = string(a," ",b)

function language(file::String) #"es-MX"
	original= pwd()
	cd(abspath(joinpath(dirname(Base.find_package("Faker")), "../src/locales")))
	newdata = YAML.load_file("$(file).yml")[file]["faker"]
	for (k, v) in newdata
        if (haskey(data["faker"], k))
			data["faker"][k]=merge(data["faker"][k],newdata[k])
		else
			data["faker"][k]=newdata[k]
		end
	end
	cd(original)
end



function loadfiles(nivel::String="base")
	original= pwd()
	cd(abspath(joinpath(dirname(Base.find_package("Faker")), "../src/locales/en")))
	if (nivel=="base")
		data["faker"] = merge(data["faker"],YAML.load_file("address.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("business.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("color.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("company.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("file.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("internet.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("lorem.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("name.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("nation.yml")["en"]["faker"])
		data["faker"] = merge(data["faker"],YAML.load_file("phone_number.yml")["en"]["faker"])
	else
		ls= readdir()
		for i=1:length(ls)
			if ( (occursin(Regex("((.)*\\.(yml))"),ls[i])) && (!occursin(r"^(\.)",ls[i])))
				data["faker"]=merge(data["faker"],YAML.load(open(ls[i]))["en"]["faker"])
			end
		end
	end
	cd(original)
end

loadfiles()


select_random(data :: Array)= rand(data)

function executor(data :: Array)

	fn= select_random(data)

	if occursin(r"#{.+}",fn)
		elements = collect((m.match for m = eachmatch(r"#{[a-zA-Z\_\.]+}", fn)))
		for i in elements
	      fn= replace(fn, i => eval(Meta.parse(i[3:end-1]*"()")),count=1)
	    end
	end
return fn

end

function suffix()
	return ""
end


function category()
	return ""
end

include("base.jl")
include("persona.jl")
include("creditcard.jl")
include("datatime.jl")
include("misc.jl")
include("phone_number.jl")
include("color.jl")
include("company.jl")
include("file.jl")
include("internet.jl")
include("lorem.jl")
include("direccion.jl")
include("user_agent.jl")

end # module
