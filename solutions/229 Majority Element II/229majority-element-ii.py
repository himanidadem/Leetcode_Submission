class Solution:
    def majorityElement(self, nums: List[int]) -> List[int]:
        d={}
        for i in range(len(nums)):
            d[nums[i]]=d.get(nums[i],0)+1
        print(d)
        return [k for k,v in d.items() if v>(len(nums)/3)]
                
        