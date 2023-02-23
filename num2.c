#include<stdio.h>

const int SIZE = 1000;

int main() {
    double a[SIZE][SIZE];
    int n = SIZE;
    int i, j, k;

    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            a[i][j] = 0;
            a[i][j] = a[i][j] + 2.5 ;
        }
    }

    printf("Result: \n");
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            printf("%f\t", a[i][j]);
        }
        printf("\n");
    }
    return 0;
}