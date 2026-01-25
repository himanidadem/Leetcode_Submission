class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        dictionary={}
        for num in nums:
            if num not in dictionary:
                dictionary[num]=0
            dictionary[num]+=1
        
        return max(dictionary,key=dictionary.get)
