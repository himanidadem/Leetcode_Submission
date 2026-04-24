class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        #Below implementation is O(nlgn)
        if not nums:
            return 0
        if len(nums)==1:
            return 1
        nums=set(nums)
        nums=list(nums)
        nums.sort()
        max_count=1
        count=1
        for i in range(len(nums)-1):
            if nums[i+1]==nums[i]+1:
                count+=1
            else:
                max_count=max(count,max_count)
                count=1
        max_count=max(count,max_count)
        return max_count


        #The above implementation is O(nlgn) because of sorting
        #Solve the question without sorting the array
        if not nums:
            return 0
        nums=set(nums)
        max_count=0
        for ele in nums:
            curr_num=ele
            count=1
            if curr_num-1 not in nums: #it is the start
                while curr_num+1 in nums:
                    count+=1
                    curr_num+=1
                max_count=max(max_count,count)
        return max_count



        