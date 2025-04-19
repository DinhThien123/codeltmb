import 'package:flutter/material.dart';

class MyButton_3 extends StatelessWidget {
  const MyButton_3({super.key});

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
            // khóa nút nhấn
            ElevatedButton(
              onPressed: null, // khóa lại
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

            SizedBox(height: 50),
            // khóa nút nhấn
            ElevatedButton(
                onPressed: (){print("Pressed");},
                onLongPress: (){print("Long Pressed");},
                child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
            ),
            InkWell(
              onTap: (){
                print("InWell được nhấn");
              },
              onDoubleTap: (){
                print("InWell được nhấn 2 lần liên tiếp");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: Text("Button tùy chỉnh với InWell"),
              ),
            ),

            SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              label: Text("Yêu thích"),
            ),
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
