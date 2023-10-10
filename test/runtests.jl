using MyStatsPackage
include("setup.jl")
@testset "stattests" begin
    include("stattest.jl")
end
