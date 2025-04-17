#include <stdio.h>
#include <stdlib.h>

int main() {
    int n;
    int *mangSoNguyen;

    // Nhập kích thước của mảng
    printf("Nhap so luong phan tu cua mang: ");
    scanf("%d", &n);

    // Cấp phát động bộ nhớ cho mảng
    mangSoNguyen = (int *)malloc(n * sizeof(int));

    // Kiểm tra cấp phát bộ nhớ thành công hay không
    if (mangSoNguyen == NULL) {
        printf("Loi cap phat bo nho!\n");
        return 1;
    }

    // Nhập các phần tử của mảng
    printf("Nhap cac phan tu cua mang:\n");
    for (int i = 0; i < n; i++) {
        printf("Phan tu thu %d: ", i + 1);
        scanf("%d", &mangSoNguyen[i]);
    }

    // Tìm phần tử lớn nhất và vị trí của nó
    int max = mangSoNguyen[0];
    int viTriMax = 0;
    for (int i = 1; i < n; i++) {
        if (mangSoNguyen[i] > max) {
            max = mangSoNguyen[i];
            viTriMax = i;
        }
    }

    // Tìm phần tử bé nhất và vị trí của nó
    int min = mangSoNguyen[0];
    int viTriMin = 0;
    for (int i = 1; i < n; i++) {
        if (mangSoNguyen[i] < min) {
            min = mangSoNguyen[i];
            viTriMin = i;
        }
    }

    // In kết quả
    printf("\n--- KET QUA ---\n");
    printf("Phan tu lon nhat trong mang la: %d tai vi tri %d (chi so %d)\n", max, viTriMax + 1, viTriMax);
    printf("Phan tu be nhat trong mang la: %d tai vi tri %d (chi so %d)\n", min, viTriMin + 1, viTriMin);

    // Giải phóng bộ nhớ
    free(mangSoNguyen);

    return 0;
}
