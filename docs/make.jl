using Documenter, Faker

makedocs(format = Documenter.HTML(),
         modules = [Faker],
         sitename = "Faker.jl"
         )
deploydocs(
	repo = "github.com/codeneomatrix/Faker.jl.git"
	#devbranch = "master",
    #devurl = "dev",
    #versions = ["stable" => "v^", "v#.#", "devurl" => devurl]
    )
