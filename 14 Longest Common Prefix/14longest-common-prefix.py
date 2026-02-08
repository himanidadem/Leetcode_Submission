class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        #sort the list and compare the first and the last strings which are the most dissimilar
        #sort
        strs.sort()
        first=strs[0]
        last=strs[len(strs)-1]
        target=''
        for i in range(len(first)):
            if first[i]!=last[i] or i>=len(last):
                return target
            target+=first[i]
        return target      


        