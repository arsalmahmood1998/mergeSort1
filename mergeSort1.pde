int [] arrayToBeSorted={1, 4, 6, 8, 0, 9};
void setup() {
  int [] result =mergeSort(arrayToBeSorted,0,arrayToBeSorted.length-1);
  println(result);
  //merge(arrayToBeSorted, 0, 3, arrayToBeSorted.length-1);
}
void draw() {
}
int [] merge(int [] array, int x, int y, int z) {
  int firstHalf=y-x+1;
  int secondHalf=z-y;
  int [] firstArray= new int[firstHalf];
  int [] secondArray=new int[secondHalf];
    int [] sortedArray =new int[firstHalf+secondHalf];
  for (int i=0; i<firstHalf; i++) {
    firstArray[i]=array[x+i];
    
  }
  println(firstArray) ;
  for (int j=0; j<secondHalf; j++) {
    secondArray[j]=array[y+1+j];
    
  }
  int i=0;
  int j=0;
  int k=0;
  while (i<firstHalf && j<secondHalf) {
    if (firstArray[i]<=secondArray[j]) {
      sortedArray[k]=firstArray[i];
      i++;
      k++;
    } else {
      sortedArray[k]=secondArray[j];
      j++;
      k++;
    }
  }
  i=0;
  k=0;
  j=0;
  while (i<firstHalf) {
    sortedArray[k]=firstArray[i];
    i++;
    k++;
  }
  while (j<secondHalf) {
    sortedArray[k]=secondArray[j];
    j++;
    k++;
  }
return sortedArray;
}
int [] mergeSort(int [] array, int x, int y) {
  int [] result=new int [y];
  if (x<y) {
    int m=x+(y-x)/2;
    mergeSort(array, x, m);
    mergeSort(array, m+1, y);
    result= merge(array, x, m, y);
  }
  return result;
}
