class Solution:  
    def sortArray(self, nums: List[int]) -> List[int]:

        # MERGE SORT APPROACH
        #TC is O(nlogn) and SC is O(n)

        def mergesort(nums):
            if len(nums)<=1:
                return nums
            #divide
            mid=len(nums)//2
            left=mergesort(nums[:mid])
            right=mergesort(nums[mid:])
       
            return merge(left,right)

        def merge(left,right):
            i=j=0
            result=[]
            #conquer
            while i<len(left) and j<len(right):
                if left[i]<right[j]:
                    result.append(left[i])
                    i+=1
                else:
                    result.append(right[j])
                    j+=1

            result.extend(left[i:])
            result.extend(right[j:])
            return result

        return mergesort(nums)








        #QUICKSORT APPROACH but exceeds memory limit
        # if len(nums)<=1:
        #     return nums
        # pivot=nums[len(nums)//2]
        # left=[]
        # right=[]
        # middle=[]
        # for ele in nums:
        #     if ele<pivot:
        #         left.append(ele)
        #     elif ele>pivot:
        #         right.append(ele)
        #     else:
        #         middle.append(ele)
            
        # left=self.sortArray(left)
        # right=self.sortArray(right)

        # return [*left,*middle,*right]

        #INPLACE QUICKSORT APPROACH WITH TWO POINTER APPROACH
        #TC is O(n2) and SC is O(1)
        # def quicksort(nums,low,high):
        #     if low<high:
        #         pi=partition(nums,low,high)
        #         quicksort(nums,low,pi-1)
        #         quicksort(nums,pi+1,high)
        # def partition(nums,low,high):
        #     pivot=nums[high]
        #     i=low-1
        #     for j in range(low,high):
        #         if nums[j]<=pivot:
        #             i+=1
        #             nums[i],nums[j]=nums[j],nums[i]
        #     nums[i+1],nums[high]=nums[high],nums[i+1]
        #     return i+1
        # quicksort(nums,0,len(nums)-1)
        # return nums

        








        #HEAP SORT




        
    

    
