using Faker
using Base.Test

print( Faker.bothify("## ??"))

 #@test  ismatch(r"[0-9]{2} [A-Za-z]{2}", Faker.bothify("## ??"))
# write your own tests here
#@test 1 == 1

