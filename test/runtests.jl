using Faker
using Test

@testset "Faker" begin
include("test_default.jl");
include("test_es_mx.jl");
include("test_ja.jl");
include("test_en_US.jl");
end;
