#   ft_printf 42

<div style="display: flex; align-items: center;">
  <div style="flex: 1; text-align: right;">
    <img src="https://github.com/Cimex404/42-ft_printf/blob/master/printf_icon.png" align="right" alt="libft Logo" width="140">
  </div>
  <div style="flex: 2; text-align: left">
    <p>
    	ft_printf is a 42 project that teaches about variable-length function calls.
	This project is a great asset for the later projects as it is much simpler and more versatile than the write function.
	ft_printf is a simplified replica of the original printf function, it can handle the most essential data type conversions and prints them to the standart output.
    </p>
  </div>
</div>


#	Conversions
```bash
%s	==>	String
%c	==>	Character
%d	==>	Decimal
%i	==>	Integer
%u	==>	Unsigned Decimal
%p	==>	Pointer Address
%x	==>	Hex value (lowercase)
%X	==>	Hex value (uppercase)
```

#	How to use it
You can simply run `make` and the project will compile to a static library called <strong>ft_printf.a</strong> as well as an executable called <strong>ft_printf</strong>.
The executable will simply run a demonstration of all conversions. 
<p>
  To use ft_printf in your own project compile the <strong>ft_printf.a</strong> together with your source files and add the <strong>ft_printf.h</strong> header to your headers.
</p>
