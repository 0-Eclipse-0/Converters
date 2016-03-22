# Introduction #
puts "|------------------------------|"
puts "|--------Temp Converter--------|"
puts "|--------(Ruby Edition)--------|"
puts "|------By: Matt Hambrecht------|"
puts "|------------------------------|"
print "Enter the unit of measurement: "
unit = gets.chomp;
print "Enter the temperature: "
temp = gets.chomp.to_f;
if unit == "f" or "fahr" or "fahrenheit"
  fahr = temp
  cel = (fahr - 32) / 1.8
  print "Celsius = ", cel, "\n"
  print "Fahrenheit = ", fahr, "\n"
elsif unit == "c" or "cel" or "celsius"
  cel = temp
  fahr = cel * 1.8 + 32
  print "Celsius = ", cel, "\n"
  print "Fahrenheit = ", fahr, "\n"
else
  print "%s is not a valid unit!", unit, "\n"
end
