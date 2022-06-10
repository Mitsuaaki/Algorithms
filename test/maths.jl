@testset "Maths" begin
"""
    @testset "Maths: Approximate π" begin
        @test approximate_pi(37) == 3.141592653589793238462643383496777424642594661632063407072684671069773618535135
        @test_throws DomainError approximate_pi(-37)
    end


    @testset "Maths: Area" begin
        @test area_rectangle(5, 10) == 50
        @test_throws DomainError area_rectangle(-1, -2)
        @test_throws DomainError area_rectangle(1, -2)
        @test_throws DomainError area_rectangle(-1, 2)

        @test area_square(5) == 25
        @test_throws DomainError area_square(-1)

        @test area_cube(5) == 150
        @test_throws DomainError area_cube(-1)

        @test area_triangle(5, 7) == 17.5
        @test_throws DomainError area_triangle(-1, -2)
        @test_throws DomainError area_triangle(1, -2)
        @test_throws DomainError area_triangle(-1, 2)

        @test area_heron_triangle(2, 12, 13) == 30
        @test_throws DomainError area_heron_triangle(-1, -2, 1)
        @test_throws DomainError area_heron_triangle(1, -2, 1)
        @test_throws DomainError area_heron_triangle(-1, 2, 1)

        @test area_circle(8) == 201.06192982974676
        @test_throws DomainError area_circle(-1)

        @test area_sphere(8) == 804.247719318987
        @test_throws DomainError area_circle(-1)

        @test area_parallelogram(4, 50) == 200
        @test_throws DomainError area_parallelogram(-1, -2)
        @test_throws DomainError area_parallelogram(1, -2)
        @test_throws DomainError area_parallelogram(-1, 2)

        @test area_trapezium(10, 20, 30) == 450
        @test_throws DomainError area_trapezium(-1, -2, -3)
        @test_throws DomainError area_trapezium(-1, 2, 3)
        @test_throws DomainError area_trapezium(1, -2, 3)

        @test area_hexagon(5, 4) == 10
        @test_throws DomainError area_heron_triangle(-1, -2)
        @test_throws DomainError area_heron_triangle(1, -2)
        @test_throws DomainError area_heron_triangle(-1, 2)

        @test area_octagon(6) == 173.82337649086284
        @test_throws DomainError area_octagon(-1)
    end
"""
end
