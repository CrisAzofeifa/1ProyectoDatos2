
#ifndef C_SERVER_H
#define C_SERVER_H
#include <iostream>


using namespace std;

class Server {
public:
    int crear();
    int metaData(char);
private:

    int base=0;
    int limite =1024;
    int top=0;
};


class List
{
    Nodo<t_data> *list;
    int size;

public:

    List() { list = NULL; size = 0; }
    List(t_data data);
    void Add(int ncells);
    int isEmpty() { return (list == NULL); }
    void Insert(t_data data);
    t_data Get(int index);
    void addAt(t_data data, int index);
    void Delete(int index);
    long length() { return size; }
    ~List();
};

#endif

template<class t_data>
List<t_data>::List(t_data data)
{
    list = new Nodo<t_data>(data);
    size++;
}
//Reserva espacio en la list para tantos elementos
//como indique el parametro nceldas, y acutaliza la
//variable size
template<class t_data>
void List<t_data>::Add(int nceldas)
{
    Nodo<t_data> *temp;
    int i = 0;

    if(isEmpty())
    {//si la list esta vacia inserto el nodo vacio en la primera posicion
        Nodo<t_data> *nodo = new Nodo<t_data>();
        list = nodo;
        i++;
        size++;
    }
    for(; i<nceldas; i++)
    {
        Nodo<t_data> *nodo = new Nodo<t_data>();
        temp = list;
        //como la list no esta vacia avanzo hasta la ultima posicion e inserto el nodo vacio
        while(temp->next())
            temp = temp->next();
        temp->insert(nodo);
        size++;
    }
}

template<class t_data>
void List<t_data>::Insert(t_data data)
{
    Nodo<t_data> *nodo = new Nodo<t_data>(data);
    Nodo<t_data> *temp = list;

    if(isEmpty())
    {
        cout << "Empty list" << endl;
        list = nodo;
    }
    else
    {
        while(temp->next())
            temp = temp->next();
        temp->insert(nodo);
    }
    size++;
}

template<class t_data>
t_data List<t_data>::Get(int index)
{
    int i=0;
    Nodo<t_data> *nodo = list;

    if(!isEmpty())
    {
        if(size < index)
        {
            cout << "ERROR: Index is major than the size of list";
            exit(1);
        }
        while((i<index) && (nodo))
        {
            nodo = nodo->next();
            i++;
        }
        return (nodo->element());

    }
    cout << "Empty list" << endl;
    exit(1);
}

template<class t_data>
void List<t_data>::Delete(int index)
{
    int i=0;
    Nodo<t_data> *nodo = list,*prev=list;

    if(!isEmpty())
    {
        if(index == 0)
            list = list->next();
        while((i<index) && (nodo))
        {
            prev = nodo;
            nodo = nodo->next();
        }
        if(nodo)
            prev->insert(nodo->next());
        delete(nodo);
        size--;
    }
}
template<class t_data>
void List<t_data>::addAt(t_data data, int index) {
    Nodo<t_data> *temp = list;
    if(isEmpty()) {
        cout << "Empty list" << endl;
    }else {
        for (int i = 0; i < index; ++i) {
            temp = temp->next();
        }
        temp->setElement(data);
    }
}

template<class t_data>
List<t_data>::~List()
{
    while(!isEmpty())
        Delete(0);
    size = 0;
}


class EstructuraData{
private:
    string nombre,tipo;
    int base, top,valor;
    int *puntero;
public:
    void setAtributos(string Nombre, int* puntr, string Tipo,  int Valor, int Base, int Top){
        this->nombre = Nombre;
        this->puntero = puntr;
        this->tipo = Tipo;
        this->valor = Valor;
        this->base = Base;
        this-> top= Top;
    }

    const string &getTipo() const {
        return tipo;
    }

    int getBase() const {
        return base;
    }

    int getTop() const {
        return top;
    }

    int getValor() const {
        return valor;
    }

    void *getPuntero() const {
        return puntero;
    }

    const string &getNombre() const {
        return nombre;
    }


};
#endif //C_SERVER_H
