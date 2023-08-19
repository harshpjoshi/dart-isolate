import 'dart:math';

void main() {
  List<int> a = [10, 2, 945, 4, 5, 6, 778, 8, 9];
  int k = 4;
  int current = 0;
  int res = 0;
  for (int i = 0; i < k; i++) {
    current = current + a[i];
  }
  res = current;
  print(res);
  for (int i = k; i < a.length; i++) {
    current = current + (a[i] - a[i-k]);
    res = min(current, res);
  }
  print(res);
}
