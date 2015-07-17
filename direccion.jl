include("country.jl")
include("persona.jl")
   
    city_prefixes = ("Sur", "Norte",)
    city_adjetives = ("Nueva", "Vieja",)
    city_suffixies = ("de la Montaña", "los bajos", "los altos", )
    street_prefixes = ("Ampliación", "Andador", "Avenida", "Boulevard", "Calle", "Callejón","Calzada", "Cerrada", "Circuito", "Circunvalación", "Continuación","Corredor", "Diagonal", "Eje vial", "Pasaje", "Peatonal", "Periférico","Privada", "Prolongación", "Retorno", "Viaducto")
    building_number_formats = ("#####", "####", "###")
    postcode_formats = ("#####", "#####-####")

    ## States and abbrs from Mexico from INEGI
    ## http://www.inegi.org.mx/geo/contenidos/geoestadistica/CatalogoClaves.aspx
    states = (("AGS","Aguascalientes"), ("BC","Baja California"),("BCS","Baja California Sur"), ("CAMP","Campeche"),("COAH", "Coahuila de Zaragoza"), ("COL", "Colima"),("CHIS", "Chiapas"), ("CHIH", "Chihuahua"),("DF","Distrito Federal"), ("DGO", "Durango"),("GTO", "Guanajuato"), ("GRO", "Guerrero"), ("HGO", "Hidalgo"),("JAL", "Jalisco"), ("MEX", "México"),("MICH", "Michoacán de Ocampo"), ("MOR", "Morelos"),("NAY", "Nayarit"), ("NL", "Nuevo León"), ("OAX", "Oaxaca"),("PUE","Puebla"), ("QRO", "Querétaro"),("Q. ROO", "Quintana Roo"), ("SLP", "San Luis Potosí"),("SIN", "Sinaloa"), ("SON", "Sonora"), ("TAB", "Tabasco"),("TAMPS","Tamaulipas"), ("TLAX","Tlaxcala"),("VER", "Veracruz"),("YUC", "Yucatán"), ("ZAC","Zacatecas"),)

        ## The ZipCodes has a begin & final range
        ## Source: Norma Técnica de Domicilios INEGI
    zip_codes = {"AGS"=> (20000, 20999), "BC" => (21000, 22999),"BCS"=> (23000, 23999), "CAMP" => (24000, 24999),"COAH"=> (25000, 27999), "COL"=> (28000, 28999),"CHIS"=> (29000, 30999), "CHIH"=> (31000, 33999),"DF"=> (1000, 19999), "DGO"=> (36000, 35999),"GTO"=> (36000, 38999), "GRO"=> (39000, 41999),"HGO"=> (42000, 43999), "JAL"=> (44000, 49999),"MEX"=> (50000, 57999), "MICH"=> (58000, 61999),"MOR"=> (62000, 62999), "NAY"=> (63000, 63999),"NL"=> (64000, 67999), "OAX"=> (68000, 71999),"PUE"=> (72000, 75999), "QRO"=> (76000, 76999),"Q. ROO"=> (77000, 75999), "SLP"=> (78000, 79999),"SIN"=> (80000, 82999), "SON"=> (83000, 85999),"TAB"=> (86000, 86999), "TAMPS"=> (87000, 89999),"TLAX"=> (90000, 90999), "VER"=> (91000, 97999),"YUC"=> (97000, 97999), "ZAC"=> (98000, 99999)}

    
    secondary_address_formats = ("### ###", "### Interior ###","### Edif. ### , Depto. ###")

city_prefix() = city_prefixes[rand(1:length(city_prefixes))]

city_suffix()= city_suffixies[rand(1:length(city_suffixies))]

city_adjetive() = city_adjetives[rand(1:length(city_adjetives))]

street_prefix()= street_prefixes[rand(1:length(street_prefixes))]
        
function secondary_address() 

 Ρ = secondary_address_formats[rand(1:length(secondary_address_formats))]
 
  for i=Ρ
     Ρ= replace(Ρ,"#","$(rand(0:9))",1)
    end

 return Ρ
 
end

state() = states[rand(1:length(states))][2]

state_abbr() = states[rand(1:length(states))][1]
        
zip_code(p::String)= zip_codes[p][rand(1:2)]

function street_name() 

y = street_name_formats[rand(1:length(street_name_formats))]

return y

end

city_formats = (" $(city_adjetive()) {{country}}","San $(first_name()) $(city_suffix())")

    street_name_formats = ( "$(street_prefix()) $(last_name())","$(street_prefix()) $(country())","$(street_prefix()) $(state())","$(street_prefix()) $(city_prefix()) $(last_name())")


    street_address_formats = ( "{{street_name}} {{secondary_address}}")

    address_formats = ("{{street_address}}\n{{city}}, {{state_abbr}} {{postcode}}")
