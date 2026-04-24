class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        #feels like sliding window TC is O(n2) and O(1) SC
        # for i in range(len(nums)):
        #     for j in range(i+1,len(nums)):
        #         if nums[i]+nums[j]==target:
        #             return [i,j]
        
        #the problem with the above approach is that in sliding window we are visiting the same ele again and again. Instead lets try to remember where each ele is and then query by O(1) TC

        #instead of building the dictionary once and quering later, do both in the same loop
        d={}
        for i in range(len(nums)):
            component=target-nums[i]
            if component in d:
                return [d[component],i]
            d[nums[i]]=i
        

