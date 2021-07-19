# Yoru
A versatile programming language built solely for Roblox Lua on-the-go developing.

Simply use this source code or require the module:

https://www.roblox.com/library/7121311219/

Docs can be seen below.

________

# Docs

![image](https://user-images.githubusercontent.com/74572291/126202163-37927204-848b-42d1-81a5-a3e2ee5acecb.png)

*What is this? Some sort of joke?*

No, this is a real programming language with a real purpose. Yoru is a modded version of Luau with most features supported. All scripts are executed in loadstring(). There is currently only server-sided support.

As you can probably tell, the syntax of Yoru is extremely strange. It mostly consists of words, periods, and $. Why is that? Well, Yoru was invented for use on-the-go, which means scripting on phones and tablets. While you may not be able to run Roblox Studio on these devices, you can write your scripts in a notepad app via Yoru, which shouldn't make auto-correct go haywire as most of the characters used with the sole exception of "$" are on the main keyboard.

### Main Differences between Luau and Yoru

YORU|LUAU
----|----
`is` | `=`
`has` | `.`
`(space). .(space)` | ( )
`from x execute y .. ` | `x:y()`

There are a couple of other exceptions, but it's mostly things like "load string" instead of "loadstring" or "get function environment" instead of "getfenv".

The main thing I want to go over is this:

`(space). .(space)`

**ALWAYS ADD A SPACE BEFORE AND AFTER PERIODS!**

If you don't do so, it won't interpret correctly and you've screwed everything up. If you want to nest parentheses, I recommend doing it like so:

```
print .math has random .2, 7.  (tab) . 
```

A complete list of differences are listed below. If it isn't on here, it isn't different (yet).

Oh, P.S. don't name your variables after any of these without adding other characters into the variable.

__________

# Differences in keywords

YORU|LUAU
----|-----
absolute (i.e. `math has absolute .-53745. `) | abs (i.e. `math.abs(-4367)`)
arc cosine | acos
arc sine | asin
arc tangent | atan
alternate arc tangent | atan2
ceiling | ceil
collect garbage | collectgarbage
concatenate | concat
cosine | cos
hyperbolic cosine | cosh
degrees | deg
difference of time (i.e. `os has difference of time`) | difftime (i.e. `os.difftime`)
value types (i.e. `value types has Font has Nunito`)| Enum (i.e. Enum.Font.Nunito)
elapsed time (warning: DO NOT add dots) | elapsedTime()
second alternate exponent | ldexp
for each it | foreachi
for each | foreach
alternate exponent | frexp
from ... execute ... | ...:...
exponent | exp
floor modulo | fmod
get function environment (no dots)| getfenv()
get meta table | getmetatable
get number | getn
global match | gmatch
global sub | gsub
length | len
is less than | <
is greater than | >
is greater than or equal to | >=
is less than or equal to | <=
minus | -
times | *
divided by | /
plus | +
repeat string | rep
huge number | math.huge
is | =
is equal to | ==
it pairs | ipairs
load string | loadstring
base 10 logarithm | log10
split number | modf
modulo | %
 .. | ()
get pi | math.pi
print identity (warning: DO NOT include dots) | printidentity()
profile begin | profilebegin
profile end | profileend
protected call | pcall
random seed | randomseed
raw equal | rawequal
raw get | rawget
raw set | rawset
settings | settings()
set function environment (no dots)| setfenv()
set meta table | setmetatable
sine | sin
hyperbolic sine | sinh
square root | sqrt
tangent | tan
hyperbolic tangent | tanh
to number | tonumber
to string | tostring
trace back | traceback
type of | typeof
user settings (no dots) | UserSettings()
get version | `_VERSION`
x protected call | xpcall
has | .

# Other differences
* `_G` is deprecated for `shared`
* Functions specific to services or DataModel are not supported yet.
