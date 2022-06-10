using Algorithms, Test

@testset "Search" begin
    @testset "Search: Linear" begin
        @test linear_search([1, 5, 3, 9, 7, 10], 7) == true
        @test linear_search([1, 5, 3, 9, 7, 10], 8) == false
    end
end