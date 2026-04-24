class NumMatrix:

    def __init__(self, matrix: List[List[int]]):
        if not matrix or not matrix[0]:
            self.prefix=[[0]]
            return
        row,col=len(matrix),len(matrix[0])
        #make an empty prefix array
        self.prefix=[[0]*(col+1) for _ in range(row+1)]
        #build the prefix array
        for i in range(1,row+1):
            for j in range(1,col+1):
                self.prefix[i][j]=(
                    matrix[i-1][j-1]+
                    self.prefix[i-1][j]+
                    self.prefix[i][j-1]-
                    self.prefix[i-1][j-1]
                )
   

    def sumRegion(self, row1: int, col1: int, row2: int, col2: int) -> int:
        #To make the sumRegion function O(1), the prefix sum matrix is computed in the initialization part
        return (self.prefix[row2+1][col2+1]-
        self.prefix[row1][col2+1]-
        self.prefix[row2+1][col1]+
        self.prefix[row1][col1])



        #Takes O(n2) TC
        # sum=0
        # for row in range(row1,row2+1):
        #     for col in range(col1,col2+1):
        #         sum=sum+self.matrix[row][col]
        # return sum

        


        


# Your NumMatrix object will be instantiated and called as such:
# obj = NumMatrix(matrix)
# param_1 = obj.sumRegion(row1,col1,row2,col2)