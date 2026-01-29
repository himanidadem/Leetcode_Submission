class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        d={}
        for ele in nums:
                d[ele]=d.get(ele,0)+1
        return sorted(d,key=d.get,reverse=True)[:k]

        