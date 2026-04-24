class Solution:
    def sortColors(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """

        red=0
        white=0
        blue=0
        for ele in nums:
            if ele==0:
                red+=1
            elif ele==1:
                white+=1
            else:
                blue+=1
        i=0
        for _ in range(red):
            nums[i]=0
            i+=1
        for _ in range(white):
            nums[i]=1
            i+=1
        for _ in range(blue):
            nums[i]=2
            i+=1
        