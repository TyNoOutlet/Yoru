local module = {}
local values = {}

local function massgsub(v)
	v = v:gsub("absolute ", "abs ") -- abs
	v = v:gsub("arc cosine", "acos") -- acos
	v = v:gsub("arc sine", "asin") -- asin
	v = v:gsub("alternate arc tangent", "atan2") -- atan2
	v = v:gsub("arc tangent", "atan") -- atan
	v = v:gsub("ceiling ", "ceil ") -- ceil
	v = v:gsub("collect garbage", "collectgarbage") -- collectgarbage
	v = v:gsub("concatenate", "concat") -- concat
	v = v:gsub("cosine ", "cos ") -- cos
	v = v:gsub("hyperbolic cosine", "cosh") -- cosh
	v = v:gsub("degrees ", "deg ") -- deg
	v = v:gsub("difference of time", "difftime") -- difftime
	v = v:gsub("value types", "Enum") -- Enum
	v = v:gsub("elapsed time", "elapsedTime()") -- elapsedTime()
	v = v:gsub("second alternate exponent", "ldexp") -- ldexp
	v = v:gsub("for each it", "foreachi") -- foreachi
	v = v:gsub("for each", "foreach") -- foreach
	v = v:gsub("alternate exponent", "frexp") -- frexp
	v = v:gsub(" execute ", ":") -- colon
	v = v:gsub("exponent ", "exp ") -- exp
	v = v:gsub("floor modulo", "fmod") -- fmod
	v = v:gsub("from", "") -- from (just here to make the language more logical-sounding)
	v = v:gsub("get function environment", "getfenv()") -- getfenv
	v = v:gsub("get meta table", "getmetatable") -- getmetatable
	v = v:gsub("get number", "getn") -- getn
	v = v:gsub("global match", "gmatch") -- gmatch
	v = v:gsub("global sub", "gsub") -- gsub METAAAAAA!
	v = v:gsub("length ", "len ") -- len
	v = v:gsub("is less than", "<") -- <
	v = v:gsub("is greater than", ">") -->
	v = v:gsub("is greater than or equal to", ">=") -- >=
	v = v:gsub("is less than or equal to", "<=") -- <=
	v = v:gsub(" minus ", " - ") -- minus
	v = v:gsub(" times ", " * ") -- times
	v = v:gsub(" divided by ", " / ") -- divided by
	v = v:gsub("repeat string", "rep") -- rep
	v = v:gsub("huge number", "math.huge") -- math.huge
	v = v:gsub(" is ", " = ") -- =
	v = v:gsub("is equal to", "==") -- ==
	v = v:gsub("it pairs", "ipairs") -- ipairs
	v = v:gsub("load string", "loadstring") -- loadstring
	v = v:gsub("base 10 logarithm", "log10") -- log10
	v = v:gsub("split number", "modf") -- modf
	v = v:gsub("modulo", "%%") -- modulo
	v = v:gsub(" %.", "("):gsub("%. ", ")") --()
	v = v:gsub("get pi", "math.pi") -- math.pi
	v = v:gsub(" plus ", " + ") -- plus
	v = v:gsub("print identity", "printidentity()") -- printidentity
	v = v:gsub("profile begin", "profilebegin") -- profilebegin
	v = v:gsub("profile end", "profileend") -- profilebegin
	v = v:gsub("protected call", "pcall") -- pcall
	v = v:gsub("random seed", "randomseed") -- randomseed
	v = v:gsub("raw equal", "rawequal") -- rawequal
	v = v:gsub("raw get", "rawget") -- rawget
	v = v:gsub("raw set", "rawset") -- rawset
	v = v:gsub("settings", "settings()") -- settings()
	v = v:gsub("set function environment", "setfenv()") -- setfenv
	v = v:gsub("set meta table", "setmetatable") -- setmetatable
	v = v:gsub("sine", "sin") -- sin
	v = v:gsub("hyperbolic sine", "sinh") -- sinh
	v = v:gsub("square root", "sqrt") -- sqrt
	v = v:gsub("tangent", "tan") -- tan
	v = v:gsub("hyperbolic tangent", "tanh") -- tanh
	v = v:gsub("to number", "tonumber") -- tonumber
	v = v:gsub("to string", "tostring") -- tostring
	v = v:gsub("trace back", "traceback") -- traceback
	v = v:gsub("type of", "typeof") -- typeof
	v = v:gsub("user settings", "UserSettings()") -- UserSettings()
	v = v:gsub("get version", "_VERSION") -- _VERSION
	v = v:gsub("x pcall", "xpcall") -- xpcall
	v = v:gsub(" has ", ".") -- dot notation
	return v
end

function module.Interpret(code)
	code = code:split("$")
	for i, v in ipairs(code) do
		if i % 2 == 0 then
			values[#values + 1] = '"' .. v .. '"'
			code[i] = "↔remove╣"
			continue
		end
		if string.find(v, "local ") then
			if i ~= 1 then
				values[#values + 1] = "\n" .. string.sub(v, 2)
			else
				values[#values + 1] = v
			end
			code[i] = "↔remove╣"
			v = massgsub(v)
			values[#values] = v
			continue
		end
		v = massgsub(v)
		values[#values + 1] = v
	end
	code = nil
	local nvalue = table.concat(values)
	print(nvalue)
	local r = loadstring(nvalue)
	r()
end

return module
