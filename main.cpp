#include <iostream>
#include <QApplication>
#include "forms/ide_cfactorial.h"
#include <QThread>



using namespace std;


int main(int argc, char* argv[]) {
    QApplication a(argc, argv);
    pthread_t c_thread;
    IDE_CFactorial w;
    w.show();
/*

    QThread interfaz;
    public:
    Controller() {
        Worker *worker = new Worker;
        worker->moveToThread(&workerThread);
        connect(&workerThread, &QThread::finished, worker, &QObject::deleteLater);
        connect(this, &Controller::operate, worker, &Worker::doWork);
        connect(worker, &Worker::resultReady, this, &Controller::handleResults);
        workerThread.start();
    }
    ~Controller() {
        workerThread.quit();
        workerThread.wait();
    }*/
    return a.exec();
}




   /* char* memo =(char*)malloc(sizeof(char)*1024);
    int y=76;
    *(int*)(memo+4)= y;
    int *ptr= (int*)(memo+4);
    cout << *ptr << endl;
    cout << ptr<< endl;
   // free(memo);






    /*
    ifstream ifs("alice.json");
    Json::Reader reader;
    Json::Value obj;
    reader.parse(ifs, obj); // reader can also read strings
    cout << "Book: " << obj["book"].asString() << endl;
    cout << "Year: " << obj["year"].asUInt() << endl;
    const Json::Value& characters = obj["characters"]; // array of characters
    for (int i = 0; i < characters.size(); i++){
        cout << "    name: " << characters[i]["name"].asString();
        cout << " chapter: " << characters[i]["chapter"].asUInt();
        cout << endl;
    }
*/



