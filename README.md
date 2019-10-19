# Faker

<p align="center"><img src="faker.png" width="25%" ></p>
<p align="center">
<strong>Generator of fake data for julia.</strong>
<br><br>
<a href="https://travis-ci.org/codeneomatrix/Faker.jl"><img src="https://travis-ci.org/codeneomatrix/Faker.jl.svg?branch=master"></a>
<a href="https://codecov.io/gh/codeneomatrix/Faker.jl">
  <img src="https://codecov.io/gh/codeneomatrix/Faker.jl/branch/master/graph/badge.svg" />
</a>
<a href="https://codeneomatrix.github.io/Faker.jl/stable"><img src="https://img.shields.io/badge/docs-stable-blue.svg"></a>
<a href="https://codeneomatrix.github.io/Faker.jl/dev"><img src="https://img.shields.io/badge/docs-dev-blue.svg"></a>
<a href="https://www.repostatus.org/#active"><img src="https://www.repostatus.org/badges/latest/active.svg"></a>
<a href="https://raw.githubusercontent.com/codeneomatrix/Faker.jl/master/LICENSE.md"><img src="https://img.shields.io/badge/License-MIT-blue.svg"></a>
</p>

Roadmap
-----
Below are some of the features that are planned to be added in future versions of Faker.jl once version 1.0 of the language is released.
### All contributions and suggestions are welcome !!!!
#### Version 0.1.0
 + Julia version 0.7 syntax update

#### Version 0.2.0
 + Julia version 1.0 syntax update
 + Implementation of the seed () method.
 + Language support
 + Modularization of the method Faker.simple_profile()
 + Modularization of the method Faker.profile()

#### Version 0.2.1
  + Unicode symbol generator

#### Version 0.2.2
  + Possibility of creating a generator


```julia
  using Faker

  Faker.email() # => "kirsten.greenholt@corkeryfisher.info"
```


