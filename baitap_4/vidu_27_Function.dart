/*
Dart là một ngôn ngữ thuần hướng đối tượng, vì vậy ngay cả các hàm cũng là đối tượng
và có kiểu Function.
Điều này có nghĩa là các hàm có thể gán cho các biến hoặc truyền làm tham số cho các 
*/

/*
Hàm là một khối lệnh thực hiện một tác vụ gì đó, khối lệnh này đc dùng nhiều
lần nên gom chúng lại thành một hàm.
*/

// Viết đầy đủ
double tinhtong(var a, double b, double c){
  return a + b + c;
}

// Sử dụng cú pháp rút gọn "=>".
double tinhtong1(var a, double b, double c) => a+b+c;
// => expression là cách viết gọn của { return expression; }
/*
Lưu ý: Chỉ có biểu thức (expression) đứng đằng sau =>, Không áp dụng cho câu lệnh (statement).
Ví dụ: Ta không thể để if statement đằng sau => được. Tuy nhiên ta có thể sử dụng toán tử ba ngôi: condition ? expr1 : expr2
*/

// Hàm với tên của tham số 
// Khi gọi 1 hàm (function), ta có truyền giá trị thông qua tên biến paramName: Value,
String createFullName({String ho="Nguyen", String chulot="Vab", String ten="A"}){
 return ho+" "+ chulot+" "+ ten;
} 

double sum(double a, [double? b, double? c, double? d]){
  var result = a;
  result+= (b!=null)?b:0;
  result+= (c!=null)?c:0;
  result+= (d!=null)?d:0;
  return result;
}

// Hàm main() : khởi đầu ứng dụng 
void main(){
  print('Hello world');
  var x = tinhtong(1, 10, 100);
  print(x);

  var y = tinhtong1(1, 10, 100);
  print(y);

  var fn = createFullName(ho: "Vu",chulot:  "Dinh",ten:  "Thien");
  print(fn);

  var fn2 = createFullName(chulot:  "Dinh",ten:  "Thien",ho:  "Vu");
  print(fn2);

  var fn3 = createFullName(chulot:  "Dinh",ten:  "Thien");
  print(fn3);

  print(sum(10));
  print(sum(10, 1));
  print(sum(10, 1, 2));
  print(sum(10, 1, 2, 3));

  var ham = (var a, var b){
    return a+b;
  };
  var ham2 = (var a, var b)=>a+b;
  print(ham(1,2));
}