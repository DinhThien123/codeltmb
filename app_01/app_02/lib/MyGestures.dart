import 'package:flutter/material.dart';

class MyGestures extends StatelessWidget {
  const MyGestures({super.key});

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
            SizedBox(height: 50,),
            // GestureDetector - bắt đc các si75 kiện
            GestureDetector(
              onTap: (){
                print("Nội dung được tap!");
              },
              onDoubleTap: (){
                print("Nội dung được tap 2 cái!");
              },
              onPanUpdate: (details){
                print("Kéo - di chuyển: ${details.delta}");
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text("Chạm vào tôi!"),),
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
