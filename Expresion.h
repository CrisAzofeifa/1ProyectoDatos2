//
// Created by cris on 13/04/18.
//

#ifndef TRANSLATOR_EXPRESION_H
#define TRANSLATOR_EXPRESION_H

#include <iostream>

using namespace std;

class Expresion {
private:
    string nombre,tipo,valor;
    int nivel;
public:
    void setAtributos(string Nombre, string Tipo, string Valor, int Nivel){
        this->nombre = Nombre;
        this->tipo = Tipo;
        this->valor = Valor;
        this->nivel = Nivel;
    }

    string getNombre(){
        return nombre;
    }
    string getTipo(){
        return tipo;
    }
    string getValor(){
        return valor;
    }
    int getNivel(){
        return nivel;
    }

};


#endif //TRANSLATOR_EXPRESION_H
