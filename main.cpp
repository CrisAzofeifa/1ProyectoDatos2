#include <QApplication>
#include "forms/ide_cfactorial.h"
#include "MetaData.h"
#include <jsoncpp/json/json.h>
#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char* argv[]) {

    QApplication a(argc, argv);
    IDE_CFactorial w;
    w.show();



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

    return a.exec();

}

