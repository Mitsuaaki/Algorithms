using Algorithms, Test

@testset "Search" begin
    @testset "Search: Linear" begin
        @test linear_search([1, 5, 3, 9, 7, 10], 7) == true
        @test linear_search([1, 5, 3, 9, 7, 10], 8) == false
    end

    @testset "Search: Binary" begin
        sample = [0, 23, 52, 552, 555, 602, 1004]
        reversed_sample = reverse(sample)
        unsorted_sample = [124, 53, 21, 163]

        @test binary_search(sample, 52) == 3:3
        @test binary_search(sample, 602) == 6:6
        @test binary_search(reversed_sample, 52; rev = true) == 5:5
        @test binary_search(reversed_sample, 602; rev = true) == 2:2
        @test_throws ErrorException binary_search(unsorted_sample, 21)
    end
end