using Test
using ExportUtils

module TestModule
	using ExportUtils

	@public x = 10
	@public y = "hello"
	@public z = 3.14

	@public add = function (a, b)
	    return a + b
	end
end

@testset "ExportUtils Tests" begin
    @test isdefined(TestModule, :x)
    @test isdefined(TestModule, :y)
    @test isdefined(TestModule, :z)
    @test isdefined(TestModule, :add)

    @test TestModule.x == 10
    @test TestModule.y == "hello"
    @test TestModule.z == 3.14
    @test TestModule.add(2, 2) == 4
end