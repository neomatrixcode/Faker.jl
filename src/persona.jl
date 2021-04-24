
male_first_name()::String = executor(data["faker"]["name"]["male_first_name"])
female_first_name()::String = executor(data["faker"]["name"]["female_first_name"])
first_name()::String = executor(data["faker"]["name"]["first_name"])
last_name()::String = executor(data["faker"]["name"]["last_name"])
prefixe()::String = executor(data["faker"]["name"]["prefix"])
job()::String = executor(data["faker"]["name"]["title"]["job"])
blood_type()::String= string(rand(["A", "B", "AB", "O"]),rand(["+", "-"]))

function seleccion_field(data::Dict, fields::Tuple)::Dict
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
		"blood_group"=> blood_type(),
		"website"=> url()
		);
	if length(fields) > 0
		return  seleccion_field(d, fields)
	else
		return d
	end
end
#stringWithSpaces
#

user_profile(items::Tuple=(user_name(),first_name(),rand(["M","F"]),address(),free_email(),date(),job(),company(),address(),string(latitude(), longitude()),blood_type(),url()))::String = reduce(stringWithComa, items )