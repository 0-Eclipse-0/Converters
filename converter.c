#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int fahrToCel(temp){
  return (temp - 32) / 1.8;
}

int celToFahr(temp){
  return temp * 1.8 + 32;
}

void main(){
  // Introduction //
  char unit[] = "Default";
  float temp = 0;
  printf("|------------------------------|\n");
  printf("|--------Temp Converter--------|\n");
  printf("|-----------C Edition----------|\n");
  printf("|------By: Matt Hambrecht------|\n");
  printf("|------------------------------|\n");
  printf("Enter the unit of measurement: ");
  scanf(" %s", &unit);
  printf("Enter the temperature: ");
  scanf(" %f", &temp);
  printf("Unit is set to %s.\n", unit);
  printf("Temperature is set to %.5f.\n", temp);
  if(unit == "f" || unit == "fahr" || unit == "fahrenheit"){
    float fahr = temp;
    float cel = fahrToCel(temp);
    printf("Celsius = %.10f\n", cel);
    printf("Fahrenheit = %.10f\n", fahr);
  }else if(unit == "c" || unit == "cel" || unit == "celsius"){
    float fahr = temp;
    float cel = celToFahr(temp);
    printf("Celsius = %.10f\n", cel);
    printf("Fahrenheit = %.10f\n", fahr);
  }else{
    printf("%s is not a valid unit.", unit);
  }
}
