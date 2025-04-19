import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

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

      body: Center(child: Column(
        children: [
          // Tạo khoảng cách
          const SizedBox(height: 50,),
          // Text cơ bản
          const Text("Vu Dinh Thien"),
          const SizedBox(height: 20,),

          const Text(
            "Xin chao tat ca cac ban",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                      fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  letterSpacing: 1.5,
                ),
          ),
          const SizedBox(height: 20,),

          const Text(
              "Xin chao tat ca cac ban agw diaj osidhaiu whda kjnsdia owi doaishcoaj hsodua howgdausjcoaue jabsod ubabd iuvd a iubs jd",
              textAlign: TextAlign.center,
              maxLines: 2, // số dòng tối đa
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1.5,
              ),
          ),
        ]
      )),
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
