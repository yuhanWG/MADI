\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  z + 0 x_s_a[0,2,up] + 0 x_s_a[0,2,down] + 0 x_s_a[0,2,left]
   + 0 x_s_a[0,2,right] + 0 x_s_a[1,3,up] + 0 x_s_a[1,3,down]
   + 0 x_s_a[1,3,left] + 0 x_s_a[1,3,right] + 0 x_s_a[3,0,up]
   + 0 x_s_a[3,0,down] + 0 x_s_a[3,0,left] + 0 x_s_a[3,0,right]
   + 0 x_s_a[3,3,up] + 0 x_s_a[3,3,down] + 0 x_s_a[3,3,left]
   + 0 x_s_a[3,3,right]
Subject To
 c0: z - x_s_a[1,1,down] - x_s_a[2,0,right] - x_s_a[2,2,left]
   - x_s_a[3,1,up] >= 0
 c1: z - 5 x_s_a[2,3,down] - 5 x_s_a[3,2,right] >= 0
 c2: z - 6 x_s_a[0,0,up] - 6 x_s_a[0,0,down] - 6 x_s_a[0,0,left]
   - 3 x_s_a[0,1,down] - 6 x_s_a[0,1,left] - 5 x_s_a[0,3,up]
   - 5 x_s_a[0,3,down] - 5 x_s_a[0,3,left] - 5 x_s_a[0,3,right]
   - 6 x_s_a[1,0,up] - 6 x_s_a[1,0,left] - 3 x_s_a[1,0,right]
   - 6 x_s_a[1,1,left] - 6 x_s_a[1,1,right] - 6 x_s_a[1,2,up]
   - 8 x_s_a[1,2,down] - 3 x_s_a[1,2,left] - 6 x_s_a[1,2,right]
   - 6 x_s_a[2,0,up] - 3 x_s_a[2,1,up] - 8 x_s_a[2,1,down]
   - 8 x_s_a[2,1,right] - 6 x_s_a[2,2,up] - 8 x_s_a[2,3,left]
   - 8 x_s_a[3,1,down] - 8 x_s_a[3,1,left] - 8 x_s_a[3,2,up]
   - 8 x_s_a[3,2,left] >= 0
 c3: z - x_s_a[0,0,right] - x_s_a[0,1,up] - x_s_a[0,1,right]
   - 3 x_s_a[1,0,down] - x_s_a[1,1,up] - 3 x_s_a[2,0,down]
   - 3 x_s_a[2,0,left] - 3 x_s_a[2,1,left] - 7 x_s_a[2,2,right]
   - 7 x_s_a[2,3,up] - 7 x_s_a[2,3,right] >= 0
 R4: 0.1 x_s_a[0,0,up] + x_s_a[0,0,down] + 0.1 x_s_a[0,0,left]
   + x_s_a[0,0,right] - 0.9 x_s_a[0,1,left] - 0.9 x_s_a[1,0,up] = 1
 R5: - 0.9 x_s_a[0,0,right] + 0.1 x_s_a[0,1,up] + x_s_a[0,1,down]
   + x_s_a[0,1,left] + 0.1 x_s_a[0,1,right] - 0.9 x_s_a[1,1,up] = 1
 R6: 0.1 x_s_a[0,3,up] + 0.1 x_s_a[0,3,down] + 0.1 x_s_a[0,3,left]
   + 0.1 x_s_a[0,3,right] = 1
 R7: - 0.9 x_s_a[0,0,down] + x_s_a[1,0,up] + x_s_a[1,0,down]
   + 0.1 x_s_a[1,0,left] + x_s_a[1,0,right] - 0.9 x_s_a[1,1,left]
   - 0.9 x_s_a[2,0,up] = 1
 R8: - 0.9 x_s_a[0,1,down] - 0.9 x_s_a[1,0,right] + x_s_a[1,1,up]
   + x_s_a[1,1,down] + x_s_a[1,1,left] + x_s_a[1,1,right]
   - 0.9 x_s_a[1,2,left] - 0.9 x_s_a[2,1,up] = 1
 R9: - 0.9 x_s_a[1,1,right] + 0.1 x_s_a[1,2,up] + x_s_a[1,2,down]
   + x_s_a[1,2,left] + 0.1 x_s_a[1,2,right] - 0.9 x_s_a[2,2,up] = 1
 R10: - 0.9 x_s_a[1,0,down] + x_s_a[2,0,up] + 0.1 x_s_a[2,0,down]
   + 0.1 x_s_a[2,0,left] + x_s_a[2,0,right] - 0.9 x_s_a[2,1,left] = 1
 R11: - 0.9 x_s_a[1,1,down] - 0.9 x_s_a[2,0,right] + x_s_a[2,1,up]
   + x_s_a[2,1,down] + x_s_a[2,1,left] + x_s_a[2,1,right]
   - 0.9 x_s_a[2,2,left] - 0.9 x_s_a[3,1,up] = 1
 R12: - 0.9 x_s_a[1,2,down] - 0.9 x_s_a[2,1,right] + x_s_a[2,2,up]
   + x_s_a[2,2,down] + x_s_a[2,2,left] + x_s_a[2,2,right]
   - 0.9 x_s_a[2,3,left] - 0.9 x_s_a[3,2,up] = 1
 R13: - 0.9 x_s_a[2,2,right] + 0.1 x_s_a[2,3,up] + x_s_a[2,3,down]
   + x_s_a[2,3,left] + 0.1 x_s_a[2,3,right] = 1
 R14: - 0.9 x_s_a[2,1,down] + x_s_a[3,1,up] + 0.1 x_s_a[3,1,down]
   + 0.1 x_s_a[3,1,left] + x_s_a[3,1,right] - 0.9 x_s_a[3,2,left] = 1
 R15: - 0.9 x_s_a[2,2,down] - 0.9 x_s_a[3,1,right] + x_s_a[3,2,up]
   + 0.1 x_s_a[3,2,down] + x_s_a[3,2,left] + x_s_a[3,2,right] = 1
Bounds
End
