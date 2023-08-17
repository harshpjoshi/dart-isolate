void main(){
  List<int> a = [1, 2, 3, 4, 5, 6, 7];

  print("Found at ${searchNumber(a, 9)}");
}

int searchNumber(List<int> a,int search){
  int low = 0;
  int high = a.length - 1;
  while(low <= high){
    int mid = (low + high) ~/ 2;
    if(a[mid] == search){
      return mid;
    }else if(a[mid] < search){
      low = mid + 1;
    }else if(a[mid] > search){
      high = mid - 1;
    }else{
      return -1;
    }
  }
  return -1;
}