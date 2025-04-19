/*
Câu 1: Viết một đoạn mã Dart để khai báo các kiểu dữ liệu khác nhau như số nguyên,
số thực, chuỗi ký tự và Boolean. Sau đó, in giá trị của các biến này ra console để xem
kết quả.

Câu 2: Viết một hàm trong Dart tên là calculateSum nhận vào hai tham số số nguyên
và trả về tổng của chúng. Gọi hàm này trong chương trình chính và in kết quả ra màn
hình.


*/

// Khai báo hàm calculateSum nhận 2 tham số kiểu int và trả về tổng kiểu int
int calculateSum(int a, int b) {
  return a + b;
}

void main() {
  // Câu 1: Khai báo các kiểu dữ liệu khác nhau
  int age = 20;                // Số nguyên
  double height = 1.7;        // Số thực
  String name = "Vu Dinh Thien"; // Chuỗi
  bool isStudent = true;       // Boolean
  
  // In các giá trị của biến
  print("--- Câu 1 ---");
  print("Tuổi: $age");
  print("Chiều cao: $height mét");
  print("Tên: $name");
  print("Là học sinh: $isStudent");
  
  // Câu 2: Gọi hàm calculateSum
  print("\n--- Câu 2 ---");
  int result = calculateSum(5, 3);
  print("Tổng của 5 và 3 là: $result");
  
  // Thêm một ví dụ khác
  int anotherResult = calculateSum(10, 20);
  print("Tổng của 10 và 20 là: $anotherResult");
}