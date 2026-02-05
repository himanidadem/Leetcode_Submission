class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:
        RowList=[set() for _ in range(9)]
        ColList=[set() for _ in range(9)]
        BoxList=[set() for _ in range(9)]
        for i in range(9):
            for j in range(9):
                num=board[i][j]
                #ignore '.'
                if num=='.':
                    continue
                #find the box number 
                box_number=(i//3)*3+(j//3)
        
                if num in RowList[i] or num in ColList[j] or num in BoxList[box_number]:
                    return False
                
                #add the num in the corresponding list
                RowList[i].add(num)
                ColList[j].add(num)
                BoxList[box_number].add(num)
        return True
                


                