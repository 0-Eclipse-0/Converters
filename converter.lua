-- Introduction --
print("|--------Temp Converter--------|")
print("|----------Lua Edition---------|")
print("|------By: Matt Hambrecht------|")
print("|------------------------------|")
-- Ask For Starting Unit --
io.write("Enter the unit of measurement: ")
unit = io.read()
-- Ask For Temperature --
io.write("Enter the temperature: ")
temp = io.read()
-- Evaluate Data --
if unit == "f" or "fahr" or "fahrenheit" then
  fahr = temp
  cel = (fahr - 32) / 1.8
  kel = (fahr + 459.67) * (5 / 9)
  print("Kelvin = ", kel)
  print("Celsius = ", cel)
  print("Fahrenheit = ", fahr)
elseif unit == "c" or "cel" or "celsius" then
  cel = temp
  fahr = cel * 1.8 + 32
  kel = cel + 273.15
  print("Kelvin = ", kel)
  print("Celsius = ", cel)
  print("Fahrenheit = ", fahr)
elseif unit == "k" or "kel" or "kelvin" then
  kel = temp
  fahr = (kel * 1.8) - 459.67
  cel = kel - 273.15
  print("Kelvin = ", kel)
  print("Celsius = ", cel)
  print("Fahrenheit = ", fahr)
else
  print("%s is not a valid unit!\n", unit)
end
