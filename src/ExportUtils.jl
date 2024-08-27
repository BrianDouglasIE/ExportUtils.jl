module ExportUtils

export @export_const

macro export_const(e)
    Base.isexpr(e, :(=), 2) || error("Must be used on an assignment form, got $e")
    quote
        export $(e.args[1])
        const $(e.args[1]) = $(e.args[2])
    end |> esc
end

end
