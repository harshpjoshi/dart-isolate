void main() {
  List<int> a = [0, 1, 2, 0, 4, 3, 0, 5, 0];

  shiftAllZerosToLeft(a);
  print(a);
  shiftAllZerosToRight(a);

  print(a);
}

void shiftAllZerosToRight(List<int> a) {
  int j = 0;
  for (int i = 0; i < a.length; i++) {
    if (a[i] != 0) {
      int temp = a[i];
      a[i] = a[j];
      a[j] = temp;
      j++;
    }
  }
}

void shiftAllZerosToLeft(List<int> a){
  int j = a.length - 1;
  for (int i = a.length - 1; i > 0; i--) {
    if(a[i] != 0){
      int temp = a[i];
      a[i] = a[j];
      a[j] = temp;
      j--;
    }
  }
}