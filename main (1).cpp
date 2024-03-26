#include <iostream>
using namespace std;

int main()
{
  float numero1, numero2;
  cout << "Ingrese el primer número:";
  cin >> numero1;

  cout << "Ingrese el segundo número:";
  cin >> numero2;
  
  float suma = numero1 + numero2;
  float resta = numero1 - numero2;
  float multiplicacion = numero1 * numero2;
  float división = numero1 / numero2;
  
  cout << "la suma es: " << suma << std::endl;
  cout << "la resta es: " << resta << std::endl;
  cout << "la multiplicaión es: " << multiplicacion << std::endl;
  cout << "la divisiOn es" << división << std::endl;
  
    return 0;
}

