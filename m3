#include <stdio.h>
#include <stdlib.h> // Cho hàm malloc và free

int main() {
    int n;
    int *mangSoNguyen;
    long long tongCacSo = 0;
    long long tongSoDuong = 0;
    long long tongSoAm = 0;
    int demSoDuong = 0;
    int demSoAm = 0;

    // Nhập kích thước của mảng
    printf("Nhap so luong phan tu cua mang: ");
    scanf("%d", &n);

    // Cấp phát động bộ nhớ cho mảng
    mangSoNguyen = (int *)malloc(n * sizeof(int));

    // Kiểm tra cấp phát bộ nhớ thành công hay không
    if (mangSoNguyen == NULL) {
        printf("Loi cap phat bo nho!\n");
        return 1; // Thoát chương trình với mã lỗi
    }

    // Nhập các phần tử của mảng
    printf("Nhap cac phan tu cua mang:\n");
    for (int i = 0; i < n; i++) {
        printf("Phan tu thu %d: ", i + 1);
        scanf("%d", &mangSoNguyen[i]);

        // Tính tổng tất cả các số
        tongCacSo += mangSoNguyen[i];

        // Tính tổng và đếm số dương
        if (mangSoNguyen[i] > 0) {
            tongSoDuong += mangSoNguyen[i];
            demSoDuong++;
        }

        // Tính tổng và đếm số âm
        else if (mangSoNguyen[i] < 0) {
            tongSoAm += mangSoNguyen[i];
            demSoAm++;
        }
    }

    // Tính trung bình cộng
    double trungBinhCongCacSo = (double)tongCacSo / n;
    double trungBinhCongSoDuong = (demSoDuong > 0) ? (double)tongSoDuong / demSoDuong : 0;
    double trungBinhCongSoAm = (demSoAm > 0) ? (double)tongSoAm / demSoAm : 0;

    // In kết quả
    printf("\n--- KET QUA ---\n");
    printf("Tong tat ca cac so trong mang: %lld\n", tongCacSo);
    printf("Tong cac so nguyen duong: %lld\n", tongSoDuong);
    printf("Tong cac so nguyen am: %lld\n", tongSoAm);

    printf("Trung binh cong cua tat ca cac so: %.2lf\n", trungBinhCongCacSo);
    printf("Trung binh cong cua cac so nguyen duong: %.2lf\n", trungBinhCongSoDuong);
    printf("Trung binh cong cua cac so nguyen am: %.2lf\n", trungBinhCongSoAm);

    // Giải phóng bộ nhớ đã cấp phát
    free(mangSoNguyen);

    return 0;
}
