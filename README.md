# Faker

<p align="center"><img src="faker.png" width="25%" ></p>
<p align="center">
<strong>Generator of fake data for julia.</strong>
<br><br>
<a href="https://github.com/neomatrixcode/Faker.jl/actions/workflows/CI.yml?query=branch%3Amaster"><img src="https://github.com/neomatrixcode/Faker.jl/actions/workflows/CI.yml/badge.svg"></a>
<a href="https://codecov.io/gh/neomatrixcode/Faker.jl">
  <img src="https://codecov.io/gh/neomatrixcode/Faker.jl/branch/master/graph/badge.svg" />
</a>
<a href="https://neomatrixcode.gitbook.io/faker/"><img src="https://img.shields.io/badge/docs-stable-blue.svg"></a>
<a href="https://juliahub.com/ui/Packages/Faker/wbANP?t=2"><img src="https://juliahub.com/docs/Faker/deps.svg"></a>
<a href="https://juliahub.com/ui/Packages/Faker/wbANP"><img src="https://juliahub.com/docs/Faker/version.svg"></a>
<a href="https://juliahub.com/ui/Packages/Faker/wbANP"><img src="https://juliahub.com/docs/Faker/pkgeval.svg"></a>
<a><img src="https://shields.io/endpoint?url=https://pkgs.genieframework.com/api/v1/badge/Faker"></a>
<a href="https://raw.githubusercontent.com/neomatrixcode/Faker.jl/master/LICENSE.md"><img src="https://img.shields.io/badge/License-MIT-blue.svg"></a>
<a href="https://zenodo.org/badge/latestdoi/39113690"><img src="https://zenodo.org/badge/39113690.svg" alt="DOI"></a>
</p>


## Installing
```julia
$ (@v1.5) pkg> add Faker
```

* Providers
  * [SSN](https://neomatrixcode.gitbook.io/faker/guide/providers/ssn)
  * [Base](https://neomatrixcode.gitbook.io/faker/guide/providers/base)
  * [Address](https://neomatrixcode.gitbook.io/faker/guide/providers/address)
  * [Company](https://neomatrixcode.gitbook.io/faker/guide/providers/company)
  * [Datetime](https://neomatrixcode.gitbook.io/faker/guide/providers/datetime)
  * [Internet](https://neomatrixcode.gitbook.io/faker/guide/providers/internet-1)
  * [Lorem](https://neomatrixcode.gitbook.io/faker/guide/providers/lorem)
  * [Phone number](https://neomatrixcode.gitbook.io/faker/guide/providers/phone-number)
  * [Miscellaneous](https://neomatrixcode.gitbook.io/faker/guide/providers/miscellaneous)
  * [Color](https://neomatrixcode.gitbook.io/faker/guide/providers/color)
  * [Credit card](https://neomatrixcode.gitbook.io/faker/guide/providers/credit-card)
  * [File](https://neomatrixcode.gitbook.io/faker/guide/providers/file)
  * [Person](https://neomatrixcode.gitbook.io/faker/guide/providers/person)
  * [User agent](https://neomatrixcode.gitbook.io/faker/guide/providers/user-agent)
* [Localization](https://neomatrixcode.gitbook.io/faker/guide/localization)
* [Randomness seed](https://neomatrixcode.gitbook.io/faker/guide/randomness-seed)
* [Generator](https://neomatrixcode.gitbook.io/faker/guide/generator)

***
* [Website](https://faker.vercel.app)
* [Sponsor this project](https://github.com/sponsors/neomatrixcode)
## Example
```julia
using Faker

Faker.random_digit()
=> 5


Faker.random_digit_not_null()
=> 9


Faker.random_digit_or_empty()
=> 8


Faker.random_digit_not_null_or_empty()
=> 3


Faker.random_number(digits= 1)
=> 5


Faker.random_int(min=0, max=9999)
=> 3753


Faker.email() 
=> "kirsten.greenholt@corkeryfisher.info"


```

