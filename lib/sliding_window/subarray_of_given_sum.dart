void main() {
  List<int> a = [1, 2, 3, 7, 5];
  int n = a.length;
  int s = 12;
  for (int i = 0; i < n; i++) {
    List<int> tA = [];
    int sum = 0;
    for (int j = i; j < n; j++) {
      if (sum > s || sum == s) {
        break;
      } else {
        sum += a[j];
        tA.add(a[j]);
      }
    }
    if (s == sum) {
      print(tA);
    }
  }
}
