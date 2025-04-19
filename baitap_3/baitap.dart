// Bài tập: Cấu trúc dữ liệu trong lập trình Dart
void main()
{
  //Bài 1: List
  // 1.1: Có bao nhiêu cách để khai báo một List trong đoạn code? Liệt kê và giải thích từng cách.
    List<String> list1 = ['1', '2', '3']; // khai báo trực tiếp
    var list2 = [1, 2, 3]; // Khai báo kiểu var
    List<String> list3 = []; // Khai báo rỗng
    var list4 = List<int>.filled(3,2); //List có kthuoc cố định [0,0,0];
    print('list1: $list1, list2: $list2, list3: $list3, list4: $list4');

    // 1.2 Cho List ['A', 'B', 'C']. Viết code để:
    
    //Thêm phần tử 'D' vào cuối List
    var listABC = ['A','B','C'];
    listABC.add('D'); // thêm phần tử D
    print(listABC);

    // Chèn phần tử 'X' vào vị trí thứ 1
    listABC.insert(1, 'X'); // chèn phần tử X vào vtri 1
    print(listABC);

    //Xóa phần tử 'B'
    listABC.removeAt(2); // xóa phần tử B
    print(listABC);

    // In ra độ dài của List
    print(listABC.length);

    // 1.3 Đoạn code sau sẽ cho kết quả gì?
  var list  = [1, 2, 3, 4, 5];
  list.removeWhere((e) => e % 2 == 0);
  print(list);
    // Giải thích: xóa tất cả các hàm tử thỏa mãn diều kiện e. Tức là các số chẵn (2,4)

    // 1.4 Giải thích sự khác nhau giữa:
    // remove() và removeAt()
   /* remove(value): Xóa phần tử đầu tiên có giá trị khớp với value.
      removeAt(index): Xóa phần tử tại vị trí index.
      Ví dụ: list.remove('A') xóa 'A', còn list.removeAt(0) xóa phần tử đầu tiên. */

    // add() và insert()
    /*add(value): Thêm phần tử vào cuối List.
      insert(index, value): Chèn phần tử vào vị trí index.
      Ví dụ: list.add('D') thêm 'D' vào cuối, còn list.insert(1, 'X') chèn 'X' vào vị trí 1. */

    // addAll() và insertAll()
    /* addAll(iterable): Thêm toàn bộ phần tử từ một tập hợp (như List) vào cuối List.
       insertAll(index, iterable): Chèn toàn bộ phần tử từ tập hợp vào vị trí index.
       Ví dụ: list.addAll(['E', 'F']) thêm vào cuối, còn list.insertAll(0, ['X', 'Y']) chèn vào đầu. */

  // Bài 2: Set
    //2.1: Set khác List ở những điểm nào? Nêu ít nhất 3 điểm khác biệt.
  /* - Set là tập hợp các phần tử ko trùng lặp
     - KHông có thứ tự xác định
     - Mỗi phần tử chỉ xuất hiện một lần */  

    //2.2: Cho hai set
    var set1 = {1, 2, 3};
    var set2 = {3, 4, 5};
    // Union: Giao
    var union = set1.union(set2);
    print(union); 

    // Intersection: Hợp
    var intersection = set1.intersection(set2);
    print(intersection);

    // Difference(hiệu) của set1 và set2
    var difference = set1.difference(set2);
    print(difference);
    var difference1 = set2.difference(set1);
    print(difference1);

  //2.3 Đoạn code sau cho kết quả gì:
  var mySet = Set.from([1, 2, 2, 3, 3, 4]); //Tạo một Set từ List, loại bỏ các phần tử trùng lặp(2,3)
  print(mySet.length); // Kết quả trả ra {1,2,3,4} => Độ dài là 4

  // Bài 3: Map
    //3.1: Viết code để thực hiện các y/c sau:
    /* Thêm email: 'nam@gmail.com'
       Cập nhật age thành 21
       Xóa trường isStudent
       Kiểm tra xem Map có chứa key 'phone' không */
   Map<String, dynamic> user = {
      'name' : 'Nam',
      'age' : '20',
      'isStudent' : true
   };

   user['email'] = 'nam@gmail.com';
   print(user); // kết quả: {name: Nam, age: 20, isStudent: true, email: nam@gmail.com}

   user['age'] = 21;
   print(user); // Kết quả: {name: Nam, age: 21, isStudent: true, email: nam@gmail.com}

   user.remove('isStudent');
   print(user); // Kết quả: {name: Nam, age: 21, email: nam@gmail.com}

    //Kiểm tra key 'phone'
   print(user.containsKey('phone')); // Kết quả: false

  //3.2 So sánh hai cách truy cập giá trị trong Map:

     /* user['phone'] 
     GT: Trả về null nếu key không tồn tại.
          Không an toàn nếu không kiểm tra trước.
     -------------------     
     user['phone'] ?? 'Không có số điện thoại' 
     GT: Dùng toán tử ?? (null), trả về giá trị mặc định nếu key không tồn tại.
          An toàn hơn, tránh lỗi khi key không có.
     */
    
    //3.4 Viết một hàm nhận vào một Map và in ra tất cả các cặp key-value, mỗi cặp trên một dòng.
          void printMap(Map<String, dynamic> myMap) {
        myMap.forEach((key, value) {
          print('$key: $value');
        });
      }

      void mainMap() {
        Map<String, dynamic> user = {'name': 'Nam', 'age': 21, 'email': 'nam@gmail.com'};
        printMap(user);
      }
   // Bài 4: Runes
    //4.1: được sử dụng để làm gì? Cho ví dụ cụ thể. 
    /*
    Runes đại diện cho các điểm mã Unicode (code points) của chuỗi, thường dùng để xử lý các ký tự đặc biệt như emoji hoặc ký tự không thuộc bảng mã ASCII.
    Ví dụ: Chuỗi "Hello 😀" có ký tự emoji, Runes giúp phân tích từng điểm mã thay vì chỉ xem như chuỗi ký tự thông thường.
    */
    //4.2: Viết 1 đoạn code chứa mặt cười
        void mainRunes() {
      // Tạo Runes chứa emoji cười 😀
      var runes = Runes('\u{1F600}');

      // Chuyển thành String
      var emojiString = String.fromCharCodes(runes);
      print(emojiString); // 😀

      // In số lượng điểm mã
      print(runes.length); // 1
    }
}