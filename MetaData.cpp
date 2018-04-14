//
// Created by kimberlyc on 13/04/18.
//

#include "MetaData.h"
#include "Client.h"

Client* cliente = new Client;


void MetaData::recibir(char json[]){

 cliente->enviar(json);

}
void *cliente_thread(void *arg) {
    cliente->crear();
}

/*void MetaData::hiloCliente() {

    pthread_t c_thread;
    int ret;
    ret = pthread_create(&c_thread, NULL, &cliente_thread, NULL);

    if (ret != 0) {
        printf("Error al crear el Thread del cliente\n");
        exit(EXIT_FAILURE);
    }
}
void MetaData::parseo(char json[]) {

}*/

