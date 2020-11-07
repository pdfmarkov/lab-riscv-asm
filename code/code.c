#include <stdio.h>

#define N 4
#define M 2 
 
int process(int n, int m, int matrix [M][N], int result)
{
    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < n; ++j) {
            if(matrix[i][j] > 0) result += matrix[i][j];
        }
    }
    
 return result;
}
 
void main(int argc, char** argv)
{
    int matrix[M][N];
    int result = 0;
 
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            scanf("%d", &matrix[i][j]);
        }
    }
    
    result = process(N, M, matrix, result);
    
    printf("%d", result);
 
    return 0;
}