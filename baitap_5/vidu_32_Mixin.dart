mixin M {
  int? a;
  void showSomething(){
    print("Print message .... ");
  }
}

class B{
  String name = "class B";
  void displayInformation(){
    print("Information from B");
  }
}

class C extends B with M{
  @override
  void displayInformation(){
    showSomething();
    a = 100;
  }
}

void main(){
  var c = C;
}