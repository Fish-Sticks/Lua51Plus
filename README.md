# Lua5.1 Plus
This is a modified version of Lua5.1 which contains custom behaviors. All the code compiled with Lua5.1 will be able to run on the vanilla Lua5.1 virtual machine which means this compiler is compatible with normal Lua environments and won't break the VM it runs on.
<br>
# Current features
Custom assignment using operators such as: +=, -=, *=, /=, ^=, %=, !=, &&, ..=
<br>
**Note**: Custom assignment must be singular expression such as var `=´ exp (no comma separated).  
<br>
JSON keyword and parser, just type json{} or json[] to parse the json. Any inner objects/arrays are automatically parsed as JSON.
<br>
Labels and goto statements (must be in current function scope). Can define and jump to labels in any position of the code, such as jumping to a label which is defined later in the code.
<br>
**nil** has the alias **null**.
<br>
Ability to call functions without parenthesis providing numbers (previously only strings and tables).
<br>
Example: func "hello", func 123, func {} is the equivalent of: func("hello"), func(123), func({})
<br>
Loops can now be "continued" (with respect to condition). Example:<br>
```lua
for i = 1, 100 do
if i ~= 50 then continue end
print(i)
end

-- Prints 50
```
<br>This behavior works with all types of loops.

<br>
**For more information check out the test script!**
