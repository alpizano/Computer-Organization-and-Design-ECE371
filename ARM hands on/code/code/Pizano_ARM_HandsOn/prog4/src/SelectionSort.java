public class SelectionSort {
    public static void selectionSort(int[] arr){
        for (int i = 0; i < 4; i++)
        {
            int iMin = i;

            for (int j = i + 1; j < 5; j++)
            {
                if (arr[j] < arr[iMin])
                {
                    iMin = j; //searching for lowest index
                }
            }

            int temp = arr[iMin];
            arr[iMin] = arr[i];
            arr[i] = temp;
        }
    }

    public static void main(String a[]){
        int[] arr1 = {3,2,7,0,1};
        int sizeN = arr1.length;
        int sizeN1 = arr1.length-1;
        System.out.println("The n size of array is: " + sizeN);
        System.out.println("The n-1 size of array is: " + sizeN1);


        System.out.println("Before Selection Sort");
        for(int i:arr1){
            System.out.print(i+" ");
        }
        System.out.println();

        selectionSort(arr1);//sorting array using selection sort

        System.out.println("After Selection Sort");
        for(int i:arr1){
            System.out.print(i+" ");
        }
    }
}