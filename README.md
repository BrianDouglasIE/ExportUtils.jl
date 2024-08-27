# ExportUtils.jl

`ExportUtils` is a lightweight Julia package that provides a macro to simplify variable and function exporting. The `@export_const` macro helps you export and define constants in a concise and readable manner.

## Usage

```julia
module TestModule
	using ExportUtils

	@export_const x = 10
	@export_const y = "hello"
	@export_const z = 3.14

	@export_const add = function (a, b)
	    return a + b
	end
end
```

## Notes

Idea for package comes from a discussion on the Julia Zulip chat. [Source Message](https://julialang.zulipchat.com/#narrow/stream/137791-general/topic/Export.20everything.20from.20a.20module/near/465268373).