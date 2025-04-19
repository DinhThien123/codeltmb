void main(){
  String str = 'Hello';
  Runes runes1 = str.runes;

  Runes runes2 = Runes('\u2665'); // ký tự trái tim

  Runes runes3 = Runes('\u{1F600}'); // Emoji mặt cười 
  print(runes3);
}