  void main(){
    bool isNumber = false;
    bool laSoChan = true;
    int x = 100;

    if(x is! int){
      print("Đây không là một con số");
    }else if (x%2==0){
      print("Đây là số chẵn");
    }else{
      print("Đây là số lẻ");
    }

    int thang=5;
    switch (thang){
      case 2:
      print("Thang $thang co 30 ngay ");
      break;
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
      print("Thang $thang co 31 ngay");
      break;
      case 4:
      case 6:
      case 9:
      case 11:
      print("Thang $thang co 30 ngay");
      break;
      default:
    }
  }