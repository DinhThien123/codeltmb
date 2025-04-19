/*
Records là một kiểu dữ liệu tổng hợp (composite type) đc giới thiệu trong dart 3.0
cho phép nhóm nhiều giá trị có kiểu khác nhau thành một đơn vị duy nhất
Records là immutable - nghĩa là không thể thay đổi sau khi đc tạo
*/
void main(){
  var r = ('first', a:2, 5, 10.5); // đây là record

  // Định nghĩa record có 2 giá trị 
  var point = (123,456);

  // Định nghĩa person
  var person = (name:'Alice', age: 25, 5); // số 5 là vị trí 

  // Truy cập giá trị trong record
  // Dùng chỉ số

  print(point.$1); // lấy số 123
  print(point.$2); // lấy số 456
  print(person.$1);

  // Dùng tên của biến giá trị của record
  print(person.name);
  print(person.age);
}