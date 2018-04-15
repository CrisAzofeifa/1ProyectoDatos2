#include "mserver.h"
#include <iostream>
#include<stdio.h>
#include<string.h>    //strlen
#include<stdlib.h>    //strlen
#include<sys/socket.h>
#include<arpa/inet.h> //inet_addr
#include<unistd.h>    //Permite el write
#include<pthread.h> //Biblioteca de Threads , asociada a lpthread
#include <jsoncpp/json/json.h>

/* Pasos para la ejecucion del servidor:
 * 1. Abrir una terminal
 * 2. Cambiar el directorio con: cd C-
 * 3. Escribir el comando g++ -pthread  mserver.cpp -o mserver -ljsoncpp

 * 4. Ingresar ./mserver
*/

int base=0;
int limite =1024;
int top=0;


using namespace std;


void *manejador_conexion(void *);

int socket_desc , client_sock , c;
struct sockaddr_in server , client;
char *memoria;

int main(){
    Server* server= new Server;
    server->crear();
    class EstructuraData;
    class List;
    return 0;
}


int Server::crear() {

    //Crea el socket
    socket_desc = socket(AF_INET , SOCK_STREAM , 0);
    if (socket_desc == -1)
    {
        printf("No se pudo crear el socket");
    }
    puts("\n\n                           ********MSERVER********                 ");
    puts("\n\nEscuchando en el puerto 8888\n ");

    //Prepara el socket(esto es definido)
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;
    server.sin_port = htons( 8888 );




    // Se reserva memoria y se asigana la direccion al puntero memoria

    memoria = (char *)(malloc(sizeof(char)*1024));


    //Para ver si se asigno correctamente la memoria
    if (memoria  == NULL) {
        puts("Error al intentar reservar memoria");
    }else{
        puts("Reservados 1024 bytes de memoria");
    }


    //Enlazar el servidor
    if( bind(socket_desc,(struct sockaddr *)&server , sizeof(server)) < 0)
    {
        //print the error message
        perror("Enlace fallido");
        return 1;
    }


    //Escuhar si llegan conexiones
    listen(socket_desc , 3);




    //Se aceptan y  esperan las conexiones
    puts("Esperando por conexiones...");
    c = sizeof(struct sockaddr_in);
    pthread_t thread_id;

    while( (client_sock = accept(socket_desc, (struct sockaddr *)&client, (socklen_t*)&c)) )
    {
        puts("Conexion aceptada");

        //Creacion del hilo para mas de un cliente
        if( pthread_create( &thread_id , NULL ,  manejador_conexion, (void*) &client_sock) < 0)
        {
            perror("No se pudo crear el thread");
            return 1;
        }

        //pthread_join( thread_id , NULL); // Esta es la base del Thread
    }

    if (client_sock < 0)
    {
        perror("Fallo aceptado");
        return 1;
    }



}

/*
 * Este es el manejador de conexiones para cada cliente
 */
void *manejador_conexion(void *socket_desc)
{
    //Se obtiene el descriptor del socket
    int sock = *(int*)socket_desc;
    int read_size;
    char client_message[200];
    const char *message;

    //Enviar mensajes al cliente
    //message = "Preparado para recibir datos\n";
    //write(sock , message , strlen(message));


    //Recibir mensajes al cliente
    while( (read_size = recv(sock , client_message , 200 , 0)) > 0 )
    {
        //Final del marcador del string respuesta
        client_message[read_size] = '\0';
         char client_resp[53] = "Datos recibidos con exito por mserver\n\n";

        //Enviar mensaje de vuelta al cliente

        write(sock , client_resp, strlen(client_resp));
        string mensaje= client_message;


        Json::Reader reader;
        Json::Value obj;
        reader.parse(mensaje, obj); // reader can also read strings
        cout << "nombre: " << obj["nombre"].asString() << endl;
        cout << "tamaño: " << obj["tamanio"].asString() << endl;
        cout << "tipo: " << obj["tipo"].asString() << endl;
        cout << "valor: " <<obj["valor"].asString()  << endl;



/*
        if ( top< limite){
            int nombre= (int*)(obj["valor"].asString()); //valor
            *(int*)(memoria+base)= nombre; //suma tamanio
            top+= (int*)(obj["tamanio"].asString()); //tamanio
            int *ptr= (int*)(memoria+base);

            //estruct->setAtributos(obj["nombre"].asString(), ptr,obj["tipo"].asString(), *ptr, base,top );



        else{
            cout<< "sin memoria disponible";
        }
*/
        cout << "El mensaje recibido es " << mensaje<< endl;
        //limpiar el mensaje
       //memset(client_message, 0, 2000);

    }
    // Si se desconecta el cliente (en este caso se cierra la terminal)
    if(read_size == 0)
    {
        puts("Cliente desconectado");
        fflush(stdout);
    }
    else if(read_size == -1)
    {
        perror("Fallo");
    }


}




