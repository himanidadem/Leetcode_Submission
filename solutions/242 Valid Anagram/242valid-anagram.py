class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        #create an anagram
        def anagram(s):
            d={}
            for i in range(len(s)):
                d[s[i]]=d.get(s[i],0)+1
            return d
        return anagram(s)==anagram(t)
        