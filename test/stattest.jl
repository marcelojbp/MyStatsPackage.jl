@testset "unit tests" begin
    @testset "rse_sum" begin
        @test rse_sum(0:0) == 0
        @test rse_sum(1:2) == 3
    end
    @testset "rse_mean" begin
        @test rse_mean(1) == 1
        @test rse_mean(1:3) == 2
    end
end
