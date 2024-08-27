using Test
using ExportUtils

module TestModule
	using ExportUtils

	@export_const x = 10
	@export_const y = "hello"
	@export_const z = 3.14

	@export_const add = function (a, b)
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