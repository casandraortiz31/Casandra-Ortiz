#include <iostream>
#include <string>
using namespace std;

// función para obtener la primera Vocal Interna de una cadena de texto 
char obtenerlaprimeravocalinterna(const std::string& str) {
    for(size_t i = 1; i < str.length(); ++i) {
        char c = str[i];
        if (c == 'A' || c == 'E' || c == 'I'|| c == 'O' || c== 'U')
        return c;
    }
    return 'X';//si no se encuentra ninguna vocal interna, entonces se utiliza x
}

 //funcion principal para realizar el calculo del RFC
 
 std::string calculaRFC (const std::string& Nombre, const std::string& apellidopaterno, const std::string& apellidoMaterno, const std::string& fechanacimiento) {
        std:: string rfc;
        
    //Se obtiene la letra inicial y la primera vocal interna del apellido apellidopaterno
    char letraInicial = apellidopaterno[0];
    char primeravocalinterna = obtenerlaprimeravocalinterna(apellidopaterno);
   
    //Se obtiene la letra inicial del apellido Materno o se usa 'X' si no cuenta con apellido materno
    char inicialapellidoMaterno = (! apellidoMaterno.empty()) ? apellidoMaterno[0] : 'x';
    
    // Se obtiene las letra inical del primer nombre o se sustituye por una 'X' si no obtiene
    char inicialNombre = Nombre[0];
    
    //Se obtiene los dos ultimos digitos del año de nacimiento
    std::string año = fechanacimiento.substr(2,2);
    
    //Se obtiene el mes y el dia de nacimiento 
    std:: string mes = fechanacimiento.substr(5,2);
    std:: string dia = fechanacimiento.substr(8,2);
 
    //Se crea el rfc
    rfc = letraInicial; 
    rfc += primeravocalinterna;
    rfc += inicialapellidoMaterno;
    rfc += inicialNombre;
    rfc += año;
    rfc += mes;
    rfc += dia;
    
    return rfc;
 }
 
 int main() {

    std::string nombre, apellidopaterno, apellidomaterno, fechanacimiento;
    
    std::cout << "Ingresa el nombre (s):";
    std::getline(std::cin, nombre);
    
    std::cout << "Ingresa el apellido paterno: ";
    std::getline(std::cin, apellidopaterno);
    
    std::cout << "Ingresa el apellido materno (si no tiene presione, <Enter>: ";
    std::getline(std::cin,apellidomaterno);
    
    std::cout << "Ingrese la fecha de nacimiento(YYYY-MM-DD): ";
    std::getline(std::cin, fechanacimiento);
    
    std::string rfc = calculaRFC(nombre, apellidopaterno, apellidomaterno,fechanacimiento);
    std::cout << "RFC: " << rfc << std::endl;

    return 0;
 }









