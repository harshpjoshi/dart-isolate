import 'dart:core';
import 'dart:core';

void main(){
  List<int> a = [7,28,3,1,7,2,20,5,3,9];
  print(getTwoLargeNumber(a));
  print("Is Sorted => ${isListSorted(a)}");
}

(String, String) getTwoLargeNumber(List<int> a){
  int large = 0;
  int large2 = 0;
  for(int i=1;i<a.length - 1;i++){
    if(a[i]>a[i+1] && a[i] > large){
      large2 = large;
      large = a[i];
    }else if(a[i] != large && a[i] > large2){
      large2 = a[i];
    }
  }
  return ("First Largest=> $large","Second Largest=> $large2");
}

bool isListSorted(List<int> a){
  for(int i=1;i<a.length - 1;i++){
    if(a[i]>a[i+1]){
      return false;
    }
  }
  return true;
}