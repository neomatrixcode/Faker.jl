
male_first_name() = executor(data["en"]["faker"]["name"]["male_first_name"])
female_first_name() = executor(data["en"]["faker"]["name"]["female_first_name"])
first_name() = executor(data["en"]["faker"]["name"]["first_name"])
last_name() = executor(data["en"]["faker"]["name"]["last_name"])
prefixe() = executor(data["en"]["faker"]["name"]["prefix"])
job() = executor(data["en"]["faker"]["name"]["title"]["job"])

function seleccion_field(data::Dict, fields::Tuple)
	e = Dict()
	for (k, v) in data
		if (k in fields)
			push!(e, k => v)
		end
	end
	return e
end


function simple_profile(fields...="None")
	fields[1] == "None" && (fields = []);
	data = Dict(
		"username"=> user_name(),
		"name"=> first_name(),
		"sex"=> rand(["M","F"]),
		"address"=> address(),
		"mail"=> free_email(),
		"birthdate"=> date() )

	if length(fields) > 0
		return  seleccion_field(data, fields)
	else
		return data
	end
end

function profile( fields...="None")
	fields[1] == "None" && (fields = []);
	d = Dict(
		"username"=> user_name(),
		"name"=> first_name(),
		"sex"=> rand(["M","F"]),
		"address"=> address(),
		"mail"=> free_email(),
		"birthdate"=> date(),
		"job"=> job(),
		"company"=> company(),
		"residence"=> address(),
		"current_location"=> (latitude(), longitude()),
		"blood_group"=> rand(["A", "B", "AB", "O"])*rand(["+", "-"]),
		"website"=> url()
		);
	if length(fields) > 0
		return  seleccion_field(d, fields)
	else
		return d
	end
end

