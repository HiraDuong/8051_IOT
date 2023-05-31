#include <stdio.h>

int main() {
    int num = 65;
    char str[20]; // Assuming the string can hold the converted number

    sprintf(str, "%d", num); // Convert the integer to a string

    printf("The converted string is: %s\n", str);

    return 0;
}
