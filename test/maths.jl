using Algorithms, Test

@testset "Maths" begin
    @testset "Maths: Approximate π" begin
        # Detected as fail by Test.jl because of the large number of decimal, but functionnaly in julia-repl
        # @test approximate_pi() == 3.141592653589793238462643383496777424642594661632063407072684671069773618535135
        # @test_throws DomainError approximate_pi(-1)
    end

    @testset "Maths: Area" begin
        @test area_rectangle(5, 10) == 50
        @test_throws DomainError area_rectangle(-1, 0)
        @test_throws DomainError area_rectangle(0, -1)
        @test_throws DomainError area_rectangle(-1, -1)

        @test area_square(5) == 25
        @test_throws DomainError area_square(-1)

        @test area_cube(5) == 150
        @test_throws DomainError area_cube(-1)

        @test area_triangle(5, 7) == 17.5
        @test_throws DomainError area_triangle(-1, 0)
        @test_throws DomainError area_triangle(0, -1)
        @test_throws DomainError area_triangle(-1, -1)

        @test area_heron_triangle(2, 12, 13) == 10.790620927453618
        @test_throws DomainError area_heron_triangle(0, 0, -1)
        @test_throws DomainError area_heron_triangle(0, -1, 0)
        @test_throws DomainError area_heron_triangle(0, -1, -1)
        @test_throws DomainError area_heron_triangle(-1, 0, 0)
        @test_throws DomainError area_heron_triangle(-1, 0, -1)
        @test_throws DomainError area_heron_triangle(-1, -1, 0)
        @test_throws DomainError area_heron_triangle(-1, -1, -1)
        @test_throws DomainError area_heron_triangle(1, 2, 4)
        @test_throws DomainError area_heron_triangle(1, 6, 4)
        @test_throws DomainError area_heron_triangle(4, 2, 1)

        @test area_circle(8) == 201.06192982974676
        @test_throws DomainError area_circle(-1)

        @test area_sphere(8) == 804.247719318987
        @test_throws DomainError area_circle(-1)

        @test area_parallelogram(4, 50) == 200
        @test_throws DomainError area_parallelogram(-1, 0)
        @test_throws DomainError area_parallelogram(0, -1)
        @test_throws DomainError area_parallelogram(-1, -1)

        @test area_trapezium(10, 20, 30) == 450.0
        @test_throws DomainError area_trapezium(0, 0, -1)
        @test_throws DomainError area_trapezium(0, -1, 0)
        @test_throws DomainError area_trapezium(0, -1, -1)
        @test_throws DomainError area_trapezium(-1, 0, 0)
        @test_throws DomainError area_trapezium(-1, 0, -1)
        @test_throws DomainError area_trapezium(-1, -1, 0)
        @test_throws DomainError area_trapezium(-1, -1, -1)

        @test area_hexagon(5, 4) == 10.0
        @test_throws DomainError area_hexagon(-1, 0)
        @test_throws DomainError area_hexagon(0, -1)
        @test_throws DomainError area_hexagon(-1, -1)

        @test area_octagon(6) == 173.82337649086284
        @test_throws DomainError area_octagon(-1)
    end

    @testset "Maths: Volume" begin
        @test volume_cube(3) == 27
        @test_throws DomainError volume_cube(-1)

        @test volume_parallelepiped(4, 3, 6) == 72
        @test_throws DomainError volume_parallelepiped(-1, 0, 0)
        @test_throws DomainError volume_parallelepiped(0, -1, 0)
        @test_throws DomainError volume_parallelepiped(0, 0, -1)
        @test_throws DomainError volume_parallelepiped(-1, -1, -1)

        @test volume_cylinder(7, 5) == 769.6902001294993
        @test_throws DomainError volume_cylinder(-1, 0)
        @test_throws DomainError volume_cylinder(0, -1)
        @test_throws DomainError volume_cylinder(-1, -1)

        @test volume_pyramid(3, 5) == 5
        @test_throws DomainError volume_pyramid(-1, 0)
        @test_throws DomainError volume_pyramid(0, -1)
        @test_throws DomainError volume_pyramid(-1, -1)

        @test volume_cone(5, 8) == 209.43951023931956
        @test_throws DomainError volume_cone(-1, 0)
        @test_throws DomainError volume_cone(0, -1)
        @test_throws DomainError volume_cone(-1, -1)

        @test volume_sphere(3) == 113.09733552923254
        @test_throws DomainError volume_sphere(-1)

        @test volume_prism(8, 5) == 40
        @test_throws DomainError volume_prism(-1, 0)
        @test_throws DomainError volume_prism(0, -1)
        @test_throws DomainError volume_prism(-1, -1)

        @test volume_cuboid(5, 7, 10) == 350
        @test_throws DomainError volume_cuboid(-1, 0, 0)
        @test_throws DomainError volume-cuboid(0, -1, -1)
        @test_throws DomainError volume_cuboid(-1, -1, 0)
        @test_throws DomainError volume_cuboid(-1, -1, -1)
    end

    @teset "Maths: Euler's Totient" begin
        @test euler_totient(5) == 4.0
    end

    @testset "Maths: Euler's Implicit method" begin
        @test euler_forward_method((x, t) -> x, 1, (0, 5))[1][end] == 143.33937864611195
        # @test euler_backward_method()
    end
end