int [] arrayToBeSorted={1, 4, 6, 8, 0, 9};
void setup() {
  int [] result =mergeSort(arrayToBeSorted, 0, arrayToBeSorted.length-1);
  println(result);
}
void draw() {
}
int [] merge(int [] array, int startPoint, int midPoint, int endPoint) {
  int firstHalf=midPoint-startPoint+1;
  int secondHalf=endPoint-midPoint;
  int [] firstArray= new int[firstHalf];
  int [] secondArray=new int[secondHalf];
  int [] sortedArray =new int[firstHalf+secondHalf];
  for (int i=0; i<firstHalf; i++) {
    firstArray[i]=array[startPoint+i+1];
    
  }
  
  for (int j=0; j<secondHalf; j++) {
    secondArray[j]=array[midPoint+j];
    
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
int [] mergeSort(int [] array, int startPoint, int endpoint) {
  int [] result=new int [endpoint];
  if (startPoint<endpoint) {
    int midPoint=startPoint+(startPoint-endpoint)/2;
    mergeSort(array, startPoint, midPoint);
    mergeSort(array, midPoint+1, endpoint);
    result= merge(array, startPoint, midPoint, endpoint);
  }
  return result;
}
