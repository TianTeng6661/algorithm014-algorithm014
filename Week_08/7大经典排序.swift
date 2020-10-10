import UIKit

//冒泡排序
func bubbleSort(arr:inout [Int]){
    let count = arr.count
    for i in 0 ..< count {
        for j in 0 ..< (count - i - 1){
            if(arr[j] > arr[j+1]){
                let tem = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = tem
            }
        }
    }
}

//选择排序
func selectionSort(arr:inout [Int]){
    let count = arr.count
    var minIndex :Int
    for i in 0 ..< count - 1 {
        minIndex = i
        for j in (i + 1) ..< count {
            if(arr[j] < arr[minIndex]){ //寻找最小的索引
                minIndex = j  //将最小的索引保存
            }
        }
        let temp = arr[i]
        arr[i] = arr[minIndex]
        arr[minIndex] = temp
    }
}

//插入排序
func insertionSort(arr:inout [Int]){
    let count = arr.count
    var preIndex,current :Int
    for i in 1 ..< count {
        preIndex = i - 1
        current = arr[i]
        while (preIndex >= 0 && arr[preIndex] > current) {
            arr[preIndex + 1] = arr[preIndex]
            preIndex -= 1
        }
        arr[preIndex + 1] = current
    }
}

//希尔排序
func shellSort(arr:inout [Int]){
    
    let count = arr.count
    var temp :Int
    let step = 3 //步长
    var gap = 1
    while (gap < count/step) {
        gap = gap * step + 1
    }
    
    while gap > 0 {
        for i in gap ..< count {
            temp = arr[i]
            var j = i - gap
            while (j >= 0 && arr[j] > temp) {
                arr[j + gap] = arr[j]
                j -= gap
            }
            arr[j + gap] = temp
            
        }
        gap = gap/step
    }
       
}

//归并排序
func mergeSort(arr: [Int]) ->[Int]{
    if(arr.count < 2){
        return arr
    }
    let middle = arr.count / 2 //中间索引
    let leftArr =  mergeSort(arr: Array(arr[0...middle]))
    let rightArr = mergeSort(arr: Array(arr[middle...(arr.count - 1)]))
    return merge(leftArr: leftArr, rightArr: rightArr)
}

func merge(leftArr: [Int], rightArr: [Int]) ->[Int]{
    //需要两个索引来跟踪两个数组的进度
    var leftIndex = 0
    var rightIndex = 0
    //合并后的数组
    var result = [Int]()
    //while循环将比较左侧和右侧的元素，并添加到result，同时确保结果保持有序
    while (leftIndex < leftArr.count && rightIndex < rightArr.count) {
        if(leftArr[leftIndex] < rightArr[rightIndex]){
            result.append(leftArr[leftIndex])
            leftIndex += 1
        }else if(leftArr[leftIndex] > rightArr[rightIndex]){
            result.append(rightArr[rightIndex])
            rightIndex += 1
        }else{
            result.append(leftArr[leftIndex])
            leftIndex += 1
            result.append(rightArr[rightIndex])
            rightIndex += 1
        }
    }
    //如果前一个while循环完成，意味着left/right中的一个内容已经完全合并到orderpile中，不需要再比较，只需要依次添加剩下的数组的剩余元素
    while (leftIndex < leftArr.count ) {
        result.append(leftArr[leftIndex])
        leftIndex += 1
    }
    while (rightIndex < rightArr.count) {
        result.append(rightArr[rightIndex])
        rightIndex += 1
    }
    return result
}

//经典快速排序
func quickSort(arr:inout [Int], low:Int, high:Int){
    if(low > high){
        return
    }
    let pivot = Partition(arr: &arr, low: low, high: high)
    quickSort(arr: &arr, low: low, high: (pivot - 1))
    quickSort(arr: &arr, low: (pivot + 1), high: high)
    
}
func Partition(arr:inout [Int], low:Int,high:Int) -> Int{
    let root = arr[high]
    var index = low
    for i in low ... high {
        if(arr[i] < root){
            if(i != index){
                arr.swapAt(i, index)
            }
            index += 1
        }
    }
    if( high != index){
        arr.swapAt(high, index)
    }
    return index
}
   
/*
//快速排序(需要额外空间)
func quickSort(arr: [Int]) -> [Int]{
    if(arr.count <= 1){
        return arr
    }
    var left = [Int]()
    var right = [Int]()
    let pivot:Int = arr.last!
    for index in 0 ..< arr.count - 1 {
        if(arr[index] < pivot){
            left.append(arr[index])
        }else{
            right.append(arr[index])
        }
    }
    var result = quickSort(arr: left)
    result.append(pivot)
    let rightResult = quickSort(arr: right)
    result.append(contentsOf: rightResult)
    return result
}
*/

//堆排序
func HeapSort(arr:inout Array<Int>) {
    //1.构建大顶堆
    for i in (0...(arr.count/2-1)).reversed(){
        //从第一个非叶子结点从下至上，从右至左调整结构
        adjustHeap(arr: &arr, i: i, length: arr.count)
    }
    
    //2.调整堆结构+交换堆顶元素与末尾元素
    for j in  (1...(arr.count-1)).reversed(){
        arr.swapAt(0, j)//将堆顶元素与末尾元素进行交换
        adjustHeap(arr: &arr, i: 0, length: j)//重新对堆进行调整
    }
}

/**
 * 调整大顶堆（仅是调整过程，建立在大顶堆已构建的基础上）
 */
func adjustHeap(arr:inout Array<Int>,i:Int,length:Int){
    var i = i;
    let temp = arr[i];//先取出当前元素i
    var k=2*i+1
    while k<length {//从i结点的左子结点开始，也就是2i+1处开始
        if(k+1<length && arr[k]<arr[k+1]){//如果左子结点小于右子结点，k指向右子结点
            k+=1;
        }
        if(arr[k] > temp){//如果子节点大于父节点，将子节点值赋给父节点（不用进行交换）
            arr[i] = arr[k];
            i = k;
        }else{
            break;
        }
        k=k*2+1
    }
    arr[i] = temp;//将temp值放到最终的位置
}


var arr = [2,1,70,90,76,49,21,0,-1]
print((1...(arr.count-1)).reversed())
HeapSort(arr: &arr)
print(arr)
















