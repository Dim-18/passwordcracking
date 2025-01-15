#include <iostream>
#include <cstring>
#include <cstdlib> 
#include <ctime>
using namespace std;

int main() {
    char password[30];
    cout << "Enter your integer password: ";
    char ch;
    int i = 0;

    while (true) {
        ch = getchar();
        if (ch == '\n') { 
            password[i] = '\0';
            break;
        } else if (ch == '\b' || ch == 127) {
            if (i > 0) {
                i--;
                cout << "\b \b";
            }
        } else {
            password[i] = ch;
            i++;
            cout << "*"; 
        }
    }
    cout << endl;


    char predicted_pass[30];
    srand(time(0));

    while (strcmp(predicted_pass, password) != 0) {
        int length = strlen(password);
        for (i = 0; i < length; i++) {
            predicted_pass[i] = (char)((rand() % 10) + 48);
        }
        predicted_pass[i] = '\0';
        cout << predicted_pass << endl;
    }

    cout << "Your password is: " << predicted_pass << endl;

    return 0;
}