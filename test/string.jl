using Algorithms, Test

@testset "String" begin
    @testset "String : Palindrome" begin
        @test palindrome("racecar") == true
        @test palindrome("hello") == false
    end

    @testset "String : Anagram" begin
        # ToDo
    end
end