void main() {
  List<int> data = [6,1,2,8,3,4,7,10,5];
  int c = missingNumber(data, data.length);
  print(c);
}

int missingNumber(List<int> a, int n) {
  int totalCount = 0;
  int calculatedCount = 0;
  for (int i = 1; i < n+2; i++) {
    totalCount += i;
  }
  for (int i = 0; i < n ; i++) {
    calculatedCount += a[i];
  }
  return totalCount-calculatedCount;
}
