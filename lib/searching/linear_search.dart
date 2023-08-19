void main(){
  List<int> a = [1, 2, 3, 4, 5, 6, 7];

  print("Found at ${searchNumber(a, 5)}");
}

int searchNumber(List<int> a,int search){
  for(int i =0;i<a.length;i++){
    if(a[i]==search){
      return i;
    }
  }
  return -1;
}