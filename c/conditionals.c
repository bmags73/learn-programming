#include <stdio.h>

int main() {
    
    int temp;
    printf("Enter the temperature in Fahrenheit: ");
    scanf("%d", &temp);

    if (temp >= 70) {
            printf("Dang bruther, its hot\n");
    } else if (temp >= 30 && temp < 70) {
            printf("Dang bruther, its mild\n");
    } else {
            printf("Dang bruther, its cold\n");
    }
    return 0;
}
