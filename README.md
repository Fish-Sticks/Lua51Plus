# Lua5.1 Plus
This is a modified version of Lua5.1 which contains custom behaviors. All the code compiled with Lua5.1 will be able to run on the vanilla Lua5.1 virtual machine which means this compiler is compatible with normal Lua environments and won't break the VM it runs on.
<br>
# Current features
Custom assignment using operators such as: +=, -=, *=, /=, ^=, %=
<br>
**Note**: Custom assignment must be singular expression such as var `=´ exp (no comma separated).  
<br>
Ability to call functions without parenthesis providing numbers (previously only strings and tables).
<br>
Example: func "hello", func 123, func {} is the equivalent of: func("hello"), func(123), func({})
