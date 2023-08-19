void main() {
  List<int> a = [1,2,10];
  List<int> data = subArraySum(a, a.length, 10);
  print(data);
}

List<int> subArraySum(List<int> a, int n, int s) {
  int start = 0;
  int current = 0;
  List<int> res = [];
  for (int i = 0; i < n; i++) {

    if(s == a[i]){
      res.add(i + 1);
      res.add(i + 1);
      break;
    }else{
      if(s == 0){
        res.add(-1);
        break;
      }
      current += a[i];
      while(s < current && start < n){
        current -= a[start];
        start++;
      }
      if(s == current){
        res.addAll([start+1,i+1]);
        break;
      }
    }
  }
  if(res.isEmpty){
    res.add(-1);
  }
  return res;
}
