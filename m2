#include <stdio.h>

int main() {
    // Giả sử mảng đã được khai báo và có giá trị (ví dụ từ Bài 1)
    int mangSoNguyen[] = {10, 5, 20, 15, 25, 1, 8, 12, 3, 18};
    int kichThuocMang = sizeof(mangSoNguyen) / sizeof(int);

    // In mảng theo chiều đảo ngược
    printf("Mang theo chieu dao nguoc la: ");
    for (int i = kichThuocMang - 1; i >= 0; i--) {
        printf("%d ", mangSoNguyen[i]);
    }
    printf("\n");

    return 0;
}
