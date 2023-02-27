#include<stdio.h>
#include <time.h>

const int SIZE = 8;

int main() {
    double a[SIZE][SIZE], b[SIZE][SIZE], c[SIZE][SIZE];
    int n = SIZE;
    int i, j, k;

    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            a[i][j] = 2.5;
            b[i][j] = 4.0;
        }
    }

    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            c[i][j] = 0;
            for (k = 0; k < n; k++) {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }

    printf("Result of metric multiplication: \n");
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            printf("%f\t", c[i][j]);
        }
        printf("\n");
    }
    return 0;
}