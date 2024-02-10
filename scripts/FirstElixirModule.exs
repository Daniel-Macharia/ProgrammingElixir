defmodule FirstElixirModule do
  def factorial( 0 ) do
    #IO.puts("Reached Factorial base case")
    1
  end
  def factorial( num ) do
    num * factorial( num - 1)
  end
  def get_factorial(0) do
    1
  end
  def get_factorial(num) do
    IO.puts("Factorial of #{num} is #{factorial(num)}")
    get_factorial(num - 1)
  end
end

defmodule FactorialUsingIfStatement do
  def factorial_with_if(num) do
    if num == 0 do
      1
    else
      num * factorial_with_if(num - 1)
    end
  end

  def get_factorial_with_if(num) do
    if num == 0 do
      1
    else
      IO.puts("Factorial of #{num} is #{factorial_with_if(num)}")
      get_factorial_with_if( num - 1 )
    end
  end
end

num = 1000

#get factorial of the first ten integers
#get factorial using the base and general case method
FirstElixirModule.get_factorial(num)
IO.puts("\n\n\n")
#now get factorial with if condition
FactorialUsingIfStatement.get_factorial_with_if(num)
