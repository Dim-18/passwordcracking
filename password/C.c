#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main() {
    char password[30];
    printf("Enter your password: ");
    char ch;
    int i = 0;

    while (1) {
        ch = getchar();
        if (ch == '\n') {
            password[i] = '\0';
            break;
        } else if (ch == '\b' || ch == 127) {
            if (i > 0) {
                i--;
                printf("\b \b");
            }
        } else {
            password[i] = ch;
            i++;
            printf("*");
        }
    }
    printf("\n");

    char predicted_pass[30];
    srand(time(0));

    while (strcmp(predicted_pass, password) != 0) {
        int length = strlen(password);
        for (i = 0; i < length; i++) {
            predicted_pass[i] = (char)((rand() % 10) + 48);
        }
        predicted_pass[i] = '\0';
        printf("%s\n", predicted_pass);
    }

    printf("Your password is: %s\n", predicted_pass);

    return 0;
}
