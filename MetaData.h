//
// Created by kimberlyc on 13/04/18.
//

#ifndef PROYECTO1_DATOS2_METADATA_H
#define PROYECTO1_DATOS2_METADATA_H


#include "Client.h"

class MetaData {
public:
    void parseo( char json[]);
    void recibir(char json[]);
    void hiloCliente();
    void *cliente_thread(void *arg);

};


#endif //PROYECTO1_DATOS2_METADATA_H
