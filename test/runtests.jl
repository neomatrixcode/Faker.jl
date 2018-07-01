using Faker
using Test

@test  occursin(r"[0-9]", Faker.random_digit())
@test  occursin(r"([0-9])|([0-9]{2})|([0-9]{3})|([0-9]{4})", Faker.random_int())
@test  occursin(r"[0-9]", Faker.random_digit() )
@test  occursin(r"[0-9]", Faker.random_digit_not_null() )
@test  occursin(r"[0-9]", Faker.random_number() )
@test  occursin(r"[0-9]", Faker.randomize_nb_elements() )
@test  occursin(r"[a-zA-Z]", Faker.random_letter() )
@test  occursin(r"[a-zA-Z]", Faker.random_element() )
@test  occursin(r"[0-9]{2}[a-zA-Z]{2}", Faker.bothify("##??") )