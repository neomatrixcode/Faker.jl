using Faker
using Base.Test

@test  ismatch(r"[0-9]", Faker.random_digit())
@test  ismatch(r"[0-9]{4}", Faker.random_int())
@test  ismatch(r"[0-9]", Faker.random_digit() )
@test  ismatch(r"[0-9]", Faker.random_digit_not_null() )
#print(Faker.random_digit_or_empty() )
#print(Faker.random_digit_not_null_or_empty() )

@test  ismatch(r"[0-9]", Faker.random_number() )
@test  ismatch(r"[0-9]", Faker.randomize_nb_elements() )
@test  ismatch(r"[a-zA-Z]", Faker.random_letter() )
@test  ismatch(r"[a-zA-Z]", Faker.random_element() )
@test  ismatch(r"[0-9]{2}[a-zA-Z]{2}", Faker.bothify("##??") )




 


# write your own tests here
#@test 1 == 1

