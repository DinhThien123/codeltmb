import 'package:flutter/material.dart';

class MyButton_2 extends StatelessWidget {
  const MyButton_2({super.key});

  @override
  Widget build(BuildContext context) {
    // tra ve Scarffold - widget cung cap bo cuc Material Design
    // Man Hinh
    return Scaffold(
      // tieu de cua ung dung
      appBar: AppBar(
        // tiêu đề
        title: Text("App 02"),
        // màu nền
        backgroundColor: Colors.blue,
        // độ nặng, bóng của appbar
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print("b1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("b2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("b3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            // Elevated Button là một button nổi với hiệu ứng đổ bóng
            // THường được sử dụng cho các hành động chính trong ứng dụng.
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                // màu nền
                backgroundColor: Colors.green,
                // màu của các nội dung bên trong
                foregroundColor: Colors.white,
                // dạng hình của nút nhấn
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                // padding
                padding: EdgeInsets.symmetric(
                  // chiều ngang
                  horizontal: 20,
                  // chiều dọc
                  vertical: 15,
                ),
                // elevate
                elevation: 15,
              ),

            ),

            SizedBox(height: 20,),
            // OutlinedButton là button có viền bao quanh, không có màu nền
            // phù hợp cho các thay thế.
            OutlinedButton(
                onPressed: (){print("OutlinedButton");},
                child: Text("OutlinedButton", style: TextStyle(fontSize: 24),),

              style: OutlinedButton.styleFrom(
                // màu nền
                backgroundColor: Colors.pink,
                // màu của các nội dung bên trong
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20,),
            // FloatingActionButton là button hình tròn, nổi trên giao diện
            // thường dùng cho hành động chính của màn hình.
            FloatingActionButton(
              onPressed: (){print("FloatingActionButton");},
              child: Icon(Icons.add),

              backgroundColor: Colors.red,
              highlightElevation: 5,
            ),

            // InkWell không phải là Button nhưng nó cho phép tạo hiệu ứng
            // gợn sóng(ripple effect khi nhấn vào bất kì widget nào.
            InkWell(
              onTap: (){
                print("InWell được nhấn");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: Text("Button tùy chỉnh với InWell"),
              ),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed");
        },
        child: const Icon(Icons.add_ic_call),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
        ],
      ),
    );
  }
}
