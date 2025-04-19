import 'package:flutter/material.dart';

class FormBasicDemo extends StatefulWidget{
  State<StatefulWidget> createState() => _FormBasicDemoState();
}

class _FormBasicDemoState extends State<FormBasicDemo>{
  // Sử dung5 Global key để truy cập form
  final _formkey = GlobalKey<FormState>();
  String? _name;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Form cơ bản'),
      ),

      body: Padding(
          padding: EdgeInsets.all(16.0),
        // Form là widget chứa và quản lý các trường nhập liệu
        // key: đc sử dụng để truy cập vào trạng thái của Form
        // Phương thức validate() kiểm tra tính hợp lệ của tất cả trường
        // Phương thức save() gọi hàm onSaved của mỗi trường
        // Phương thức reset() đặt lại giá trị của tất cả các trường
        child: Form(
          key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Họ và tên",
                    hintText: "Nhập họ và tên của bạn",
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value){
                    _name = value;
                  },
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    ElevatedButton(onPressed: (){
                      if(_formkey.currentState!.validate()){
                        _formkey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Xin chào $_name"))
                        );
                      }
                    }, child: Text("Submit")),
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _formkey.currentState!.reset();
                      setState(() {
                        _name = null;
                      });
                    }, child: Text("Reset")),
                  ],
                )
              ],
            )),
      ),
    );
  }
}