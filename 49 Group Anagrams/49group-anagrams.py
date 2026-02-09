class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        anagrams={}
        for ele in strs:
            key=''.join(sorted(ele))
            if key in anagrams:
                anagrams[key].append(ele)
            else:
                anagrams[key]=[ele]
        return list(anagrams.values())


        