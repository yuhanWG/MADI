\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  z + 0 x_s_a[0,12,up] + 0 x_s_a[0,12,down] + 0 x_s_a[0,12,left]
   + 0 x_s_a[0,12,right] + 0 x_s_a[1,2,up] + 0 x_s_a[1,2,down]
   + 0 x_s_a[1,2,left] + 0 x_s_a[1,2,right] + 0 x_s_a[1,8,up]
   + 0 x_s_a[1,8,down] + 0 x_s_a[1,8,left] + 0 x_s_a[1,8,right]
   + 0 x_s_a[1,9,up] + 0 x_s_a[1,9,down] + 0 x_s_a[1,9,left]
   + 0 x_s_a[1,9,right] + 0 x_s_a[2,1,up] + 0 x_s_a[2,1,down]
   + 0 x_s_a[2,1,left] + 0 x_s_a[2,1,right] + 0 x_s_a[2,11,up]
   + 0 x_s_a[2,11,down] + 0 x_s_a[2,11,left] + 0 x_s_a[2,11,right]
   + 0 x_s_a[3,11,up] + 0 x_s_a[3,11,down] + 0 x_s_a[3,11,left]
   + 0 x_s_a[3,11,right] + 0 x_s_a[4,0,up] + 0 x_s_a[4,0,down]
   + 0 x_s_a[4,0,left] + 0 x_s_a[4,0,right] + 0 x_s_a[4,3,up]
   + 0 x_s_a[4,3,down] + 0 x_s_a[4,3,left] + 0 x_s_a[4,3,right]
   + 0 x_s_a[4,8,up] + 0 x_s_a[4,8,down] + 0 x_s_a[4,8,left]
   + 0 x_s_a[4,8,right] + 0 x_s_a[4,10,up] + 0 x_s_a[4,10,down]
   + 0 x_s_a[4,10,left] + 0 x_s_a[4,10,right] + 0 x_s_a[5,1,up]
   + 0 x_s_a[5,1,down] + 0 x_s_a[5,1,left] + 0 x_s_a[5,1,right]
   + 0 x_s_a[5,5,up] + 0 x_s_a[5,5,down] + 0 x_s_a[5,5,left]
   + 0 x_s_a[5,5,right] + 0 x_s_a[5,12,up] + 0 x_s_a[5,12,down]
   + 0 x_s_a[5,12,left] + 0 x_s_a[5,12,right] + 0 x_s_a[6,1,up]
   + 0 x_s_a[6,1,down] + 0 x_s_a[6,1,left] + 0 x_s_a[6,1,right]
   + 0 x_s_a[6,4,up] + 0 x_s_a[6,4,down] + 0 x_s_a[6,4,left]
   + 0 x_s_a[6,4,right] + 0 x_s_a[6,7,up] + 0 x_s_a[6,7,down]
   + 0 x_s_a[6,7,left] + 0 x_s_a[6,7,right] + 0 x_s_a[7,12,up]
   + 0 x_s_a[7,12,down] + 0 x_s_a[7,12,left] + 0 x_s_a[7,12,right]
   + 0 x_s_a[8,6,up] + 0 x_s_a[8,6,down] + 0 x_s_a[8,6,left]
   + 0 x_s_a[8,6,right] + 0 x_s_a[9,3,up] + 0 x_s_a[9,3,down]
   + 0 x_s_a[9,3,left] + 0 x_s_a[9,3,right] + 0 x_s_a[9,5,up]
   + 0 x_s_a[9,5,down] + 0 x_s_a[9,5,left] + 0 x_s_a[9,5,right]
   + 0 x_s_a[9,14,up] + 0 x_s_a[9,14,down] + 0 x_s_a[9,14,left]
   + 0 x_s_a[9,14,right]
Subject To
 R0: x_s_a[0,0,up] >= 0
 R1: x_s_a[0,0,down] >= 0
 R2: x_s_a[0,0,left] >= 0
 R3: x_s_a[0,0,right] >= 0
 R4: x_s_a[0,1,up] >= 0
 R5: x_s_a[0,1,down] >= 0
 R6: x_s_a[0,1,left] >= 0
 R7: x_s_a[0,1,right] >= 0
 R8: x_s_a[0,2,up] >= 0
 R9: x_s_a[0,2,down] >= 0
 R10: x_s_a[0,2,left] >= 0
 R11: x_s_a[0,2,right] >= 0
 R12: x_s_a[0,3,up] >= 0
 R13: x_s_a[0,3,down] >= 0
 R14: x_s_a[0,3,left] >= 0
 R15: x_s_a[0,3,right] >= 0
 R16: x_s_a[0,4,up] >= 0
 R17: x_s_a[0,4,down] >= 0
 R18: x_s_a[0,4,left] >= 0
 R19: x_s_a[0,4,right] >= 0
 R20: x_s_a[0,5,up] >= 0
 R21: x_s_a[0,5,down] >= 0
 R22: x_s_a[0,5,left] >= 0
 R23: x_s_a[0,5,right] >= 0
 R24: x_s_a[0,6,up] >= 0
 R25: x_s_a[0,6,down] >= 0
 R26: x_s_a[0,6,left] >= 0
 R27: x_s_a[0,6,right] >= 0
 R28: x_s_a[0,7,up] >= 0
 R29: x_s_a[0,7,down] >= 0
 R30: x_s_a[0,7,left] >= 0
 R31: x_s_a[0,7,right] >= 0
 R32: x_s_a[0,8,up] >= 0
 R33: x_s_a[0,8,down] >= 0
 R34: x_s_a[0,8,left] >= 0
 R35: x_s_a[0,8,right] >= 0
 R36: x_s_a[0,9,up] >= 0
 R37: x_s_a[0,9,down] >= 0
 R38: x_s_a[0,9,left] >= 0
 R39: x_s_a[0,9,right] >= 0
 R40: x_s_a[0,10,up] >= 0
 R41: x_s_a[0,10,down] >= 0
 R42: x_s_a[0,10,left] >= 0
 R43: x_s_a[0,10,right] >= 0
 R44: x_s_a[0,11,up] >= 0
 R45: x_s_a[0,11,down] >= 0
 R46: x_s_a[0,11,left] >= 0
 R47: x_s_a[0,11,right] >= 0
 R48: x_s_a[0,13,up] >= 0
 R49: x_s_a[0,13,down] >= 0
 R50: x_s_a[0,13,left] >= 0
 R51: x_s_a[0,13,right] >= 0
 R52: x_s_a[0,14,up] >= 0
 R53: x_s_a[0,14,down] >= 0
 R54: x_s_a[0,14,left] >= 0
 R55: x_s_a[0,14,right] >= 0
 R56: x_s_a[1,0,up] >= 0
 R57: x_s_a[1,0,down] >= 0
 R58: x_s_a[1,0,left] >= 0
 R59: x_s_a[1,0,right] >= 0
 R60: x_s_a[1,1,up] >= 0
 R61: x_s_a[1,1,down] >= 0
 R62: x_s_a[1,1,left] >= 0
 R63: x_s_a[1,1,right] >= 0
 R64: x_s_a[1,3,up] >= 0
 R65: x_s_a[1,3,down] >= 0
 R66: x_s_a[1,3,left] >= 0
 R67: x_s_a[1,3,right] >= 0
 R68: x_s_a[1,4,up] >= 0
 R69: x_s_a[1,4,down] >= 0
 R70: x_s_a[1,4,left] >= 0
 R71: x_s_a[1,4,right] >= 0
 R72: x_s_a[1,5,up] >= 0
 R73: x_s_a[1,5,down] >= 0
 R74: x_s_a[1,5,left] >= 0
 R75: x_s_a[1,5,right] >= 0
 R76: x_s_a[1,6,up] >= 0
 R77: x_s_a[1,6,down] >= 0
 R78: x_s_a[1,6,left] >= 0
 R79: x_s_a[1,6,right] >= 0
 R80: x_s_a[1,7,up] >= 0
 R81: x_s_a[1,7,down] >= 0
 R82: x_s_a[1,7,left] >= 0
 R83: x_s_a[1,7,right] >= 0
 R84: x_s_a[1,10,up] >= 0
 R85: x_s_a[1,10,down] >= 0
 R86: x_s_a[1,10,left] >= 0
 R87: x_s_a[1,10,right] >= 0
 R88: x_s_a[1,11,up] >= 0
 R89: x_s_a[1,11,down] >= 0
 R90: x_s_a[1,11,left] >= 0
 R91: x_s_a[1,11,right] >= 0
 R92: x_s_a[1,12,up] >= 0
 R93: x_s_a[1,12,down] >= 0
 R94: x_s_a[1,12,left] >= 0
 R95: x_s_a[1,12,right] >= 0
 R96: x_s_a[1,13,up] >= 0
 R97: x_s_a[1,13,down] >= 0
 R98: x_s_a[1,13,left] >= 0
 R99: x_s_a[1,13,right] >= 0
 R100: x_s_a[1,14,up] >= 0
 R101: x_s_a[1,14,down] >= 0
 R102: x_s_a[1,14,left] >= 0
 R103: x_s_a[1,14,right] >= 0
 R104: x_s_a[2,0,up] >= 0
 R105: x_s_a[2,0,down] >= 0
 R106: x_s_a[2,0,left] >= 0
 R107: x_s_a[2,0,right] >= 0
 R108: x_s_a[2,2,up] >= 0
 R109: x_s_a[2,2,down] >= 0
 R110: x_s_a[2,2,left] >= 0
 R111: x_s_a[2,2,right] >= 0
 R112: x_s_a[2,3,up] >= 0
 R113: x_s_a[2,3,down] >= 0
 R114: x_s_a[2,3,left] >= 0
 R115: x_s_a[2,3,right] >= 0
 R116: x_s_a[2,4,up] >= 0
 R117: x_s_a[2,4,down] >= 0
 R118: x_s_a[2,4,left] >= 0
 R119: x_s_a[2,4,right] >= 0
 R120: x_s_a[2,5,up] >= 0
 R121: x_s_a[2,5,down] >= 0
 R122: x_s_a[2,5,left] >= 0
 R123: x_s_a[2,5,right] >= 0
 R124: x_s_a[2,6,up] >= 0
 R125: x_s_a[2,6,down] >= 0
 R126: x_s_a[2,6,left] >= 0
 R127: x_s_a[2,6,right] >= 0
 R128: x_s_a[2,7,up] >= 0
 R129: x_s_a[2,7,down] >= 0
 R130: x_s_a[2,7,left] >= 0
 R131: x_s_a[2,7,right] >= 0
 R132: x_s_a[2,8,up] >= 0
 R133: x_s_a[2,8,down] >= 0
 R134: x_s_a[2,8,left] >= 0
 R135: x_s_a[2,8,right] >= 0
 R136: x_s_a[2,9,up] >= 0
 R137: x_s_a[2,9,down] >= 0
 R138: x_s_a[2,9,left] >= 0
 R139: x_s_a[2,9,right] >= 0
 R140: x_s_a[2,10,up] >= 0
 R141: x_s_a[2,10,down] >= 0
 R142: x_s_a[2,10,left] >= 0
 R143: x_s_a[2,10,right] >= 0
 R144: x_s_a[2,12,up] >= 0
 R145: x_s_a[2,12,down] >= 0
 R146: x_s_a[2,12,left] >= 0
 R147: x_s_a[2,12,right] >= 0
 R148: x_s_a[2,13,up] >= 0
 R149: x_s_a[2,13,down] >= 0
 R150: x_s_a[2,13,left] >= 0
 R151: x_s_a[2,13,right] >= 0
 R152: x_s_a[2,14,up] >= 0
 R153: x_s_a[2,14,down] >= 0
 R154: x_s_a[2,14,left] >= 0
 R155: x_s_a[2,14,right] >= 0
 R156: x_s_a[3,0,up] >= 0
 R157: x_s_a[3,0,down] >= 0
 R158: x_s_a[3,0,left] >= 0
 R159: x_s_a[3,0,right] >= 0
 R160: x_s_a[3,1,up] >= 0
 R161: x_s_a[3,1,down] >= 0
 R162: x_s_a[3,1,left] >= 0
 R163: x_s_a[3,1,right] >= 0
 R164: x_s_a[3,2,up] >= 0
 R165: x_s_a[3,2,down] >= 0
 R166: x_s_a[3,2,left] >= 0
 R167: x_s_a[3,2,right] >= 0
 R168: x_s_a[3,3,up] >= 0
 R169: x_s_a[3,3,down] >= 0
 R170: x_s_a[3,3,left] >= 0
 R171: x_s_a[3,3,right] >= 0
 R172: x_s_a[3,4,up] >= 0
 R173: x_s_a[3,4,down] >= 0
 R174: x_s_a[3,4,left] >= 0
 R175: x_s_a[3,4,right] >= 0
 R176: x_s_a[3,5,up] >= 0
 R177: x_s_a[3,5,down] >= 0
 R178: x_s_a[3,5,left] >= 0
 R179: x_s_a[3,5,right] >= 0
 R180: x_s_a[3,6,up] >= 0
 R181: x_s_a[3,6,down] >= 0
 R182: x_s_a[3,6,left] >= 0
 R183: x_s_a[3,6,right] >= 0
 R184: x_s_a[3,7,up] >= 0
 R185: x_s_a[3,7,down] >= 0
 R186: x_s_a[3,7,left] >= 0
 R187: x_s_a[3,7,right] >= 0
 R188: x_s_a[3,8,up] >= 0
 R189: x_s_a[3,8,down] >= 0
 R190: x_s_a[3,8,left] >= 0
 R191: x_s_a[3,8,right] >= 0
 R192: x_s_a[3,9,up] >= 0
 R193: x_s_a[3,9,down] >= 0
 R194: x_s_a[3,9,left] >= 0
 R195: x_s_a[3,9,right] >= 0
 R196: x_s_a[3,10,up] >= 0
 R197: x_s_a[3,10,down] >= 0
 R198: x_s_a[3,10,left] >= 0
 R199: x_s_a[3,10,right] >= 0
 R200: x_s_a[3,12,up] >= 0
 R201: x_s_a[3,12,down] >= 0
 R202: x_s_a[3,12,left] >= 0
 R203: x_s_a[3,12,right] >= 0
 R204: x_s_a[3,13,up] >= 0
 R205: x_s_a[3,13,down] >= 0
 R206: x_s_a[3,13,left] >= 0
 R207: x_s_a[3,13,right] >= 0
 R208: x_s_a[3,14,up] >= 0
 R209: x_s_a[3,14,down] >= 0
 R210: x_s_a[3,14,left] >= 0
 R211: x_s_a[3,14,right] >= 0
 R212: x_s_a[4,1,up] >= 0
 R213: x_s_a[4,1,down] >= 0
 R214: x_s_a[4,1,left] >= 0
 R215: x_s_a[4,1,right] >= 0
 R216: x_s_a[4,2,up] >= 0
 R217: x_s_a[4,2,down] >= 0
 R218: x_s_a[4,2,left] >= 0
 R219: x_s_a[4,2,right] >= 0
 R220: x_s_a[4,4,up] >= 0
 R221: x_s_a[4,4,down] >= 0
 R222: x_s_a[4,4,left] >= 0
 R223: x_s_a[4,4,right] >= 0
 R224: x_s_a[4,5,up] >= 0
 R225: x_s_a[4,5,down] >= 0
 R226: x_s_a[4,5,left] >= 0
 R227: x_s_a[4,5,right] >= 0
 R228: x_s_a[4,6,up] >= 0
 R229: x_s_a[4,6,down] >= 0
 R230: x_s_a[4,6,left] >= 0
 R231: x_s_a[4,6,right] >= 0
 R232: x_s_a[4,7,up] >= 0
 R233: x_s_a[4,7,down] >= 0
 R234: x_s_a[4,7,left] >= 0
 R235: x_s_a[4,7,right] >= 0
 R236: x_s_a[4,9,up] >= 0
 R237: x_s_a[4,9,down] >= 0
 R238: x_s_a[4,9,left] >= 0
 R239: x_s_a[4,9,right] >= 0
 R240: x_s_a[4,11,up] >= 0
 R241: x_s_a[4,11,down] >= 0
 R242: x_s_a[4,11,left] >= 0
 R243: x_s_a[4,11,right] >= 0
 R244: x_s_a[4,12,up] >= 0
 R245: x_s_a[4,12,down] >= 0
 R246: x_s_a[4,12,left] >= 0
 R247: x_s_a[4,12,right] >= 0
 R248: x_s_a[4,13,up] >= 0
 R249: x_s_a[4,13,down] >= 0
 R250: x_s_a[4,13,left] >= 0
 R251: x_s_a[4,13,right] >= 0
 R252: x_s_a[4,14,up] >= 0
 R253: x_s_a[4,14,down] >= 0
 R254: x_s_a[4,14,left] >= 0
 R255: x_s_a[4,14,right] >= 0
 R256: x_s_a[5,0,up] >= 0
 R257: x_s_a[5,0,down] >= 0
 R258: x_s_a[5,0,left] >= 0
 R259: x_s_a[5,0,right] >= 0
 R260: x_s_a[5,2,up] >= 0
 R261: x_s_a[5,2,down] >= 0
 R262: x_s_a[5,2,left] >= 0
 R263: x_s_a[5,2,right] >= 0
 R264: x_s_a[5,3,up] >= 0
 R265: x_s_a[5,3,down] >= 0
 R266: x_s_a[5,3,left] >= 0
 R267: x_s_a[5,3,right] >= 0
 R268: x_s_a[5,4,up] >= 0
 R269: x_s_a[5,4,down] >= 0
 R270: x_s_a[5,4,left] >= 0
 R271: x_s_a[5,4,right] >= 0
 R272: x_s_a[5,6,up] >= 0
 R273: x_s_a[5,6,down] >= 0
 R274: x_s_a[5,6,left] >= 0
 R275: x_s_a[5,6,right] >= 0
 R276: x_s_a[5,7,up] >= 0
 R277: x_s_a[5,7,down] >= 0
 R278: x_s_a[5,7,left] >= 0
 R279: x_s_a[5,7,right] >= 0
 R280: x_s_a[5,8,up] >= 0
 R281: x_s_a[5,8,down] >= 0
 R282: x_s_a[5,8,left] >= 0
 R283: x_s_a[5,8,right] >= 0
 R284: x_s_a[5,9,up] >= 0
 R285: x_s_a[5,9,down] >= 0
 R286: x_s_a[5,9,left] >= 0
 R287: x_s_a[5,9,right] >= 0
 R288: x_s_a[5,10,up] >= 0
 R289: x_s_a[5,10,down] >= 0
 R290: x_s_a[5,10,left] >= 0
 R291: x_s_a[5,10,right] >= 0
 R292: x_s_a[5,11,up] >= 0
 R293: x_s_a[5,11,down] >= 0
 R294: x_s_a[5,11,left] >= 0
 R295: x_s_a[5,11,right] >= 0
 R296: x_s_a[5,13,up] >= 0
 R297: x_s_a[5,13,down] >= 0
 R298: x_s_a[5,13,left] >= 0
 R299: x_s_a[5,13,right] >= 0
 R300: x_s_a[5,14,up] >= 0
 R301: x_s_a[5,14,down] >= 0
 R302: x_s_a[5,14,left] >= 0
 R303: x_s_a[5,14,right] >= 0
 R304: x_s_a[6,0,up] >= 0
 R305: x_s_a[6,0,down] >= 0
 R306: x_s_a[6,0,left] >= 0
 R307: x_s_a[6,0,right] >= 0
 R308: x_s_a[6,2,up] >= 0
 R309: x_s_a[6,2,down] >= 0
 R310: x_s_a[6,2,left] >= 0
 R311: x_s_a[6,2,right] >= 0
 R312: x_s_a[6,3,up] >= 0
 R313: x_s_a[6,3,down] >= 0
 R314: x_s_a[6,3,left] >= 0
 R315: x_s_a[6,3,right] >= 0
 R316: x_s_a[6,5,up] >= 0
 R317: x_s_a[6,5,down] >= 0
 R318: x_s_a[6,5,left] >= 0
 R319: x_s_a[6,5,right] >= 0
 R320: x_s_a[6,6,up] >= 0
 R321: x_s_a[6,6,down] >= 0
 R322: x_s_a[6,6,left] >= 0
 R323: x_s_a[6,6,right] >= 0
 R324: x_s_a[6,8,up] >= 0
 R325: x_s_a[6,8,down] >= 0
 R326: x_s_a[6,8,left] >= 0
 R327: x_s_a[6,8,right] >= 0
 R328: x_s_a[6,9,up] >= 0
 R329: x_s_a[6,9,down] >= 0
 R330: x_s_a[6,9,left] >= 0
 R331: x_s_a[6,9,right] >= 0
 R332: x_s_a[6,10,up] >= 0
 R333: x_s_a[6,10,down] >= 0
 R334: x_s_a[6,10,left] >= 0
 R335: x_s_a[6,10,right] >= 0
 R336: x_s_a[6,11,up] >= 0
 R337: x_s_a[6,11,down] >= 0
 R338: x_s_a[6,11,left] >= 0
 R339: x_s_a[6,11,right] >= 0
 R340: x_s_a[6,12,up] >= 0
 R341: x_s_a[6,12,down] >= 0
 R342: x_s_a[6,12,left] >= 0
 R343: x_s_a[6,12,right] >= 0
 R344: x_s_a[6,13,up] >= 0
 R345: x_s_a[6,13,down] >= 0
 R346: x_s_a[6,13,left] >= 0
 R347: x_s_a[6,13,right] >= 0
 R348: x_s_a[6,14,up] >= 0
 R349: x_s_a[6,14,down] >= 0
 R350: x_s_a[6,14,left] >= 0
 R351: x_s_a[6,14,right] >= 0
 R352: x_s_a[7,0,up] >= 0
 R353: x_s_a[7,0,down] >= 0
 R354: x_s_a[7,0,left] >= 0
 R355: x_s_a[7,0,right] >= 0
 R356: x_s_a[7,1,up] >= 0
 R357: x_s_a[7,1,down] >= 0
 R358: x_s_a[7,1,left] >= 0
 R359: x_s_a[7,1,right] >= 0
 R360: x_s_a[7,2,up] >= 0
 R361: x_s_a[7,2,down] >= 0
 R362: x_s_a[7,2,left] >= 0
 R363: x_s_a[7,2,right] >= 0
 R364: x_s_a[7,3,up] >= 0
 R365: x_s_a[7,3,down] >= 0
 R366: x_s_a[7,3,left] >= 0
 R367: x_s_a[7,3,right] >= 0
 R368: x_s_a[7,4,up] >= 0
 R369: x_s_a[7,4,down] >= 0
 R370: x_s_a[7,4,left] >= 0
 R371: x_s_a[7,4,right] >= 0
 R372: x_s_a[7,5,up] >= 0
 R373: x_s_a[7,5,down] >= 0
 R374: x_s_a[7,5,left] >= 0
 R375: x_s_a[7,5,right] >= 0
 R376: x_s_a[7,6,up] >= 0
 R377: x_s_a[7,6,down] >= 0
 R378: x_s_a[7,6,left] >= 0
 R379: x_s_a[7,6,right] >= 0
 R380: x_s_a[7,7,up] >= 0
 R381: x_s_a[7,7,down] >= 0
 R382: x_s_a[7,7,left] >= 0
 R383: x_s_a[7,7,right] >= 0
 R384: x_s_a[7,8,up] >= 0
 R385: x_s_a[7,8,down] >= 0
 R386: x_s_a[7,8,left] >= 0
 R387: x_s_a[7,8,right] >= 0
 R388: x_s_a[7,9,up] >= 0
 R389: x_s_a[7,9,down] >= 0
 R390: x_s_a[7,9,left] >= 0
 R391: x_s_a[7,9,right] >= 0
 R392: x_s_a[7,10,up] >= 0
 R393: x_s_a[7,10,down] >= 0
 R394: x_s_a[7,10,left] >= 0
 R395: x_s_a[7,10,right] >= 0
 R396: x_s_a[7,11,up] >= 0
 R397: x_s_a[7,11,down] >= 0
 R398: x_s_a[7,11,left] >= 0
 R399: x_s_a[7,11,right] >= 0
 R400: x_s_a[7,13,up] >= 0
 R401: x_s_a[7,13,down] >= 0
 R402: x_s_a[7,13,left] >= 0
 R403: x_s_a[7,13,right] >= 0
 R404: x_s_a[7,14,up] >= 0
 R405: x_s_a[7,14,down] >= 0
 R406: x_s_a[7,14,left] >= 0
 R407: x_s_a[7,14,right] >= 0
 R408: x_s_a[8,0,up] >= 0
 R409: x_s_a[8,0,down] >= 0
 R410: x_s_a[8,0,left] >= 0
 R411: x_s_a[8,0,right] >= 0
 R412: x_s_a[8,1,up] >= 0
 R413: x_s_a[8,1,down] >= 0
 R414: x_s_a[8,1,left] >= 0
 R415: x_s_a[8,1,right] >= 0
 R416: x_s_a[8,2,up] >= 0
 R417: x_s_a[8,2,down] >= 0
 R418: x_s_a[8,2,left] >= 0
 R419: x_s_a[8,2,right] >= 0
 R420: x_s_a[8,3,up] >= 0
 R421: x_s_a[8,3,down] >= 0
 R422: x_s_a[8,3,left] >= 0
 R423: x_s_a[8,3,right] >= 0
 R424: x_s_a[8,4,up] >= 0
 R425: x_s_a[8,4,down] >= 0
 R426: x_s_a[8,4,left] >= 0
 R427: x_s_a[8,4,right] >= 0
 R428: x_s_a[8,5,up] >= 0
 R429: x_s_a[8,5,down] >= 0
 R430: x_s_a[8,5,left] >= 0
 R431: x_s_a[8,5,right] >= 0
 R432: x_s_a[8,7,up] >= 0
 R433: x_s_a[8,7,down] >= 0
 R434: x_s_a[8,7,left] >= 0
 R435: x_s_a[8,7,right] >= 0
 R436: x_s_a[8,8,up] >= 0
 R437: x_s_a[8,8,down] >= 0
 R438: x_s_a[8,8,left] >= 0
 R439: x_s_a[8,8,right] >= 0
 R440: x_s_a[8,9,up] >= 0
 R441: x_s_a[8,9,down] >= 0
 R442: x_s_a[8,9,left] >= 0
 R443: x_s_a[8,9,right] >= 0
 R444: x_s_a[8,10,up] >= 0
 R445: x_s_a[8,10,down] >= 0
 R446: x_s_a[8,10,left] >= 0
 R447: x_s_a[8,10,right] >= 0
 R448: x_s_a[8,11,up] >= 0
 R449: x_s_a[8,11,down] >= 0
 R450: x_s_a[8,11,left] >= 0
 R451: x_s_a[8,11,right] >= 0
 R452: x_s_a[8,12,up] >= 0
 R453: x_s_a[8,12,down] >= 0
 R454: x_s_a[8,12,left] >= 0
 R455: x_s_a[8,12,right] >= 0
 R456: x_s_a[8,13,up] >= 0
 R457: x_s_a[8,13,down] >= 0
 R458: x_s_a[8,13,left] >= 0
 R459: x_s_a[8,13,right] >= 0
 R460: x_s_a[8,14,up] >= 0
 R461: x_s_a[8,14,down] >= 0
 R462: x_s_a[8,14,left] >= 0
 R463: x_s_a[8,14,right] >= 0
 R464: x_s_a[9,0,up] >= 0
 R465: x_s_a[9,0,down] >= 0
 R466: x_s_a[9,0,left] >= 0
 R467: x_s_a[9,0,right] >= 0
 R468: x_s_a[9,1,up] >= 0
 R469: x_s_a[9,1,down] >= 0
 R470: x_s_a[9,1,left] >= 0
 R471: x_s_a[9,1,right] >= 0
 R472: x_s_a[9,2,up] >= 0
 R473: x_s_a[9,2,down] >= 0
 R474: x_s_a[9,2,left] >= 0
 R475: x_s_a[9,2,right] >= 0
 R476: x_s_a[9,4,up] >= 0
 R477: x_s_a[9,4,down] >= 0
 R478: x_s_a[9,4,left] >= 0
 R479: x_s_a[9,4,right] >= 0
 R480: x_s_a[9,6,up] >= 0
 R481: x_s_a[9,6,down] >= 0
 R482: x_s_a[9,6,left] >= 0
 R483: x_s_a[9,6,right] >= 0
 R484: x_s_a[9,7,up] >= 0
 R485: x_s_a[9,7,down] >= 0
 R486: x_s_a[9,7,left] >= 0
 R487: x_s_a[9,7,right] >= 0
 R488: x_s_a[9,8,up] >= 0
 R489: x_s_a[9,8,down] >= 0
 R490: x_s_a[9,8,left] >= 0
 R491: x_s_a[9,8,right] >= 0
 R492: x_s_a[9,9,up] >= 0
 R493: x_s_a[9,9,down] >= 0
 R494: x_s_a[9,9,left] >= 0
 R495: x_s_a[9,9,right] >= 0
 R496: x_s_a[9,10,up] >= 0
 R497: x_s_a[9,10,down] >= 0
 R498: x_s_a[9,10,left] >= 0
 R499: x_s_a[9,10,right] >= 0
 R500: x_s_a[9,11,up] >= 0
 R501: x_s_a[9,11,down] >= 0
 R502: x_s_a[9,11,left] >= 0
 R503: x_s_a[9,11,right] >= 0
 R504: x_s_a[9,12,up] >= 0
 R505: x_s_a[9,12,down] >= 0
 R506: x_s_a[9,12,left] >= 0
 R507: x_s_a[9,12,right] >= 0
 R508: x_s_a[9,13,up] >= 0
 R509: x_s_a[9,13,down] >= 0
 R510: x_s_a[9,13,left] >= 0
 R511: x_s_a[9,13,right] >= 0
 c0: z - 3 x_s_a[0,0,up] - 3 x_s_a[0,0,left] - 0.9 x_s_a[0,0,right]
   - x_s_a[0,1,up] - 2.7 x_s_a[0,1,left] - 0.9 x_s_a[0,2,left]
   - 0.3 x_s_a[0,2,right] - 3.6 x_s_a[0,3,down] - 0.9 x_s_a[0,3,right]
   - 7.5 x_s_a[0,4,down] - 0.3 x_s_a[0,4,left] - 1.5 x_s_a[0,5,down]
   - 0.9 x_s_a[0,5,left] - 0.6 x_s_a[0,5,right] - 4.8 x_s_a[0,6,down]
   - 0.6 x_s_a[0,7,down] - 0.6 x_s_a[0,7,left] - 8 x_s_a[0,8,right]
   - 8 x_s_a[0,9,up] - 8 x_s_a[0,9,down] - 0.5 x_s_a[0,9,right]
   - 4.5 x_s_a[0,10,down] - 8 x_s_a[0,10,left] - 6.3 x_s_a[0,10,right]
   - 7 x_s_a[0,11,up] - 0.5 x_s_a[0,11,down] - 0.5 x_s_a[0,11,left]
   - 7 x_s_a[0,11,right] - 0.8 x_s_a[0,13,down] - 0.8 x_s_a[0,13,right]
   - 7.2 x_s_a[0,14,down] - 2.8 x_s_a[1,0,up] - 6 x_s_a[1,0,down]
   - 0.1 x_s_a[1,0,right] - 1.1 x_s_a[1,1,up] - 0.9 x_s_a[1,1,left]
   - 3 x_s_a[1,3,left] - 7.2 x_s_a[1,3,right] - 2.4 x_s_a[1,4,left]
   - 0.5 x_s_a[1,5,down] - 7.2 x_s_a[1,5,left] - 5.3 x_s_a[1,5,right]
   - 4 x_s_a[1,6,down] - 0.7 x_s_a[1,7,down] - 5.3 x_s_a[1,7,left]
   - 1.5 x_s_a[1,10,up] - 5 x_s_a[1,10,left] - 0.7 x_s_a[1,10,right]
   - 6.3 x_s_a[1,11,up] - 4 x_s_a[1,11,left] - 0.2 x_s_a[1,11,right]
   - 2 x_s_a[1,12,down] - 0.7 x_s_a[1,12,left] - 0.2 x_s_a[1,12,right]
   - 1.9 x_s_a[1,13,down] - 0.2 x_s_a[1,13,left] - 6.5 x_s_a[1,13,right]
   - 1.1 x_s_a[1,14,down] - 0.2 x_s_a[1,14,left] - 8 x_s_a[1,14,right]
   - 0.7 x_s_a[2,0,down] - 6 x_s_a[2,0,left] - 6 x_s_a[2,0,right]
   - 0.7 x_s_a[2,2,down] - 0.3 x_s_a[2,2,right] - 3.6 x_s_a[2,3,up]
   - 0.9 x_s_a[2,3,right] - 7.5 x_s_a[2,4,up] - 0.3 x_s_a[2,4,left]
   - 1.5 x_s_a[2,5,up] - 0.7 x_s_a[2,5,down] - 0.9 x_s_a[2,5,left]
   - 5.3 x_s_a[2,5,right] - 4.8 x_s_a[2,6,up] - 5.6 x_s_a[2,6,down]
   - 0.6 x_s_a[2,7,up] - 0.7 x_s_a[2,7,down] - 5.3 x_s_a[2,7,left]
   - 1.8 x_s_a[2,7,right] - 2 x_s_a[2,8,up] - 0.1 x_s_a[2,8,down]
   - 0.1 x_s_a[2,8,right] - 1.6 x_s_a[2,9,down] - 1.8 x_s_a[2,9,left]
   - 1.3 x_s_a[2,9,right] - 4.5 x_s_a[2,10,up] - 7.3 x_s_a[2,10,down]
   - 0.1 x_s_a[2,10,left] - 2 x_s_a[2,12,left] - 1.6 x_s_a[2,12,right]
   - 0.8 x_s_a[2,13,up] - 0.6 x_s_a[2,13,down] - 1.6 x_s_a[2,13,left]
   - 2.2 x_s_a[2,13,right] - 7.2 x_s_a[2,14,up] - 5.4 x_s_a[2,14,down]
   - 1.6 x_s_a[2,14,left] - x_s_a[2,14,right] - 6 x_s_a[3,0,up]
   - 6.3 x_s_a[3,0,right] - 7 x_s_a[3,1,up] - 0.6 x_s_a[3,1,left]
   - 6.3 x_s_a[3,2,left] - 0.2 x_s_a[3,4,down] - 0.2 x_s_a[3,4,right]
   - 0.5 x_s_a[3,5,up] - 1.6 x_s_a[3,5,down] - 6.1 x_s_a[3,5,right]
   - 4 x_s_a[3,6,up] - 0.2 x_s_a[3,6,down] - 0.2 x_s_a[3,6,left]
   - 0.7 x_s_a[3,7,up] - 6.1 x_s_a[3,7,left] - 0.2 x_s_a[3,7,right]
   - 1.6 x_s_a[3,8,up] - 1.7 x_s_a[3,8,right] - 0.2 x_s_a[3,9,up]
   - 9 x_s_a[3,9,down] - 0.2 x_s_a[3,9,left] - 7.2 x_s_a[3,9,right]
   - 8 x_s_a[3,10,down] - 1.7 x_s_a[3,10,left] - 8 x_s_a[3,10,right]
   - 2 x_s_a[3,12,up] - 5.7 x_s_a[3,12,down] - 0.2 x_s_a[3,12,right]
   - 1.9 x_s_a[3,13,up] - 0.6 x_s_a[3,13,down] - 0.8 x_s_a[3,13,left]
   - 4.9 x_s_a[3,13,right] - 1.1 x_s_a[3,14,up] - 0.2 x_s_a[3,14,left]
   - 6 x_s_a[3,14,right] - 5.6 x_s_a[4,1,up] - 0.7 x_s_a[4,2,up]
   - 0.7 x_s_a[4,2,left] - 1.8 x_s_a[4,4,right] - 0.7 x_s_a[4,5,up]
   - 2 x_s_a[4,5,down] - 1.2 x_s_a[4,5,right] - 5.6 x_s_a[4,6,up]
   - 4.8 x_s_a[4,6,down] - 1.8 x_s_a[4,6,left] - 0.3 x_s_a[4,6,right]
   - 0.7 x_s_a[4,7,up] - 2.9 x_s_a[4,7,down] - 1.2 x_s_a[4,7,left]
   - 1.6 x_s_a[4,9,up] - 0.8 x_s_a[4,9,down] - 9 x_s_a[4,9,left]
   - 9 x_s_a[4,9,right] - 9 x_s_a[4,11,up] - 9 x_s_a[4,11,left]
   - 5.4 x_s_a[4,11,right] - 6 x_s_a[4,12,down] - 8.1 x_s_a[4,12,left]
   - 0.6 x_s_a[4,13,up] - 5.4 x_s_a[4,13,left] - 0.6 x_s_a[4,13,right]
   - 5.4 x_s_a[4,14,up] - 2 x_s_a[5,0,down] - 0.2 x_s_a[5,4,up]
   - 0.2 x_s_a[5,6,up] - 5 x_s_a[5,6,left] - 2.7 x_s_a[5,6,right]
   - 3 x_s_a[5,7,down] - 4 x_s_a[5,7,left] - 0.6 x_s_a[5,7,right]
   - 6.1 x_s_a[5,8,down] - 2.7 x_s_a[5,8,left] - 2.4 x_s_a[5,8,right]
   - 9 x_s_a[5,9,up] - 6.6 x_s_a[5,9,down] - 0.6 x_s_a[5,9,left]
   - 0.4 x_s_a[5,9,right] - 3.9 x_s_a[5,10,down] - 2.4 x_s_a[5,10,left]
   - 0.9 x_s_a[5,10,right] - 8.7 x_s_a[5,11,up] - 0.4 x_s_a[5,11,down]
   - 0.4 x_s_a[5,11,left] - 0.6 x_s_a[5,13,up] - 2 x_s_a[6,0,left]
   - 2 x_s_a[6,0,right] - 6.5 x_s_a[6,2,down] - 0.9 x_s_a[6,2,right]
   - 7.9 x_s_a[6,3,down] - 0.7 x_s_a[6,3,left] - 4 x_s_a[6,5,down]
   - 0.5 x_s_a[6,5,right] - 4.8 x_s_a[6,6,up] - 0.7 x_s_a[6,6,down]
   - 0.5 x_s_a[6,6,left] - 0.4 x_s_a[6,8,up] - 0.2 x_s_a[6,8,down]
   - 6 x_s_a[6,8,left] - 5.7 x_s_a[6,8,right] - 0.8 x_s_a[6,9,up]
   - 4.8 x_s_a[6,9,left] - 3.2 x_s_a[6,9,right] - 0.1 x_s_a[6,10,up]
   - 0.8 x_s_a[6,10,down] - 5.7 x_s_a[6,10,left] - 0.8 x_s_a[6,10,right]
   - 7.2 x_s_a[6,11,down] - 3.2 x_s_a[6,11,left] - 0.8 x_s_a[6,12,left]
   - 2 x_s_a[7,0,up] - 4.5 x_s_a[7,0,down] - 0.9 x_s_a[7,1,down]
   - 0.7 x_s_a[7,1,left] - 6 x_s_a[7,1,right] - 4.1 x_s_a[7,2,down]
   - 8.1 x_s_a[7,2,right] - 7.6 x_s_a[7,3,down] - 6 x_s_a[7,3,left]
   - 0.9 x_s_a[7,4,down] - 8.1 x_s_a[7,4,left] - 4 x_s_a[7,4,right]
   - 4 x_s_a[7,6,left] - 1.8 x_s_a[7,6,right] - 2 x_s_a[7,7,up]
   - 0.6 x_s_a[7,7,right] - 6.1 x_s_a[7,8,up] - 0.8 x_s_a[7,8,down]
   - 1.8 x_s_a[7,8,left] - 1.5 x_s_a[7,8,right] - 6.6 x_s_a[7,9,up]
   - 6.4 x_s_a[7,9,down] - 0.6 x_s_a[7,9,left] - 0.4 x_s_a[7,9,right]
   - 3.9 x_s_a[7,10,up] - 0.8 x_s_a[7,10,down] - 1.5 x_s_a[7,10,left]
   - 6.4 x_s_a[7,10,right] - 0.4 x_s_a[7,11,up] - 0.4 x_s_a[7,11,left]
   - 8 x_s_a[7,11,right] - 3.2 x_s_a[7,13,down] - 0.4 x_s_a[7,14,down]
   - 0.4 x_s_a[7,14,left] - 1.8 x_s_a[8,0,down] - 5 x_s_a[8,0,left]
   - 0.7 x_s_a[8,1,up] - 0.2 x_s_a[8,1,down] - 4.2 x_s_a[8,1,left]
   - 3.9 x_s_a[8,1,right] - 6.5 x_s_a[8,2,up] - 9 x_s_a[8,2,right]
   - 7.9 x_s_a[8,3,up] - 9 x_s_a[8,3,down] - 3.9 x_s_a[8,3,left]
   - 0.6 x_s_a[8,3,right] - 1.4 x_s_a[8,4,up] - 6 x_s_a[8,4,down]
   - 9 x_s_a[8,4,left] - 0.5 x_s_a[8,4,right] - 4 x_s_a[8,5,up]
   - 0.6 x_s_a[8,5,left] - 1.6 x_s_a[8,7,up] - 0.2 x_s_a[8,8,up]
   - 0.6 x_s_a[8,8,down] - 0.2 x_s_a[8,8,left] - 7 x_s_a[8,8,right]
   - 4.8 x_s_a[8,9,down] - 0.8 x_s_a[8,10,up] - 1.2 x_s_a[8,10,down]
   - 7 x_s_a[8,10,left] - 1.4 x_s_a[8,10,right] - 7.2 x_s_a[8,11,up]
   - 4.8 x_s_a[8,11,down] - 0.6 x_s_a[8,12,down] - 1.4 x_s_a[8,12,left]
   - 3.2 x_s_a[8,12,right] - 3.2 x_s_a[8,14,left] - 4.5 x_s_a[9,0,up]
   - 2 x_s_a[9,0,down] - 2 x_s_a[9,0,left] - 0.9 x_s_a[9,1,up]
   - 2.3 x_s_a[9,1,left] - 4.1 x_s_a[9,2,up] - 0.9 x_s_a[9,4,up]
   - 6 x_s_a[9,4,down] - 6 x_s_a[9,4,left] - 6 x_s_a[9,4,right]
   - 0.8 x_s_a[9,8,up] - 6 x_s_a[9,8,right] - 6.4 x_s_a[9,9,up]
   - 6 x_s_a[9,9,down] - 0.8 x_s_a[9,10,up] - 6.2 x_s_a[9,10,left]
   - 6 x_s_a[9,10,right] - 6 x_s_a[9,11,down] - 0.4 x_s_a[9,12,up]
   - 5.4 x_s_a[9,12,left] - 3.2 x_s_a[9,13,up] >= 0
 R513: x_s_a[0,0,up] >= 0
 R514: x_s_a[0,0,down] >= 0
 R515: x_s_a[0,0,left] >= 0
 R516: x_s_a[0,0,right] >= 0
 R517: x_s_a[0,1,up] >= 0
 R518: x_s_a[0,1,down] >= 0
 R519: x_s_a[0,1,left] >= 0
 R520: x_s_a[0,1,right] >= 0
 R521: x_s_a[0,2,up] >= 0
 R522: x_s_a[0,2,down] >= 0
 R523: x_s_a[0,2,left] >= 0
 R524: x_s_a[0,2,right] >= 0
 R525: x_s_a[0,3,up] >= 0
 R526: x_s_a[0,3,down] >= 0
 R527: x_s_a[0,3,left] >= 0
 R528: x_s_a[0,3,right] >= 0
 R529: x_s_a[0,4,up] >= 0
 R530: x_s_a[0,4,down] >= 0
 R531: x_s_a[0,4,left] >= 0
 R532: x_s_a[0,4,right] >= 0
 R533: x_s_a[0,5,up] >= 0
 R534: x_s_a[0,5,down] >= 0
 R535: x_s_a[0,5,left] >= 0
 R536: x_s_a[0,5,right] >= 0
 R537: x_s_a[0,6,up] >= 0
 R538: x_s_a[0,6,down] >= 0
 R539: x_s_a[0,6,left] >= 0
 R540: x_s_a[0,6,right] >= 0
 R541: x_s_a[0,7,up] >= 0
 R542: x_s_a[0,7,down] >= 0
 R543: x_s_a[0,7,left] >= 0
 R544: x_s_a[0,7,right] >= 0
 R545: x_s_a[0,8,up] >= 0
 R546: x_s_a[0,8,down] >= 0
 R547: x_s_a[0,8,left] >= 0
 R548: x_s_a[0,8,right] >= 0
 R549: x_s_a[0,9,up] >= 0
 R550: x_s_a[0,9,down] >= 0
 R551: x_s_a[0,9,left] >= 0
 R552: x_s_a[0,9,right] >= 0
 R553: x_s_a[0,10,up] >= 0
 R554: x_s_a[0,10,down] >= 0
 R555: x_s_a[0,10,left] >= 0
 R556: x_s_a[0,10,right] >= 0
 R557: x_s_a[0,11,up] >= 0
 R558: x_s_a[0,11,down] >= 0
 R559: x_s_a[0,11,left] >= 0
 R560: x_s_a[0,11,right] >= 0
 R561: x_s_a[0,13,up] >= 0
 R562: x_s_a[0,13,down] >= 0
 R563: x_s_a[0,13,left] >= 0
 R564: x_s_a[0,13,right] >= 0
 R565: x_s_a[0,14,up] >= 0
 R566: x_s_a[0,14,down] >= 0
 R567: x_s_a[0,14,left] >= 0
 R568: x_s_a[0,14,right] >= 0
 R569: x_s_a[1,0,up] >= 0
 R570: x_s_a[1,0,down] >= 0
 R571: x_s_a[1,0,left] >= 0
 R572: x_s_a[1,0,right] >= 0
 R573: x_s_a[1,1,up] >= 0
 R574: x_s_a[1,1,down] >= 0
 R575: x_s_a[1,1,left] >= 0
 R576: x_s_a[1,1,right] >= 0
 R577: x_s_a[1,3,up] >= 0
 R578: x_s_a[1,3,down] >= 0
 R579: x_s_a[1,3,left] >= 0
 R580: x_s_a[1,3,right] >= 0
 R581: x_s_a[1,4,up] >= 0
 R582: x_s_a[1,4,down] >= 0
 R583: x_s_a[1,4,left] >= 0
 R584: x_s_a[1,4,right] >= 0
 R585: x_s_a[1,5,up] >= 0
 R586: x_s_a[1,5,down] >= 0
 R587: x_s_a[1,5,left] >= 0
 R588: x_s_a[1,5,right] >= 0
 R589: x_s_a[1,6,up] >= 0
 R590: x_s_a[1,6,down] >= 0
 R591: x_s_a[1,6,left] >= 0
 R592: x_s_a[1,6,right] >= 0
 R593: x_s_a[1,7,up] >= 0
 R594: x_s_a[1,7,down] >= 0
 R595: x_s_a[1,7,left] >= 0
 R596: x_s_a[1,7,right] >= 0
 R597: x_s_a[1,10,up] >= 0
 R598: x_s_a[1,10,down] >= 0
 R599: x_s_a[1,10,left] >= 0
 R600: x_s_a[1,10,right] >= 0
 R601: x_s_a[1,11,up] >= 0
 R602: x_s_a[1,11,down] >= 0
 R603: x_s_a[1,11,left] >= 0
 R604: x_s_a[1,11,right] >= 0
 R605: x_s_a[1,12,up] >= 0
 R606: x_s_a[1,12,down] >= 0
 R607: x_s_a[1,12,left] >= 0
 R608: x_s_a[1,12,right] >= 0
 R609: x_s_a[1,13,up] >= 0
 R610: x_s_a[1,13,down] >= 0
 R611: x_s_a[1,13,left] >= 0
 R612: x_s_a[1,13,right] >= 0
 R613: x_s_a[1,14,up] >= 0
 R614: x_s_a[1,14,down] >= 0
 R615: x_s_a[1,14,left] >= 0
 R616: x_s_a[1,14,right] >= 0
 R617: x_s_a[2,0,up] >= 0
 R618: x_s_a[2,0,down] >= 0
 R619: x_s_a[2,0,left] >= 0
 R620: x_s_a[2,0,right] >= 0
 R621: x_s_a[2,2,up] >= 0
 R622: x_s_a[2,2,down] >= 0
 R623: x_s_a[2,2,left] >= 0
 R624: x_s_a[2,2,right] >= 0
 R625: x_s_a[2,3,up] >= 0
 R626: x_s_a[2,3,down] >= 0
 R627: x_s_a[2,3,left] >= 0
 R628: x_s_a[2,3,right] >= 0
 R629: x_s_a[2,4,up] >= 0
 R630: x_s_a[2,4,down] >= 0
 R631: x_s_a[2,4,left] >= 0
 R632: x_s_a[2,4,right] >= 0
 R633: x_s_a[2,5,up] >= 0
 R634: x_s_a[2,5,down] >= 0
 R635: x_s_a[2,5,left] >= 0
 R636: x_s_a[2,5,right] >= 0
 R637: x_s_a[2,6,up] >= 0
 R638: x_s_a[2,6,down] >= 0
 R639: x_s_a[2,6,left] >= 0
 R640: x_s_a[2,6,right] >= 0
 R641: x_s_a[2,7,up] >= 0
 R642: x_s_a[2,7,down] >= 0
 R643: x_s_a[2,7,left] >= 0
 R644: x_s_a[2,7,right] >= 0
 R645: x_s_a[2,8,up] >= 0
 R646: x_s_a[2,8,down] >= 0
 R647: x_s_a[2,8,left] >= 0
 R648: x_s_a[2,8,right] >= 0
 R649: x_s_a[2,9,up] >= 0
 R650: x_s_a[2,9,down] >= 0
 R651: x_s_a[2,9,left] >= 0
 R652: x_s_a[2,9,right] >= 0
 R653: x_s_a[2,10,up] >= 0
 R654: x_s_a[2,10,down] >= 0
 R655: x_s_a[2,10,left] >= 0
 R656: x_s_a[2,10,right] >= 0
 R657: x_s_a[2,12,up] >= 0
 R658: x_s_a[2,12,down] >= 0
 R659: x_s_a[2,12,left] >= 0
 R660: x_s_a[2,12,right] >= 0
 R661: x_s_a[2,13,up] >= 0
 R662: x_s_a[2,13,down] >= 0
 R663: x_s_a[2,13,left] >= 0
 R664: x_s_a[2,13,right] >= 0
 R665: x_s_a[2,14,up] >= 0
 R666: x_s_a[2,14,down] >= 0
 R667: x_s_a[2,14,left] >= 0
 R668: x_s_a[2,14,right] >= 0
 R669: x_s_a[3,0,up] >= 0
 R670: x_s_a[3,0,down] >= 0
 R671: x_s_a[3,0,left] >= 0
 R672: x_s_a[3,0,right] >= 0
 R673: x_s_a[3,1,up] >= 0
 R674: x_s_a[3,1,down] >= 0
 R675: x_s_a[3,1,left] >= 0
 R676: x_s_a[3,1,right] >= 0
 R677: x_s_a[3,2,up] >= 0
 R678: x_s_a[3,2,down] >= 0
 R679: x_s_a[3,2,left] >= 0
 R680: x_s_a[3,2,right] >= 0
 R681: x_s_a[3,3,up] >= 0
 R682: x_s_a[3,3,down] >= 0
 R683: x_s_a[3,3,left] >= 0
 R684: x_s_a[3,3,right] >= 0
 R685: x_s_a[3,4,up] >= 0
 R686: x_s_a[3,4,down] >= 0
 R687: x_s_a[3,4,left] >= 0
 R688: x_s_a[3,4,right] >= 0
 R689: x_s_a[3,5,up] >= 0
 R690: x_s_a[3,5,down] >= 0
 R691: x_s_a[3,5,left] >= 0
 R692: x_s_a[3,5,right] >= 0
 R693: x_s_a[3,6,up] >= 0
 R694: x_s_a[3,6,down] >= 0
 R695: x_s_a[3,6,left] >= 0
 R696: x_s_a[3,6,right] >= 0
 R697: x_s_a[3,7,up] >= 0
 R698: x_s_a[3,7,down] >= 0
 R699: x_s_a[3,7,left] >= 0
 R700: x_s_a[3,7,right] >= 0
 R701: x_s_a[3,8,up] >= 0
 R702: x_s_a[3,8,down] >= 0
 R703: x_s_a[3,8,left] >= 0
 R704: x_s_a[3,8,right] >= 0
 R705: x_s_a[3,9,up] >= 0
 R706: x_s_a[3,9,down] >= 0
 R707: x_s_a[3,9,left] >= 0
 R708: x_s_a[3,9,right] >= 0
 R709: x_s_a[3,10,up] >= 0
 R710: x_s_a[3,10,down] >= 0
 R711: x_s_a[3,10,left] >= 0
 R712: x_s_a[3,10,right] >= 0
 R713: x_s_a[3,12,up] >= 0
 R714: x_s_a[3,12,down] >= 0
 R715: x_s_a[3,12,left] >= 0
 R716: x_s_a[3,12,right] >= 0
 R717: x_s_a[3,13,up] >= 0
 R718: x_s_a[3,13,down] >= 0
 R719: x_s_a[3,13,left] >= 0
 R720: x_s_a[3,13,right] >= 0
 R721: x_s_a[3,14,up] >= 0
 R722: x_s_a[3,14,down] >= 0
 R723: x_s_a[3,14,left] >= 0
 R724: x_s_a[3,14,right] >= 0
 R725: x_s_a[4,1,up] >= 0
 R726: x_s_a[4,1,down] >= 0
 R727: x_s_a[4,1,left] >= 0
 R728: x_s_a[4,1,right] >= 0
 R729: x_s_a[4,2,up] >= 0
 R730: x_s_a[4,2,down] >= 0
 R731: x_s_a[4,2,left] >= 0
 R732: x_s_a[4,2,right] >= 0
 R733: x_s_a[4,4,up] >= 0
 R734: x_s_a[4,4,down] >= 0
 R735: x_s_a[4,4,left] >= 0
 R736: x_s_a[4,4,right] >= 0
 R737: x_s_a[4,5,up] >= 0
 R738: x_s_a[4,5,down] >= 0
 R739: x_s_a[4,5,left] >= 0
 R740: x_s_a[4,5,right] >= 0
 R741: x_s_a[4,6,up] >= 0
 R742: x_s_a[4,6,down] >= 0
 R743: x_s_a[4,6,left] >= 0
 R744: x_s_a[4,6,right] >= 0
 R745: x_s_a[4,7,up] >= 0
 R746: x_s_a[4,7,down] >= 0
 R747: x_s_a[4,7,left] >= 0
 R748: x_s_a[4,7,right] >= 0
 R749: x_s_a[4,9,up] >= 0
 R750: x_s_a[4,9,down] >= 0
 R751: x_s_a[4,9,left] >= 0
 R752: x_s_a[4,9,right] >= 0
 R753: x_s_a[4,11,up] >= 0
 R754: x_s_a[4,11,down] >= 0
 R755: x_s_a[4,11,left] >= 0
 R756: x_s_a[4,11,right] >= 0
 R757: x_s_a[4,12,up] >= 0
 R758: x_s_a[4,12,down] >= 0
 R759: x_s_a[4,12,left] >= 0
 R760: x_s_a[4,12,right] >= 0
 R761: x_s_a[4,13,up] >= 0
 R762: x_s_a[4,13,down] >= 0
 R763: x_s_a[4,13,left] >= 0
 R764: x_s_a[4,13,right] >= 0
 R765: x_s_a[4,14,up] >= 0
 R766: x_s_a[4,14,down] >= 0
 R767: x_s_a[4,14,left] >= 0
 R768: x_s_a[4,14,right] >= 0
 R769: x_s_a[5,0,up] >= 0
 R770: x_s_a[5,0,down] >= 0
 R771: x_s_a[5,0,left] >= 0
 R772: x_s_a[5,0,right] >= 0
 R773: x_s_a[5,2,up] >= 0
 R774: x_s_a[5,2,down] >= 0
 R775: x_s_a[5,2,left] >= 0
 R776: x_s_a[5,2,right] >= 0
 R777: x_s_a[5,3,up] >= 0
 R778: x_s_a[5,3,down] >= 0
 R779: x_s_a[5,3,left] >= 0
 R780: x_s_a[5,3,right] >= 0
 R781: x_s_a[5,4,up] >= 0
 R782: x_s_a[5,4,down] >= 0
 R783: x_s_a[5,4,left] >= 0
 R784: x_s_a[5,4,right] >= 0
 R785: x_s_a[5,6,up] >= 0
 R786: x_s_a[5,6,down] >= 0
 R787: x_s_a[5,6,left] >= 0
 R788: x_s_a[5,6,right] >= 0
 R789: x_s_a[5,7,up] >= 0
 R790: x_s_a[5,7,down] >= 0
 R791: x_s_a[5,7,left] >= 0
 R792: x_s_a[5,7,right] >= 0
 R793: x_s_a[5,8,up] >= 0
 R794: x_s_a[5,8,down] >= 0
 R795: x_s_a[5,8,left] >= 0
 R796: x_s_a[5,8,right] >= 0
 R797: x_s_a[5,9,up] >= 0
 R798: x_s_a[5,9,down] >= 0
 R799: x_s_a[5,9,left] >= 0
 R800: x_s_a[5,9,right] >= 0
 R801: x_s_a[5,10,up] >= 0
 R802: x_s_a[5,10,down] >= 0
 R803: x_s_a[5,10,left] >= 0
 R804: x_s_a[5,10,right] >= 0
 R805: x_s_a[5,11,up] >= 0
 R806: x_s_a[5,11,down] >= 0
 R807: x_s_a[5,11,left] >= 0
 R808: x_s_a[5,11,right] >= 0
 R809: x_s_a[5,13,up] >= 0
 R810: x_s_a[5,13,down] >= 0
 R811: x_s_a[5,13,left] >= 0
 R812: x_s_a[5,13,right] >= 0
 R813: x_s_a[5,14,up] >= 0
 R814: x_s_a[5,14,down] >= 0
 R815: x_s_a[5,14,left] >= 0
 R816: x_s_a[5,14,right] >= 0
 R817: x_s_a[6,0,up] >= 0
 R818: x_s_a[6,0,down] >= 0
 R819: x_s_a[6,0,left] >= 0
 R820: x_s_a[6,0,right] >= 0
 R821: x_s_a[6,2,up] >= 0
 R822: x_s_a[6,2,down] >= 0
 R823: x_s_a[6,2,left] >= 0
 R824: x_s_a[6,2,right] >= 0
 R825: x_s_a[6,3,up] >= 0
 R826: x_s_a[6,3,down] >= 0
 R827: x_s_a[6,3,left] >= 0
 R828: x_s_a[6,3,right] >= 0
 R829: x_s_a[6,5,up] >= 0
 R830: x_s_a[6,5,down] >= 0
 R831: x_s_a[6,5,left] >= 0
 R832: x_s_a[6,5,right] >= 0
 R833: x_s_a[6,6,up] >= 0
 R834: x_s_a[6,6,down] >= 0
 R835: x_s_a[6,6,left] >= 0
 R836: x_s_a[6,6,right] >= 0
 R837: x_s_a[6,8,up] >= 0
 R838: x_s_a[6,8,down] >= 0
 R839: x_s_a[6,8,left] >= 0
 R840: x_s_a[6,8,right] >= 0
 R841: x_s_a[6,9,up] >= 0
 R842: x_s_a[6,9,down] >= 0
 R843: x_s_a[6,9,left] >= 0
 R844: x_s_a[6,9,right] >= 0
 R845: x_s_a[6,10,up] >= 0
 R846: x_s_a[6,10,down] >= 0
 R847: x_s_a[6,10,left] >= 0
 R848: x_s_a[6,10,right] >= 0
 R849: x_s_a[6,11,up] >= 0
 R850: x_s_a[6,11,down] >= 0
 R851: x_s_a[6,11,left] >= 0
 R852: x_s_a[6,11,right] >= 0
 R853: x_s_a[6,12,up] >= 0
 R854: x_s_a[6,12,down] >= 0
 R855: x_s_a[6,12,left] >= 0
 R856: x_s_a[6,12,right] >= 0
 R857: x_s_a[6,13,up] >= 0
 R858: x_s_a[6,13,down] >= 0
 R859: x_s_a[6,13,left] >= 0
 R860: x_s_a[6,13,right] >= 0
 R861: x_s_a[6,14,up] >= 0
 R862: x_s_a[6,14,down] >= 0
 R863: x_s_a[6,14,left] >= 0
 R864: x_s_a[6,14,right] >= 0
 R865: x_s_a[7,0,up] >= 0
 R866: x_s_a[7,0,down] >= 0
 R867: x_s_a[7,0,left] >= 0
 R868: x_s_a[7,0,right] >= 0
 R869: x_s_a[7,1,up] >= 0
 R870: x_s_a[7,1,down] >= 0
 R871: x_s_a[7,1,left] >= 0
 R872: x_s_a[7,1,right] >= 0
 R873: x_s_a[7,2,up] >= 0
 R874: x_s_a[7,2,down] >= 0
 R875: x_s_a[7,2,left] >= 0
 R876: x_s_a[7,2,right] >= 0
 R877: x_s_a[7,3,up] >= 0
 R878: x_s_a[7,3,down] >= 0
 R879: x_s_a[7,3,left] >= 0
 R880: x_s_a[7,3,right] >= 0
 R881: x_s_a[7,4,up] >= 0
 R882: x_s_a[7,4,down] >= 0
 R883: x_s_a[7,4,left] >= 0
 R884: x_s_a[7,4,right] >= 0
 R885: x_s_a[7,5,up] >= 0
 R886: x_s_a[7,5,down] >= 0
 R887: x_s_a[7,5,left] >= 0
 R888: x_s_a[7,5,right] >= 0
 R889: x_s_a[7,6,up] >= 0
 R890: x_s_a[7,6,down] >= 0
 R891: x_s_a[7,6,left] >= 0
 R892: x_s_a[7,6,right] >= 0
 R893: x_s_a[7,7,up] >= 0
 R894: x_s_a[7,7,down] >= 0
 R895: x_s_a[7,7,left] >= 0
 R896: x_s_a[7,7,right] >= 0
 R897: x_s_a[7,8,up] >= 0
 R898: x_s_a[7,8,down] >= 0
 R899: x_s_a[7,8,left] >= 0
 R900: x_s_a[7,8,right] >= 0
 R901: x_s_a[7,9,up] >= 0
 R902: x_s_a[7,9,down] >= 0
 R903: x_s_a[7,9,left] >= 0
 R904: x_s_a[7,9,right] >= 0
 R905: x_s_a[7,10,up] >= 0
 R906: x_s_a[7,10,down] >= 0
 R907: x_s_a[7,10,left] >= 0
 R908: x_s_a[7,10,right] >= 0
 R909: x_s_a[7,11,up] >= 0
 R910: x_s_a[7,11,down] >= 0
 R911: x_s_a[7,11,left] >= 0
 R912: x_s_a[7,11,right] >= 0
 R913: x_s_a[7,13,up] >= 0
 R914: x_s_a[7,13,down] >= 0
 R915: x_s_a[7,13,left] >= 0
 R916: x_s_a[7,13,right] >= 0
 R917: x_s_a[7,14,up] >= 0
 R918: x_s_a[7,14,down] >= 0
 R919: x_s_a[7,14,left] >= 0
 R920: x_s_a[7,14,right] >= 0
 R921: x_s_a[8,0,up] >= 0
 R922: x_s_a[8,0,down] >= 0
 R923: x_s_a[8,0,left] >= 0
 R924: x_s_a[8,0,right] >= 0
 R925: x_s_a[8,1,up] >= 0
 R926: x_s_a[8,1,down] >= 0
 R927: x_s_a[8,1,left] >= 0
 R928: x_s_a[8,1,right] >= 0
 R929: x_s_a[8,2,up] >= 0
 R930: x_s_a[8,2,down] >= 0
 R931: x_s_a[8,2,left] >= 0
 R932: x_s_a[8,2,right] >= 0
 R933: x_s_a[8,3,up] >= 0
 R934: x_s_a[8,3,down] >= 0
 R935: x_s_a[8,3,left] >= 0
 R936: x_s_a[8,3,right] >= 0
 R937: x_s_a[8,4,up] >= 0
 R938: x_s_a[8,4,down] >= 0
 R939: x_s_a[8,4,left] >= 0
 R940: x_s_a[8,4,right] >= 0
 R941: x_s_a[8,5,up] >= 0
 R942: x_s_a[8,5,down] >= 0
 R943: x_s_a[8,5,left] >= 0
 R944: x_s_a[8,5,right] >= 0
 R945: x_s_a[8,7,up] >= 0
 R946: x_s_a[8,7,down] >= 0
 R947: x_s_a[8,7,left] >= 0
 R948: x_s_a[8,7,right] >= 0
 R949: x_s_a[8,8,up] >= 0
 R950: x_s_a[8,8,down] >= 0
 R951: x_s_a[8,8,left] >= 0
 R952: x_s_a[8,8,right] >= 0
 R953: x_s_a[8,9,up] >= 0
 R954: x_s_a[8,9,down] >= 0
 R955: x_s_a[8,9,left] >= 0
 R956: x_s_a[8,9,right] >= 0
 R957: x_s_a[8,10,up] >= 0
 R958: x_s_a[8,10,down] >= 0
 R959: x_s_a[8,10,left] >= 0
 R960: x_s_a[8,10,right] >= 0
 R961: x_s_a[8,11,up] >= 0
 R962: x_s_a[8,11,down] >= 0
 R963: x_s_a[8,11,left] >= 0
 R964: x_s_a[8,11,right] >= 0
 R965: x_s_a[8,12,up] >= 0
 R966: x_s_a[8,12,down] >= 0
 R967: x_s_a[8,12,left] >= 0
 R968: x_s_a[8,12,right] >= 0
 R969: x_s_a[8,13,up] >= 0
 R970: x_s_a[8,13,down] >= 0
 R971: x_s_a[8,13,left] >= 0
 R972: x_s_a[8,13,right] >= 0
 R973: x_s_a[8,14,up] >= 0
 R974: x_s_a[8,14,down] >= 0
 R975: x_s_a[8,14,left] >= 0
 R976: x_s_a[8,14,right] >= 0
 R977: x_s_a[9,0,up] >= 0
 R978: x_s_a[9,0,down] >= 0
 R979: x_s_a[9,0,left] >= 0
 R980: x_s_a[9,0,right] >= 0
 R981: x_s_a[9,1,up] >= 0
 R982: x_s_a[9,1,down] >= 0
 R983: x_s_a[9,1,left] >= 0
 R984: x_s_a[9,1,right] >= 0
 R985: x_s_a[9,2,up] >= 0
 R986: x_s_a[9,2,down] >= 0
 R987: x_s_a[9,2,left] >= 0
 R988: x_s_a[9,2,right] >= 0
 R989: x_s_a[9,4,up] >= 0
 R990: x_s_a[9,4,down] >= 0
 R991: x_s_a[9,4,left] >= 0
 R992: x_s_a[9,4,right] >= 0
 R993: x_s_a[9,6,up] >= 0
 R994: x_s_a[9,6,down] >= 0
 R995: x_s_a[9,6,left] >= 0
 R996: x_s_a[9,6,right] >= 0
 R997: x_s_a[9,7,up] >= 0
 R998: x_s_a[9,7,down] >= 0
 R999: x_s_a[9,7,left] >= 0
 R1000: x_s_a[9,7,right] >= 0
 R1001: x_s_a[9,8,up] >= 0
 R1002: x_s_a[9,8,down] >= 0
 R1003: x_s_a[9,8,left] >= 0
 R1004: x_s_a[9,8,right] >= 0
 R1005: x_s_a[9,9,up] >= 0
 R1006: x_s_a[9,9,down] >= 0
 R1007: x_s_a[9,9,left] >= 0
 R1008: x_s_a[9,9,right] >= 0
 R1009: x_s_a[9,10,up] >= 0
 R1010: x_s_a[9,10,down] >= 0
 R1011: x_s_a[9,10,left] >= 0
 R1012: x_s_a[9,10,right] >= 0
 R1013: x_s_a[9,11,up] >= 0
 R1014: x_s_a[9,11,down] >= 0
 R1015: x_s_a[9,11,left] >= 0
 R1016: x_s_a[9,11,right] >= 0
 R1017: x_s_a[9,12,up] >= 0
 R1018: x_s_a[9,12,down] >= 0
 R1019: x_s_a[9,12,left] >= 0
 R1020: x_s_a[9,12,right] >= 0
 R1021: x_s_a[9,13,up] >= 0
 R1022: x_s_a[9,13,down] >= 0
 R1023: x_s_a[9,13,left] >= 0
 R1024: x_s_a[9,13,right] >= 0
 c1: z - 8.1 x_s_a[0,0,down] - 0.9 x_s_a[0,0,right] - 8.9 x_s_a[0,1,down]
   - 0.8 x_s_a[0,1,left] - 0.9 x_s_a[0,2,left] - 0.9 x_s_a[0,2,right]
   - x_s_a[0,3,up] - 0.5 x_s_a[0,4,down] - 0.9 x_s_a[0,4,left]
   - 3.2 x_s_a[0,4,right] - 3 x_s_a[0,5,up] - 4 x_s_a[0,5,down]
   - 0.5 x_s_a[0,6,down] - 3.2 x_s_a[0,6,left] - 6.3 x_s_a[0,6,right]
   - 7 x_s_a[0,7,up] - 6.3 x_s_a[0,8,left] - 3.6 x_s_a[0,9,right]
   - 4 x_s_a[0,10,up] - 3.6 x_s_a[0,11,left] - 4 x_s_a[0,13,up]
   - 3.2 x_s_a[0,13,down] - 4 x_s_a[0,13,left] - 1.8 x_s_a[0,13,right]
   - 2 x_s_a[0,14,up] - 0.4 x_s_a[0,14,down] - 4 x_s_a[0,14,left]
   - 2 x_s_a[0,14,right] - 8 x_s_a[1,0,left] - 8.1 x_s_a[1,0,right]
   - 9 x_s_a[1,1,down] - 6.4 x_s_a[1,1,left] - 9 x_s_a[1,1,right]
   - 0.8 x_s_a[1,3,up] - 5.7 x_s_a[1,3,down] - 0.4 x_s_a[1,4,up]
   - 1.6 x_s_a[1,4,down] - 0.8 x_s_a[1,4,left] - 5.2 x_s_a[1,4,right]
   - 2.4 x_s_a[1,5,up] - 7.2 x_s_a[1,5,down] - x_s_a[1,6,up]
   - 1.3 x_s_a[1,6,down] - 5.2 x_s_a[1,6,left] - 1.1 x_s_a[1,6,right]
   - 5.6 x_s_a[1,7,up] - 3.2 x_s_a[1,7,down] - 3.2 x_s_a[1,10,up]
   - 0.4 x_s_a[1,11,up] - 0.4 x_s_a[1,11,left] - 3.6 x_s_a[1,12,right]
   - 3.8 x_s_a[1,13,up] - 0.2 x_s_a[1,13,right] - 2.2 x_s_a[1,14,up]
   - 3.6 x_s_a[1,14,left] - 8.1 x_s_a[2,0,up] - x_s_a[2,2,up]
   - 1.6 x_s_a[2,2,down] - x_s_a[2,2,left] - 5.6 x_s_a[2,2,right]
   - 0.3 x_s_a[2,3,down] - 1.1 x_s_a[2,3,left] - 0.1 x_s_a[2,3,right]
   - 0.5 x_s_a[2,4,up] - 1.6 x_s_a[2,4,down] - 5.6 x_s_a[2,4,left]
   - 8.5 x_s_a[2,4,right] - 4 x_s_a[2,5,up] - 6.5 x_s_a[2,5,down]
   - 0.1 x_s_a[2,5,left] - 0.5 x_s_a[2,6,up] - 1.4 x_s_a[2,6,down]
   - 8.5 x_s_a[2,6,left] - 3.8 x_s_a[2,6,right] - 5.1 x_s_a[2,7,down]
   - 0.3 x_s_a[2,7,right] - 3 x_s_a[2,8,down] - 3.8 x_s_a[2,8,left]
   - 0.3 x_s_a[2,9,down] - 0.3 x_s_a[2,9,left] - 0.4 x_s_a[2,12,up]
   - 8.1 x_s_a[2,12,down] - 0.4 x_s_a[2,12,right] - 3.2 x_s_a[2,13,up]
   - 0.9 x_s_a[2,13,down] - 0.9 x_s_a[2,13,left] - 0.4 x_s_a[2,14,up]
   - 0.4 x_s_a[2,14,left] - 0.3 x_s_a[3,0,right] - 3.2 x_s_a[3,1,down]
   - 2.2 x_s_a[3,1,right] - 1.6 x_s_a[3,2,up] - 4.8 x_s_a[3,2,down]
   - 0.3 x_s_a[3,2,left] - 0.7 x_s_a[3,2,right] - 5.7 x_s_a[3,3,up]
   - 2.2 x_s_a[3,3,left] - 0.8 x_s_a[3,3,right] - 1.6 x_s_a[3,4,up]
   - 0.7 x_s_a[3,4,left] - 7.3 x_s_a[3,4,right] - 7.2 x_s_a[3,5,up]
   - 0.8 x_s_a[3,5,left] - 1.3 x_s_a[3,6,up] - 7.3 x_s_a[3,6,left]
   - 5.2 x_s_a[3,6,right] - 3.2 x_s_a[3,7,up] - 2.7 x_s_a[3,7,right]
   - 0.4 x_s_a[3,8,up] - 3 x_s_a[3,8,down] - 5.2 x_s_a[3,8,left]
   - 2.7 x_s_a[3,9,left] - 9 x_s_a[3,12,left] - 7.2 x_s_a[3,13,left]
   - 0.2 x_s_a[4,1,up] - 3 x_s_a[4,1,down] - 3 x_s_a[4,1,left]
   - 4.6 x_s_a[4,1,right] - 1.6 x_s_a[4,2,up] - 4.1 x_s_a[4,2,down]
   - 2.7 x_s_a[4,2,left] - 5 x_s_a[4,2,right] - 1.6 x_s_a[4,4,up]
   - 7.7 x_s_a[4,4,down] - 0.8 x_s_a[4,4,right] - 6.5 x_s_a[4,5,up]
   - 0.9 x_s_a[4,5,left] - 1.4 x_s_a[4,6,up] - 0.8 x_s_a[4,6,left]
   - 0.6 x_s_a[4,6,right] - 5.1 x_s_a[4,7,up] - 0.3 x_s_a[4,9,up]
   - 1.8 x_s_a[4,11,down] - 0.9 x_s_a[4,11,right] - 8.1 x_s_a[4,12,up]
   - 0.2 x_s_a[4,12,left] - 0.9 x_s_a[4,13,up] - 0.9 x_s_a[4,13,left]
   - 4.8 x_s_a[5,2,up] - 8.9 x_s_a[5,2,down] - 4 x_s_a[5,2,left]
   - 5.3 x_s_a[5,2,right] - 5 x_s_a[5,3,up] - 8.1 x_s_a[5,3,down]
   - 4.6 x_s_a[5,3,left] - 7.2 x_s_a[5,3,right] - 8 x_s_a[5,4,down]
   - 5.3 x_s_a[5,4,left] - 8 x_s_a[5,4,right] - 1.6 x_s_a[5,10,right]
   - 2 x_s_a[5,11,right] - 0.8 x_s_a[5,13,down] - 0.1 x_s_a[5,14,down]
   - 0.1 x_s_a[5,14,left] - 4.1 x_s_a[6,2,up] - 9 x_s_a[6,2,left]
   - 6.9 x_s_a[6,2,right] - 5.2 x_s_a[6,3,up] - 7.6 x_s_a[6,3,left]
   - 8 x_s_a[6,3,right] - 0.3 x_s_a[6,5,down] - 0.3 x_s_a[6,5,right]
   - 2.4 x_s_a[6,6,down] - 2.4 x_s_a[6,8,down] - 0.3 x_s_a[6,9,down]
   - 0.3 x_s_a[6,9,left] - 0.2 x_s_a[6,10,up] - 0.2 x_s_a[6,10,right]
   - 1.8 x_s_a[6,11,up] - 0.2 x_s_a[6,12,left] - 0.8 x_s_a[6,12,right]
   - 0.8 x_s_a[6,14,left] - 0.7 x_s_a[7,0,down] - 0.7 x_s_a[7,0,right]
   - 5.6 x_s_a[7,1,down] - 0.9 x_s_a[7,1,right] - 8.9 x_s_a[7,2,up]
   - 0.7 x_s_a[7,2,down] - 0.7 x_s_a[7,2,left] - 0.8 x_s_a[7,2,right]
   - 8.1 x_s_a[7,3,up] - 0.5 x_s_a[7,3,down] - 0.9 x_s_a[7,3,left]
   - 0.5 x_s_a[7,3,right] - 4.4 x_s_a[7,4,down] - 0.8 x_s_a[7,4,left]
   - 0.4 x_s_a[7,4,right] - 4.1 x_s_a[7,5,down] - 0.5 x_s_a[7,5,left]
   - 2.7 x_s_a[7,5,right] - 3 x_s_a[7,6,down] - 0.4 x_s_a[7,6,left]
   - 0.6 x_s_a[7,7,down] - 2.7 x_s_a[7,7,left] - 3 x_s_a[7,7,right]
   - 4.8 x_s_a[7,8,down] - 0.6 x_s_a[7,9,down] - 3 x_s_a[7,9,left]
   - 0.8 x_s_a[7,13,up] - 0.7 x_s_a[7,13,down] - 0.7 x_s_a[7,13,right]
   - 0.1 x_s_a[7,14,up] - 6.3 x_s_a[7,14,down] - 0.1 x_s_a[7,14,left]
   - 5.6 x_s_a[8,0,right] - 0.6 x_s_a[8,1,down] - 0.6 x_s_a[8,1,right]
   - 5.4 x_s_a[8,2,down] - 5.6 x_s_a[8,2,left] - 0.6 x_s_a[8,3,left]
   - 4 x_s_a[8,3,right] - 3.6 x_s_a[8,4,right] - 0.3 x_s_a[8,5,up]
   - 4 x_s_a[8,5,down] - 4 x_s_a[8,5,left] - 4 x_s_a[8,5,right]
   - 0.6 x_s_a[8,7,up] - 4.3 x_s_a[8,7,down] - 5.1 x_s_a[8,7,right]
   - 2.4 x_s_a[8,8,up] - 0.5 x_s_a[8,8,down] - 0.5 x_s_a[8,8,left]
   - 0.3 x_s_a[8,9,up] - 5.1 x_s_a[8,9,left] - 0.7 x_s_a[8,12,down]
   - 0.7 x_s_a[8,12,right] - 5.6 x_s_a[8,13,down] - 5.6 x_s_a[8,13,right]
   - 0.7 x_s_a[8,14,down] - 0.7 x_s_a[8,14,left] - 7 x_s_a[8,14,right]
   - 0.7 x_s_a[9,0,up] - 5.6 x_s_a[9,1,up] - 6 x_s_a[9,1,right]
   - 0.7 x_s_a[9,2,up] - 6 x_s_a[9,2,down] - 0.7 x_s_a[9,2,left]
   - 6 x_s_a[9,2,right] - 4.4 x_s_a[9,4,up] - 3 x_s_a[9,6,up]
   - 3 x_s_a[9,6,down] - 3 x_s_a[9,6,left] - 5 x_s_a[9,6,right]
   - 0.6 x_s_a[9,7,up] - 5 x_s_a[9,7,down] - 3 x_s_a[9,7,left]
   - 4.8 x_s_a[9,8,up] - 4.5 x_s_a[9,8,left] - 0.6 x_s_a[9,9,up]
   - 0.6 x_s_a[9,9,left] - 7 x_s_a[9,12,right] - 0.7 x_s_a[9,13,up]
   - 7 x_s_a[9,13,down] >= 0
 R1026: x_s_a[0,0,up] >= 0
 R1027: x_s_a[0,0,down] >= 0
 R1028: x_s_a[0,0,left] >= 0
 R1029: x_s_a[0,0,right] >= 0
 R1030: x_s_a[0,1,up] >= 0
 R1031: x_s_a[0,1,down] >= 0
 R1032: x_s_a[0,1,left] >= 0
 R1033: x_s_a[0,1,right] >= 0
 R1034: x_s_a[0,2,up] >= 0
 R1035: x_s_a[0,2,down] >= 0
 R1036: x_s_a[0,2,left] >= 0
 R1037: x_s_a[0,2,right] >= 0
 R1038: x_s_a[0,3,up] >= 0
 R1039: x_s_a[0,3,down] >= 0
 R1040: x_s_a[0,3,left] >= 0
 R1041: x_s_a[0,3,right] >= 0
 R1042: x_s_a[0,4,up] >= 0
 R1043: x_s_a[0,4,down] >= 0
 R1044: x_s_a[0,4,left] >= 0
 R1045: x_s_a[0,4,right] >= 0
 R1046: x_s_a[0,5,up] >= 0
 R1047: x_s_a[0,5,down] >= 0
 R1048: x_s_a[0,5,left] >= 0
 R1049: x_s_a[0,5,right] >= 0
 R1050: x_s_a[0,6,up] >= 0
 R1051: x_s_a[0,6,down] >= 0
 R1052: x_s_a[0,6,left] >= 0
 R1053: x_s_a[0,6,right] >= 0
 R1054: x_s_a[0,7,up] >= 0
 R1055: x_s_a[0,7,down] >= 0
 R1056: x_s_a[0,7,left] >= 0
 R1057: x_s_a[0,7,right] >= 0
 R1058: x_s_a[0,8,up] >= 0
 R1059: x_s_a[0,8,down] >= 0
 R1060: x_s_a[0,8,left] >= 0
 R1061: x_s_a[0,8,right] >= 0
 R1062: x_s_a[0,9,up] >= 0
 R1063: x_s_a[0,9,down] >= 0
 R1064: x_s_a[0,9,left] >= 0
 R1065: x_s_a[0,9,right] >= 0
 R1066: x_s_a[0,10,up] >= 0
 R1067: x_s_a[0,10,down] >= 0
 R1068: x_s_a[0,10,left] >= 0
 R1069: x_s_a[0,10,right] >= 0
 R1070: x_s_a[0,11,up] >= 0
 R1071: x_s_a[0,11,down] >= 0
 R1072: x_s_a[0,11,left] >= 0
 R1073: x_s_a[0,11,right] >= 0
 R1074: x_s_a[0,13,up] >= 0
 R1075: x_s_a[0,13,down] >= 0
 R1076: x_s_a[0,13,left] >= 0
 R1077: x_s_a[0,13,right] >= 0
 R1078: x_s_a[0,14,up] >= 0
 R1079: x_s_a[0,14,down] >= 0
 R1080: x_s_a[0,14,left] >= 0
 R1081: x_s_a[0,14,right] >= 0
 R1082: x_s_a[1,0,up] >= 0
 R1083: x_s_a[1,0,down] >= 0
 R1084: x_s_a[1,0,left] >= 0
 R1085: x_s_a[1,0,right] >= 0
 R1086: x_s_a[1,1,up] >= 0
 R1087: x_s_a[1,1,down] >= 0
 R1088: x_s_a[1,1,left] >= 0
 R1089: x_s_a[1,1,right] >= 0
 R1090: x_s_a[1,3,up] >= 0
 R1091: x_s_a[1,3,down] >= 0
 R1092: x_s_a[1,3,left] >= 0
 R1093: x_s_a[1,3,right] >= 0
 R1094: x_s_a[1,4,up] >= 0
 R1095: x_s_a[1,4,down] >= 0
 R1096: x_s_a[1,4,left] >= 0
 R1097: x_s_a[1,4,right] >= 0
 R1098: x_s_a[1,5,up] >= 0
 R1099: x_s_a[1,5,down] >= 0
 R1100: x_s_a[1,5,left] >= 0
 R1101: x_s_a[1,5,right] >= 0
 R1102: x_s_a[1,6,up] >= 0
 R1103: x_s_a[1,6,down] >= 0
 R1104: x_s_a[1,6,left] >= 0
 R1105: x_s_a[1,6,right] >= 0
 R1106: x_s_a[1,7,up] >= 0
 R1107: x_s_a[1,7,down] >= 0
 R1108: x_s_a[1,7,left] >= 0
 R1109: x_s_a[1,7,right] >= 0
 R1110: x_s_a[1,10,up] >= 0
 R1111: x_s_a[1,10,down] >= 0
 R1112: x_s_a[1,10,left] >= 0
 R1113: x_s_a[1,10,right] >= 0
 R1114: x_s_a[1,11,up] >= 0
 R1115: x_s_a[1,11,down] >= 0
 R1116: x_s_a[1,11,left] >= 0
 R1117: x_s_a[1,11,right] >= 0
 R1118: x_s_a[1,12,up] >= 0
 R1119: x_s_a[1,12,down] >= 0
 R1120: x_s_a[1,12,left] >= 0
 R1121: x_s_a[1,12,right] >= 0
 R1122: x_s_a[1,13,up] >= 0
 R1123: x_s_a[1,13,down] >= 0
 R1124: x_s_a[1,13,left] >= 0
 R1125: x_s_a[1,13,right] >= 0
 R1126: x_s_a[1,14,up] >= 0
 R1127: x_s_a[1,14,down] >= 0
 R1128: x_s_a[1,14,left] >= 0
 R1129: x_s_a[1,14,right] >= 0
 R1130: x_s_a[2,0,up] >= 0
 R1131: x_s_a[2,0,down] >= 0
 R1132: x_s_a[2,0,left] >= 0
 R1133: x_s_a[2,0,right] >= 0
 R1134: x_s_a[2,2,up] >= 0
 R1135: x_s_a[2,2,down] >= 0
 R1136: x_s_a[2,2,left] >= 0
 R1137: x_s_a[2,2,right] >= 0
 R1138: x_s_a[2,3,up] >= 0
 R1139: x_s_a[2,3,down] >= 0
 R1140: x_s_a[2,3,left] >= 0
 R1141: x_s_a[2,3,right] >= 0
 R1142: x_s_a[2,4,up] >= 0
 R1143: x_s_a[2,4,down] >= 0
 R1144: x_s_a[2,4,left] >= 0
 R1145: x_s_a[2,4,right] >= 0
 R1146: x_s_a[2,5,up] >= 0
 R1147: x_s_a[2,5,down] >= 0
 R1148: x_s_a[2,5,left] >= 0
 R1149: x_s_a[2,5,right] >= 0
 R1150: x_s_a[2,6,up] >= 0
 R1151: x_s_a[2,6,down] >= 0
 R1152: x_s_a[2,6,left] >= 0
 R1153: x_s_a[2,6,right] >= 0
 R1154: x_s_a[2,7,up] >= 0
 R1155: x_s_a[2,7,down] >= 0
 R1156: x_s_a[2,7,left] >= 0
 R1157: x_s_a[2,7,right] >= 0
 R1158: x_s_a[2,8,up] >= 0
 R1159: x_s_a[2,8,down] >= 0
 R1160: x_s_a[2,8,left] >= 0
 R1161: x_s_a[2,8,right] >= 0
 R1162: x_s_a[2,9,up] >= 0
 R1163: x_s_a[2,9,down] >= 0
 R1164: x_s_a[2,9,left] >= 0
 R1165: x_s_a[2,9,right] >= 0
 R1166: x_s_a[2,10,up] >= 0
 R1167: x_s_a[2,10,down] >= 0
 R1168: x_s_a[2,10,left] >= 0
 R1169: x_s_a[2,10,right] >= 0
 R1170: x_s_a[2,12,up] >= 0
 R1171: x_s_a[2,12,down] >= 0
 R1172: x_s_a[2,12,left] >= 0
 R1173: x_s_a[2,12,right] >= 0
 R1174: x_s_a[2,13,up] >= 0
 R1175: x_s_a[2,13,down] >= 0
 R1176: x_s_a[2,13,left] >= 0
 R1177: x_s_a[2,13,right] >= 0
 R1178: x_s_a[2,14,up] >= 0
 R1179: x_s_a[2,14,down] >= 0
 R1180: x_s_a[2,14,left] >= 0
 R1181: x_s_a[2,14,right] >= 0
 R1182: x_s_a[3,0,up] >= 0
 R1183: x_s_a[3,0,down] >= 0
 R1184: x_s_a[3,0,left] >= 0
 R1185: x_s_a[3,0,right] >= 0
 R1186: x_s_a[3,1,up] >= 0
 R1187: x_s_a[3,1,down] >= 0
 R1188: x_s_a[3,1,left] >= 0
 R1189: x_s_a[3,1,right] >= 0
 R1190: x_s_a[3,2,up] >= 0
 R1191: x_s_a[3,2,down] >= 0
 R1192: x_s_a[3,2,left] >= 0
 R1193: x_s_a[3,2,right] >= 0
 R1194: x_s_a[3,3,up] >= 0
 R1195: x_s_a[3,3,down] >= 0
 R1196: x_s_a[3,3,left] >= 0
 R1197: x_s_a[3,3,right] >= 0
 R1198: x_s_a[3,4,up] >= 0
 R1199: x_s_a[3,4,down] >= 0
 R1200: x_s_a[3,4,left] >= 0
 R1201: x_s_a[3,4,right] >= 0
 R1202: x_s_a[3,5,up] >= 0
 R1203: x_s_a[3,5,down] >= 0
 R1204: x_s_a[3,5,left] >= 0
 R1205: x_s_a[3,5,right] >= 0
 R1206: x_s_a[3,6,up] >= 0
 R1207: x_s_a[3,6,down] >= 0
 R1208: x_s_a[3,6,left] >= 0
 R1209: x_s_a[3,6,right] >= 0
 R1210: x_s_a[3,7,up] >= 0
 R1211: x_s_a[3,7,down] >= 0
 R1212: x_s_a[3,7,left] >= 0
 R1213: x_s_a[3,7,right] >= 0
 R1214: x_s_a[3,8,up] >= 0
 R1215: x_s_a[3,8,down] >= 0
 R1216: x_s_a[3,8,left] >= 0
 R1217: x_s_a[3,8,right] >= 0
 R1218: x_s_a[3,9,up] >= 0
 R1219: x_s_a[3,9,down] >= 0
 R1220: x_s_a[3,9,left] >= 0
 R1221: x_s_a[3,9,right] >= 0
 R1222: x_s_a[3,10,up] >= 0
 R1223: x_s_a[3,10,down] >= 0
 R1224: x_s_a[3,10,left] >= 0
 R1225: x_s_a[3,10,right] >= 0
 R1226: x_s_a[3,12,up] >= 0
 R1227: x_s_a[3,12,down] >= 0
 R1228: x_s_a[3,12,left] >= 0
 R1229: x_s_a[3,12,right] >= 0
 R1230: x_s_a[3,13,up] >= 0
 R1231: x_s_a[3,13,down] >= 0
 R1232: x_s_a[3,13,left] >= 0
 R1233: x_s_a[3,13,right] >= 0
 R1234: x_s_a[3,14,up] >= 0
 R1235: x_s_a[3,14,down] >= 0
 R1236: x_s_a[3,14,left] >= 0
 R1237: x_s_a[3,14,right] >= 0
 R1238: x_s_a[4,1,up] >= 0
 R1239: x_s_a[4,1,down] >= 0
 R1240: x_s_a[4,1,left] >= 0
 R1241: x_s_a[4,1,right] >= 0
 R1242: x_s_a[4,2,up] >= 0
 R1243: x_s_a[4,2,down] >= 0
 R1244: x_s_a[4,2,left] >= 0
 R1245: x_s_a[4,2,right] >= 0
 R1246: x_s_a[4,4,up] >= 0
 R1247: x_s_a[4,4,down] >= 0
 R1248: x_s_a[4,4,left] >= 0
 R1249: x_s_a[4,4,right] >= 0
 R1250: x_s_a[4,5,up] >= 0
 R1251: x_s_a[4,5,down] >= 0
 R1252: x_s_a[4,5,left] >= 0
 R1253: x_s_a[4,5,right] >= 0
 R1254: x_s_a[4,6,up] >= 0
 R1255: x_s_a[4,6,down] >= 0
 R1256: x_s_a[4,6,left] >= 0
 R1257: x_s_a[4,6,right] >= 0
 R1258: x_s_a[4,7,up] >= 0
 R1259: x_s_a[4,7,down] >= 0
 R1260: x_s_a[4,7,left] >= 0
 R1261: x_s_a[4,7,right] >= 0
 R1262: x_s_a[4,9,up] >= 0
 R1263: x_s_a[4,9,down] >= 0
 R1264: x_s_a[4,9,left] >= 0
 R1265: x_s_a[4,9,right] >= 0
 R1266: x_s_a[4,11,up] >= 0
 R1267: x_s_a[4,11,down] >= 0
 R1268: x_s_a[4,11,left] >= 0
 R1269: x_s_a[4,11,right] >= 0
 R1270: x_s_a[4,12,up] >= 0
 R1271: x_s_a[4,12,down] >= 0
 R1272: x_s_a[4,12,left] >= 0
 R1273: x_s_a[4,12,right] >= 0
 R1274: x_s_a[4,13,up] >= 0
 R1275: x_s_a[4,13,down] >= 0
 R1276: x_s_a[4,13,left] >= 0
 R1277: x_s_a[4,13,right] >= 0
 R1278: x_s_a[4,14,up] >= 0
 R1279: x_s_a[4,14,down] >= 0
 R1280: x_s_a[4,14,left] >= 0
 R1281: x_s_a[4,14,right] >= 0
 R1282: x_s_a[5,0,up] >= 0
 R1283: x_s_a[5,0,down] >= 0
 R1284: x_s_a[5,0,left] >= 0
 R1285: x_s_a[5,0,right] >= 0
 R1286: x_s_a[5,2,up] >= 0
 R1287: x_s_a[5,2,down] >= 0
 R1288: x_s_a[5,2,left] >= 0
 R1289: x_s_a[5,2,right] >= 0
 R1290: x_s_a[5,3,up] >= 0
 R1291: x_s_a[5,3,down] >= 0
 R1292: x_s_a[5,3,left] >= 0
 R1293: x_s_a[5,3,right] >= 0
 R1294: x_s_a[5,4,up] >= 0
 R1295: x_s_a[5,4,down] >= 0
 R1296: x_s_a[5,4,left] >= 0
 R1297: x_s_a[5,4,right] >= 0
 R1298: x_s_a[5,6,up] >= 0
 R1299: x_s_a[5,6,down] >= 0
 R1300: x_s_a[5,6,left] >= 0
 R1301: x_s_a[5,6,right] >= 0
 R1302: x_s_a[5,7,up] >= 0
 R1303: x_s_a[5,7,down] >= 0
 R1304: x_s_a[5,7,left] >= 0
 R1305: x_s_a[5,7,right] >= 0
 R1306: x_s_a[5,8,up] >= 0
 R1307: x_s_a[5,8,down] >= 0
 R1308: x_s_a[5,8,left] >= 0
 R1309: x_s_a[5,8,right] >= 0
 R1310: x_s_a[5,9,up] >= 0
 R1311: x_s_a[5,9,down] >= 0
 R1312: x_s_a[5,9,left] >= 0
 R1313: x_s_a[5,9,right] >= 0
 R1314: x_s_a[5,10,up] >= 0
 R1315: x_s_a[5,10,down] >= 0
 R1316: x_s_a[5,10,left] >= 0
 R1317: x_s_a[5,10,right] >= 0
 R1318: x_s_a[5,11,up] >= 0
 R1319: x_s_a[5,11,down] >= 0
 R1320: x_s_a[5,11,left] >= 0
 R1321: x_s_a[5,11,right] >= 0
 R1322: x_s_a[5,13,up] >= 0
 R1323: x_s_a[5,13,down] >= 0
 R1324: x_s_a[5,13,left] >= 0
 R1325: x_s_a[5,13,right] >= 0
 R1326: x_s_a[5,14,up] >= 0
 R1327: x_s_a[5,14,down] >= 0
 R1328: x_s_a[5,14,left] >= 0
 R1329: x_s_a[5,14,right] >= 0
 R1330: x_s_a[6,0,up] >= 0
 R1331: x_s_a[6,0,down] >= 0
 R1332: x_s_a[6,0,left] >= 0
 R1333: x_s_a[6,0,right] >= 0
 R1334: x_s_a[6,2,up] >= 0
 R1335: x_s_a[6,2,down] >= 0
 R1336: x_s_a[6,2,left] >= 0
 R1337: x_s_a[6,2,right] >= 0
 R1338: x_s_a[6,3,up] >= 0
 R1339: x_s_a[6,3,down] >= 0
 R1340: x_s_a[6,3,left] >= 0
 R1341: x_s_a[6,3,right] >= 0
 R1342: x_s_a[6,5,up] >= 0
 R1343: x_s_a[6,5,down] >= 0
 R1344: x_s_a[6,5,left] >= 0
 R1345: x_s_a[6,5,right] >= 0
 R1346: x_s_a[6,6,up] >= 0
 R1347: x_s_a[6,6,down] >= 0
 R1348: x_s_a[6,6,left] >= 0
 R1349: x_s_a[6,6,right] >= 0
 R1350: x_s_a[6,8,up] >= 0
 R1351: x_s_a[6,8,down] >= 0
 R1352: x_s_a[6,8,left] >= 0
 R1353: x_s_a[6,8,right] >= 0
 R1354: x_s_a[6,9,up] >= 0
 R1355: x_s_a[6,9,down] >= 0
 R1356: x_s_a[6,9,left] >= 0
 R1357: x_s_a[6,9,right] >= 0
 R1358: x_s_a[6,10,up] >= 0
 R1359: x_s_a[6,10,down] >= 0
 R1360: x_s_a[6,10,left] >= 0
 R1361: x_s_a[6,10,right] >= 0
 R1362: x_s_a[6,11,up] >= 0
 R1363: x_s_a[6,11,down] >= 0
 R1364: x_s_a[6,11,left] >= 0
 R1365: x_s_a[6,11,right] >= 0
 R1366: x_s_a[6,12,up] >= 0
 R1367: x_s_a[6,12,down] >= 0
 R1368: x_s_a[6,12,left] >= 0
 R1369: x_s_a[6,12,right] >= 0
 R1370: x_s_a[6,13,up] >= 0
 R1371: x_s_a[6,13,down] >= 0
 R1372: x_s_a[6,13,left] >= 0
 R1373: x_s_a[6,13,right] >= 0
 R1374: x_s_a[6,14,up] >= 0
 R1375: x_s_a[6,14,down] >= 0
 R1376: x_s_a[6,14,left] >= 0
 R1377: x_s_a[6,14,right] >= 0
 R1378: x_s_a[7,0,up] >= 0
 R1379: x_s_a[7,0,down] >= 0
 R1380: x_s_a[7,0,left] >= 0
 R1381: x_s_a[7,0,right] >= 0
 R1382: x_s_a[7,1,up] >= 0
 R1383: x_s_a[7,1,down] >= 0
 R1384: x_s_a[7,1,left] >= 0
 R1385: x_s_a[7,1,right] >= 0
 R1386: x_s_a[7,2,up] >= 0
 R1387: x_s_a[7,2,down] >= 0
 R1388: x_s_a[7,2,left] >= 0
 R1389: x_s_a[7,2,right] >= 0
 R1390: x_s_a[7,3,up] >= 0
 R1391: x_s_a[7,3,down] >= 0
 R1392: x_s_a[7,3,left] >= 0
 R1393: x_s_a[7,3,right] >= 0
 R1394: x_s_a[7,4,up] >= 0
 R1395: x_s_a[7,4,down] >= 0
 R1396: x_s_a[7,4,left] >= 0
 R1397: x_s_a[7,4,right] >= 0
 R1398: x_s_a[7,5,up] >= 0
 R1399: x_s_a[7,5,down] >= 0
 R1400: x_s_a[7,5,left] >= 0
 R1401: x_s_a[7,5,right] >= 0
 R1402: x_s_a[7,6,up] >= 0
 R1403: x_s_a[7,6,down] >= 0
 R1404: x_s_a[7,6,left] >= 0
 R1405: x_s_a[7,6,right] >= 0
 R1406: x_s_a[7,7,up] >= 0
 R1407: x_s_a[7,7,down] >= 0
 R1408: x_s_a[7,7,left] >= 0
 R1409: x_s_a[7,7,right] >= 0
 R1410: x_s_a[7,8,up] >= 0
 R1411: x_s_a[7,8,down] >= 0
 R1412: x_s_a[7,8,left] >= 0
 R1413: x_s_a[7,8,right] >= 0
 R1414: x_s_a[7,9,up] >= 0
 R1415: x_s_a[7,9,down] >= 0
 R1416: x_s_a[7,9,left] >= 0
 R1417: x_s_a[7,9,right] >= 0
 R1418: x_s_a[7,10,up] >= 0
 R1419: x_s_a[7,10,down] >= 0
 R1420: x_s_a[7,10,left] >= 0
 R1421: x_s_a[7,10,right] >= 0
 R1422: x_s_a[7,11,up] >= 0
 R1423: x_s_a[7,11,down] >= 0
 R1424: x_s_a[7,11,left] >= 0
 R1425: x_s_a[7,11,right] >= 0
 R1426: x_s_a[7,13,up] >= 0
 R1427: x_s_a[7,13,down] >= 0
 R1428: x_s_a[7,13,left] >= 0
 R1429: x_s_a[7,13,right] >= 0
 R1430: x_s_a[7,14,up] >= 0
 R1431: x_s_a[7,14,down] >= 0
 R1432: x_s_a[7,14,left] >= 0
 R1433: x_s_a[7,14,right] >= 0
 R1434: x_s_a[8,0,up] >= 0
 R1435: x_s_a[8,0,down] >= 0
 R1436: x_s_a[8,0,left] >= 0
 R1437: x_s_a[8,0,right] >= 0
 R1438: x_s_a[8,1,up] >= 0
 R1439: x_s_a[8,1,down] >= 0
 R1440: x_s_a[8,1,left] >= 0
 R1441: x_s_a[8,1,right] >= 0
 R1442: x_s_a[8,2,up] >= 0
 R1443: x_s_a[8,2,down] >= 0
 R1444: x_s_a[8,2,left] >= 0
 R1445: x_s_a[8,2,right] >= 0
 R1446: x_s_a[8,3,up] >= 0
 R1447: x_s_a[8,3,down] >= 0
 R1448: x_s_a[8,3,left] >= 0
 R1449: x_s_a[8,3,right] >= 0
 R1450: x_s_a[8,4,up] >= 0
 R1451: x_s_a[8,4,down] >= 0
 R1452: x_s_a[8,4,left] >= 0
 R1453: x_s_a[8,4,right] >= 0
 R1454: x_s_a[8,5,up] >= 0
 R1455: x_s_a[8,5,down] >= 0
 R1456: x_s_a[8,5,left] >= 0
 R1457: x_s_a[8,5,right] >= 0
 R1458: x_s_a[8,7,up] >= 0
 R1459: x_s_a[8,7,down] >= 0
 R1460: x_s_a[8,7,left] >= 0
 R1461: x_s_a[8,7,right] >= 0
 R1462: x_s_a[8,8,up] >= 0
 R1463: x_s_a[8,8,down] >= 0
 R1464: x_s_a[8,8,left] >= 0
 R1465: x_s_a[8,8,right] >= 0
 R1466: x_s_a[8,9,up] >= 0
 R1467: x_s_a[8,9,down] >= 0
 R1468: x_s_a[8,9,left] >= 0
 R1469: x_s_a[8,9,right] >= 0
 R1470: x_s_a[8,10,up] >= 0
 R1471: x_s_a[8,10,down] >= 0
 R1472: x_s_a[8,10,left] >= 0
 R1473: x_s_a[8,10,right] >= 0
 R1474: x_s_a[8,11,up] >= 0
 R1475: x_s_a[8,11,down] >= 0
 R1476: x_s_a[8,11,left] >= 0
 R1477: x_s_a[8,11,right] >= 0
 R1478: x_s_a[8,12,up] >= 0
 R1479: x_s_a[8,12,down] >= 0
 R1480: x_s_a[8,12,left] >= 0
 R1481: x_s_a[8,12,right] >= 0
 R1482: x_s_a[8,13,up] >= 0
 R1483: x_s_a[8,13,down] >= 0
 R1484: x_s_a[8,13,left] >= 0
 R1485: x_s_a[8,13,right] >= 0
 R1486: x_s_a[8,14,up] >= 0
 R1487: x_s_a[8,14,down] >= 0
 R1488: x_s_a[8,14,left] >= 0
 R1489: x_s_a[8,14,right] >= 0
 R1490: x_s_a[9,0,up] >= 0
 R1491: x_s_a[9,0,down] >= 0
 R1492: x_s_a[9,0,left] >= 0
 R1493: x_s_a[9,0,right] >= 0
 R1494: x_s_a[9,1,up] >= 0
 R1495: x_s_a[9,1,down] >= 0
 R1496: x_s_a[9,1,left] >= 0
 R1497: x_s_a[9,1,right] >= 0
 R1498: x_s_a[9,2,up] >= 0
 R1499: x_s_a[9,2,down] >= 0
 R1500: x_s_a[9,2,left] >= 0
 R1501: x_s_a[9,2,right] >= 0
 R1502: x_s_a[9,4,up] >= 0
 R1503: x_s_a[9,4,down] >= 0
 R1504: x_s_a[9,4,left] >= 0
 R1505: x_s_a[9,4,right] >= 0
 R1506: x_s_a[9,6,up] >= 0
 R1507: x_s_a[9,6,down] >= 0
 R1508: x_s_a[9,6,left] >= 0
 R1509: x_s_a[9,6,right] >= 0
 R1510: x_s_a[9,7,up] >= 0
 R1511: x_s_a[9,7,down] >= 0
 R1512: x_s_a[9,7,left] >= 0
 R1513: x_s_a[9,7,right] >= 0
 R1514: x_s_a[9,8,up] >= 0
 R1515: x_s_a[9,8,down] >= 0
 R1516: x_s_a[9,8,left] >= 0
 R1517: x_s_a[9,8,right] >= 0
 R1518: x_s_a[9,9,up] >= 0
 R1519: x_s_a[9,9,down] >= 0
 R1520: x_s_a[9,9,left] >= 0
 R1521: x_s_a[9,9,right] >= 0
 R1522: x_s_a[9,10,up] >= 0
 R1523: x_s_a[9,10,down] >= 0
 R1524: x_s_a[9,10,left] >= 0
 R1525: x_s_a[9,10,right] >= 0
 R1526: x_s_a[9,11,up] >= 0
 R1527: x_s_a[9,11,down] >= 0
 R1528: x_s_a[9,11,left] >= 0
 R1529: x_s_a[9,11,right] >= 0
 R1530: x_s_a[9,12,up] >= 0
 R1531: x_s_a[9,12,down] >= 0
 R1532: x_s_a[9,12,left] >= 0
 R1533: x_s_a[9,12,right] >= 0
 R1534: x_s_a[9,13,up] >= 0
 R1535: x_s_a[9,13,down] >= 0
 R1536: x_s_a[9,13,left] >= 0
 R1537: x_s_a[9,13,right] >= 0
 c2: z - 0.4 x_s_a[0,6,down] - 0.4 x_s_a[0,6,right] - 3.6 x_s_a[0,7,down]
   - 8 x_s_a[0,7,right] - 8 x_s_a[0,8,up] - 8 x_s_a[0,8,down]
   - 0.4 x_s_a[0,8,left] - 8 x_s_a[0,9,left] - 0.1 x_s_a[0,10,down]
   - 0.1 x_s_a[0,10,right] - 0.8 x_s_a[0,11,down] - 0.4 x_s_a[1,3,down]
   - 0.4 x_s_a[1,3,right] - 3.2 x_s_a[1,4,down] - 0.4 x_s_a[1,5,down]
   - 0.4 x_s_a[1,5,left] - 3.2 x_s_a[1,6,right] - 0.8 x_s_a[1,7,up]
   - 4 x_s_a[1,7,right] - 0.8 x_s_a[1,10,down] - 0.9 x_s_a[1,10,right]
   - x_s_a[1,11,down] - 0.9 x_s_a[1,12,left] - 3.2 x_s_a[2,3,right]
   - 3.2 x_s_a[2,5,left] - 0.4 x_s_a[2,6,up] - 0.4 x_s_a[2,6,right]
   - 3.6 x_s_a[2,7,up] - 0.4 x_s_a[2,8,left] - 7.2 x_s_a[2,8,right]
   - 8 x_s_a[2,9,up] - 0.1 x_s_a[2,10,up] - 7.2 x_s_a[2,10,left]
   - 0.1 x_s_a[2,12,up] - 0.4 x_s_a[3,3,up] - 0.4 x_s_a[3,3,right]
   - 3.2 x_s_a[3,4,up] - 0.4 x_s_a[3,5,up] - 0.8 x_s_a[3,5,down]
   - 0.4 x_s_a[3,5,left] - 0.8 x_s_a[3,5,right] - 6.4 x_s_a[3,6,down]
   - 0.8 x_s_a[3,7,down] - 0.8 x_s_a[3,7,left] - 0.8 x_s_a[3,8,up]
   - 0.8 x_s_a[3,8,right] - 6.4 x_s_a[3,9,up] - 0.8 x_s_a[3,10,up]
   - 0.8 x_s_a[3,10,left] - 0.6 x_s_a[3,12,down] - 0.6 x_s_a[3,12,right]
   - 5 x_s_a[3,13,down] - 0.2 x_s_a[3,13,right] - 2.4 x_s_a[3,14,down]
   - 0.6 x_s_a[3,14,left] - 6.4 x_s_a[4,5,right] - 6.4 x_s_a[4,7,left]
   - 0.8 x_s_a[4,9,down] - 0.8 x_s_a[4,11,down] - 4.8 x_s_a[4,12,right]
   - 1.6 x_s_a[4,13,right] - 4.8 x_s_a[4,14,left] - 2 x_s_a[4,14,right]
   - 6.4 x_s_a[5,6,up] - 5 x_s_a[5,6,down] - 0.8 x_s_a[5,7,up]
   - 1.3 x_s_a[5,7,left] - 7.2 x_s_a[5,9,right] - 8 x_s_a[5,10,up]
   - 0.1 x_s_a[5,10,down] - 0.1 x_s_a[5,10,right] - 1.3 x_s_a[5,11,down]
   - 7.2 x_s_a[5,11,left] - 5 x_s_a[5,13,up] - 0.5 x_s_a[5,13,down]
   - 0.2 x_s_a[5,13,right] - 2.4 x_s_a[5,14,up] - 0.6 x_s_a[5,14,left]
   - 5 x_s_a[6,5,up] - 5 x_s_a[6,5,left] - 4 x_s_a[6,5,right]
   - 4.5 x_s_a[6,6,left] - 5 x_s_a[6,6,right] - 0.8 x_s_a[6,9,up]
   - 0.8 x_s_a[6,9,right] - 6.4 x_s_a[6,10,up] - 0.8 x_s_a[6,10,right]
   - 0.8 x_s_a[6,11,up] - 0.8 x_s_a[6,11,left] - 5 x_s_a[6,11,right]
   - 5 x_s_a[6,12,up] - 5 x_s_a[6,12,down] - 0.8 x_s_a[6,12,left]
   - 5 x_s_a[6,13,left] - 0.5 x_s_a[7,4,right] - 5 x_s_a[7,5,up]
   - 0.5 x_s_a[7,5,right] - 5 x_s_a[7,6,up] - 0.5 x_s_a[7,6,left]
   - 0.5 x_s_a[7,7,left] - 0.1 x_s_a[7,10,up] - 0.1 x_s_a[7,10,right]
   - 1.3 x_s_a[7,11,up] - 0.6 x_s_a[7,11,down] - 0.5 x_s_a[7,13,up]
   - 0.6 x_s_a[7,13,down] - 0.4 x_s_a[8,7,down] - 0.4 x_s_a[8,7,right]
   - 3.2 x_s_a[8,8,down] - 0.4 x_s_a[8,9,down] - 0.4 x_s_a[8,9,left]
   - 5.4 x_s_a[8,11,right] - 6 x_s_a[8,12,up] - 5.4 x_s_a[8,13,left]
   - 4 x_s_a[9,7,right] - 4 x_s_a[9,8,down] - 3.6 x_s_a[9,9,left]
   - 0.6 x_s_a[9,11,up] - 4.8 x_s_a[9,12,up] - 0.6 x_s_a[9,13,up]
   - 0.6 x_s_a[9,13,left] >= 0
 R1539: x_s_a[0,0,up] >= 0
 R1540: x_s_a[0,0,down] >= 0
 R1541: x_s_a[0,0,left] >= 0
 R1542: x_s_a[0,0,right] >= 0
 R1543: x_s_a[0,1,up] >= 0
 R1544: x_s_a[0,1,down] >= 0
 R1545: x_s_a[0,1,left] >= 0
 R1546: x_s_a[0,1,right] >= 0
 R1547: x_s_a[0,2,up] >= 0
 R1548: x_s_a[0,2,down] >= 0
 R1549: x_s_a[0,2,left] >= 0
 R1550: x_s_a[0,2,right] >= 0
 R1551: x_s_a[0,3,up] >= 0
 R1552: x_s_a[0,3,down] >= 0
 R1553: x_s_a[0,3,left] >= 0
 R1554: x_s_a[0,3,right] >= 0
 R1555: x_s_a[0,4,up] >= 0
 R1556: x_s_a[0,4,down] >= 0
 R1557: x_s_a[0,4,left] >= 0
 R1558: x_s_a[0,4,right] >= 0
 R1559: x_s_a[0,5,up] >= 0
 R1560: x_s_a[0,5,down] >= 0
 R1561: x_s_a[0,5,left] >= 0
 R1562: x_s_a[0,5,right] >= 0
 R1563: x_s_a[0,6,up] >= 0
 R1564: x_s_a[0,6,down] >= 0
 R1565: x_s_a[0,6,left] >= 0
 R1566: x_s_a[0,6,right] >= 0
 R1567: x_s_a[0,7,up] >= 0
 R1568: x_s_a[0,7,down] >= 0
 R1569: x_s_a[0,7,left] >= 0
 R1570: x_s_a[0,7,right] >= 0
 R1571: x_s_a[0,8,up] >= 0
 R1572: x_s_a[0,8,down] >= 0
 R1573: x_s_a[0,8,left] >= 0
 R1574: x_s_a[0,8,right] >= 0
 R1575: x_s_a[0,9,up] >= 0
 R1576: x_s_a[0,9,down] >= 0
 R1577: x_s_a[0,9,left] >= 0
 R1578: x_s_a[0,9,right] >= 0
 R1579: x_s_a[0,10,up] >= 0
 R1580: x_s_a[0,10,down] >= 0
 R1581: x_s_a[0,10,left] >= 0
 R1582: x_s_a[0,10,right] >= 0
 R1583: x_s_a[0,11,up] >= 0
 R1584: x_s_a[0,11,down] >= 0
 R1585: x_s_a[0,11,left] >= 0
 R1586: x_s_a[0,11,right] >= 0
 R1587: x_s_a[0,13,up] >= 0
 R1588: x_s_a[0,13,down] >= 0
 R1589: x_s_a[0,13,left] >= 0
 R1590: x_s_a[0,13,right] >= 0
 R1591: x_s_a[0,14,up] >= 0
 R1592: x_s_a[0,14,down] >= 0
 R1593: x_s_a[0,14,left] >= 0
 R1594: x_s_a[0,14,right] >= 0
 R1595: x_s_a[1,0,up] >= 0
 R1596: x_s_a[1,0,down] >= 0
 R1597: x_s_a[1,0,left] >= 0
 R1598: x_s_a[1,0,right] >= 0
 R1599: x_s_a[1,1,up] >= 0
 R1600: x_s_a[1,1,down] >= 0
 R1601: x_s_a[1,1,left] >= 0
 R1602: x_s_a[1,1,right] >= 0
 R1603: x_s_a[1,3,up] >= 0
 R1604: x_s_a[1,3,down] >= 0
 R1605: x_s_a[1,3,left] >= 0
 R1606: x_s_a[1,3,right] >= 0
 R1607: x_s_a[1,4,up] >= 0
 R1608: x_s_a[1,4,down] >= 0
 R1609: x_s_a[1,4,left] >= 0
 R1610: x_s_a[1,4,right] >= 0
 R1611: x_s_a[1,5,up] >= 0
 R1612: x_s_a[1,5,down] >= 0
 R1613: x_s_a[1,5,left] >= 0
 R1614: x_s_a[1,5,right] >= 0
 R1615: x_s_a[1,6,up] >= 0
 R1616: x_s_a[1,6,down] >= 0
 R1617: x_s_a[1,6,left] >= 0
 R1618: x_s_a[1,6,right] >= 0
 R1619: x_s_a[1,7,up] >= 0
 R1620: x_s_a[1,7,down] >= 0
 R1621: x_s_a[1,7,left] >= 0
 R1622: x_s_a[1,7,right] >= 0
 R1623: x_s_a[1,10,up] >= 0
 R1624: x_s_a[1,10,down] >= 0
 R1625: x_s_a[1,10,left] >= 0
 R1626: x_s_a[1,10,right] >= 0
 R1627: x_s_a[1,11,up] >= 0
 R1628: x_s_a[1,11,down] >= 0
 R1629: x_s_a[1,11,left] >= 0
 R1630: x_s_a[1,11,right] >= 0
 R1631: x_s_a[1,12,up] >= 0
 R1632: x_s_a[1,12,down] >= 0
 R1633: x_s_a[1,12,left] >= 0
 R1634: x_s_a[1,12,right] >= 0
 R1635: x_s_a[1,13,up] >= 0
 R1636: x_s_a[1,13,down] >= 0
 R1637: x_s_a[1,13,left] >= 0
 R1638: x_s_a[1,13,right] >= 0
 R1639: x_s_a[1,14,up] >= 0
 R1640: x_s_a[1,14,down] >= 0
 R1641: x_s_a[1,14,left] >= 0
 R1642: x_s_a[1,14,right] >= 0
 R1643: x_s_a[2,0,up] >= 0
 R1644: x_s_a[2,0,down] >= 0
 R1645: x_s_a[2,0,left] >= 0
 R1646: x_s_a[2,0,right] >= 0
 R1647: x_s_a[2,2,up] >= 0
 R1648: x_s_a[2,2,down] >= 0
 R1649: x_s_a[2,2,left] >= 0
 R1650: x_s_a[2,2,right] >= 0
 R1651: x_s_a[2,3,up] >= 0
 R1652: x_s_a[2,3,down] >= 0
 R1653: x_s_a[2,3,left] >= 0
 R1654: x_s_a[2,3,right] >= 0
 R1655: x_s_a[2,4,up] >= 0
 R1656: x_s_a[2,4,down] >= 0
 R1657: x_s_a[2,4,left] >= 0
 R1658: x_s_a[2,4,right] >= 0
 R1659: x_s_a[2,5,up] >= 0
 R1660: x_s_a[2,5,down] >= 0
 R1661: x_s_a[2,5,left] >= 0
 R1662: x_s_a[2,5,right] >= 0
 R1663: x_s_a[2,6,up] >= 0
 R1664: x_s_a[2,6,down] >= 0
 R1665: x_s_a[2,6,left] >= 0
 R1666: x_s_a[2,6,right] >= 0
 R1667: x_s_a[2,7,up] >= 0
 R1668: x_s_a[2,7,down] >= 0
 R1669: x_s_a[2,7,left] >= 0
 R1670: x_s_a[2,7,right] >= 0
 R1671: x_s_a[2,8,up] >= 0
 R1672: x_s_a[2,8,down] >= 0
 R1673: x_s_a[2,8,left] >= 0
 R1674: x_s_a[2,8,right] >= 0
 R1675: x_s_a[2,9,up] >= 0
 R1676: x_s_a[2,9,down] >= 0
 R1677: x_s_a[2,9,left] >= 0
 R1678: x_s_a[2,9,right] >= 0
 R1679: x_s_a[2,10,up] >= 0
 R1680: x_s_a[2,10,down] >= 0
 R1681: x_s_a[2,10,left] >= 0
 R1682: x_s_a[2,10,right] >= 0
 R1683: x_s_a[2,12,up] >= 0
 R1684: x_s_a[2,12,down] >= 0
 R1685: x_s_a[2,12,left] >= 0
 R1686: x_s_a[2,12,right] >= 0
 R1687: x_s_a[2,13,up] >= 0
 R1688: x_s_a[2,13,down] >= 0
 R1689: x_s_a[2,13,left] >= 0
 R1690: x_s_a[2,13,right] >= 0
 R1691: x_s_a[2,14,up] >= 0
 R1692: x_s_a[2,14,down] >= 0
 R1693: x_s_a[2,14,left] >= 0
 R1694: x_s_a[2,14,right] >= 0
 R1695: x_s_a[3,0,up] >= 0
 R1696: x_s_a[3,0,down] >= 0
 R1697: x_s_a[3,0,left] >= 0
 R1698: x_s_a[3,0,right] >= 0
 R1699: x_s_a[3,1,up] >= 0
 R1700: x_s_a[3,1,down] >= 0
 R1701: x_s_a[3,1,left] >= 0
 R1702: x_s_a[3,1,right] >= 0
 R1703: x_s_a[3,2,up] >= 0
 R1704: x_s_a[3,2,down] >= 0
 R1705: x_s_a[3,2,left] >= 0
 R1706: x_s_a[3,2,right] >= 0
 R1707: x_s_a[3,3,up] >= 0
 R1708: x_s_a[3,3,down] >= 0
 R1709: x_s_a[3,3,left] >= 0
 R1710: x_s_a[3,3,right] >= 0
 R1711: x_s_a[3,4,up] >= 0
 R1712: x_s_a[3,4,down] >= 0
 R1713: x_s_a[3,4,left] >= 0
 R1714: x_s_a[3,4,right] >= 0
 R1715: x_s_a[3,5,up] >= 0
 R1716: x_s_a[3,5,down] >= 0
 R1717: x_s_a[3,5,left] >= 0
 R1718: x_s_a[3,5,right] >= 0
 R1719: x_s_a[3,6,up] >= 0
 R1720: x_s_a[3,6,down] >= 0
 R1721: x_s_a[3,6,left] >= 0
 R1722: x_s_a[3,6,right] >= 0
 R1723: x_s_a[3,7,up] >= 0
 R1724: x_s_a[3,7,down] >= 0
 R1725: x_s_a[3,7,left] >= 0
 R1726: x_s_a[3,7,right] >= 0
 R1727: x_s_a[3,8,up] >= 0
 R1728: x_s_a[3,8,down] >= 0
 R1729: x_s_a[3,8,left] >= 0
 R1730: x_s_a[3,8,right] >= 0
 R1731: x_s_a[3,9,up] >= 0
 R1732: x_s_a[3,9,down] >= 0
 R1733: x_s_a[3,9,left] >= 0
 R1734: x_s_a[3,9,right] >= 0
 R1735: x_s_a[3,10,up] >= 0
 R1736: x_s_a[3,10,down] >= 0
 R1737: x_s_a[3,10,left] >= 0
 R1738: x_s_a[3,10,right] >= 0
 R1739: x_s_a[3,12,up] >= 0
 R1740: x_s_a[3,12,down] >= 0
 R1741: x_s_a[3,12,left] >= 0
 R1742: x_s_a[3,12,right] >= 0
 R1743: x_s_a[3,13,up] >= 0
 R1744: x_s_a[3,13,down] >= 0
 R1745: x_s_a[3,13,left] >= 0
 R1746: x_s_a[3,13,right] >= 0
 R1747: x_s_a[3,14,up] >= 0
 R1748: x_s_a[3,14,down] >= 0
 R1749: x_s_a[3,14,left] >= 0
 R1750: x_s_a[3,14,right] >= 0
 R1751: x_s_a[4,1,up] >= 0
 R1752: x_s_a[4,1,down] >= 0
 R1753: x_s_a[4,1,left] >= 0
 R1754: x_s_a[4,1,right] >= 0
 R1755: x_s_a[4,2,up] >= 0
 R1756: x_s_a[4,2,down] >= 0
 R1757: x_s_a[4,2,left] >= 0
 R1758: x_s_a[4,2,right] >= 0
 R1759: x_s_a[4,4,up] >= 0
 R1760: x_s_a[4,4,down] >= 0
 R1761: x_s_a[4,4,left] >= 0
 R1762: x_s_a[4,4,right] >= 0
 R1763: x_s_a[4,5,up] >= 0
 R1764: x_s_a[4,5,down] >= 0
 R1765: x_s_a[4,5,left] >= 0
 R1766: x_s_a[4,5,right] >= 0
 R1767: x_s_a[4,6,up] >= 0
 R1768: x_s_a[4,6,down] >= 0
 R1769: x_s_a[4,6,left] >= 0
 R1770: x_s_a[4,6,right] >= 0
 R1771: x_s_a[4,7,up] >= 0
 R1772: x_s_a[4,7,down] >= 0
 R1773: x_s_a[4,7,left] >= 0
 R1774: x_s_a[4,7,right] >= 0
 R1775: x_s_a[4,9,up] >= 0
 R1776: x_s_a[4,9,down] >= 0
 R1777: x_s_a[4,9,left] >= 0
 R1778: x_s_a[4,9,right] >= 0
 R1779: x_s_a[4,11,up] >= 0
 R1780: x_s_a[4,11,down] >= 0
 R1781: x_s_a[4,11,left] >= 0
 R1782: x_s_a[4,11,right] >= 0
 R1783: x_s_a[4,12,up] >= 0
 R1784: x_s_a[4,12,down] >= 0
 R1785: x_s_a[4,12,left] >= 0
 R1786: x_s_a[4,12,right] >= 0
 R1787: x_s_a[4,13,up] >= 0
 R1788: x_s_a[4,13,down] >= 0
 R1789: x_s_a[4,13,left] >= 0
 R1790: x_s_a[4,13,right] >= 0
 R1791: x_s_a[4,14,up] >= 0
 R1792: x_s_a[4,14,down] >= 0
 R1793: x_s_a[4,14,left] >= 0
 R1794: x_s_a[4,14,right] >= 0
 R1795: x_s_a[5,0,up] >= 0
 R1796: x_s_a[5,0,down] >= 0
 R1797: x_s_a[5,0,left] >= 0
 R1798: x_s_a[5,0,right] >= 0
 R1799: x_s_a[5,2,up] >= 0
 R1800: x_s_a[5,2,down] >= 0
 R1801: x_s_a[5,2,left] >= 0
 R1802: x_s_a[5,2,right] >= 0
 R1803: x_s_a[5,3,up] >= 0
 R1804: x_s_a[5,3,down] >= 0
 R1805: x_s_a[5,3,left] >= 0
 R1806: x_s_a[5,3,right] >= 0
 R1807: x_s_a[5,4,up] >= 0
 R1808: x_s_a[5,4,down] >= 0
 R1809: x_s_a[5,4,left] >= 0
 R1810: x_s_a[5,4,right] >= 0
 R1811: x_s_a[5,6,up] >= 0
 R1812: x_s_a[5,6,down] >= 0
 R1813: x_s_a[5,6,left] >= 0
 R1814: x_s_a[5,6,right] >= 0
 R1815: x_s_a[5,7,up] >= 0
 R1816: x_s_a[5,7,down] >= 0
 R1817: x_s_a[5,7,left] >= 0
 R1818: x_s_a[5,7,right] >= 0
 R1819: x_s_a[5,8,up] >= 0
 R1820: x_s_a[5,8,down] >= 0
 R1821: x_s_a[5,8,left] >= 0
 R1822: x_s_a[5,8,right] >= 0
 R1823: x_s_a[5,9,up] >= 0
 R1824: x_s_a[5,9,down] >= 0
 R1825: x_s_a[5,9,left] >= 0
 R1826: x_s_a[5,9,right] >= 0
 R1827: x_s_a[5,10,up] >= 0
 R1828: x_s_a[5,10,down] >= 0
 R1829: x_s_a[5,10,left] >= 0
 R1830: x_s_a[5,10,right] >= 0
 R1831: x_s_a[5,11,up] >= 0
 R1832: x_s_a[5,11,down] >= 0
 R1833: x_s_a[5,11,left] >= 0
 R1834: x_s_a[5,11,right] >= 0
 R1835: x_s_a[5,13,up] >= 0
 R1836: x_s_a[5,13,down] >= 0
 R1837: x_s_a[5,13,left] >= 0
 R1838: x_s_a[5,13,right] >= 0
 R1839: x_s_a[5,14,up] >= 0
 R1840: x_s_a[5,14,down] >= 0
 R1841: x_s_a[5,14,left] >= 0
 R1842: x_s_a[5,14,right] >= 0
 R1843: x_s_a[6,0,up] >= 0
 R1844: x_s_a[6,0,down] >= 0
 R1845: x_s_a[6,0,left] >= 0
 R1846: x_s_a[6,0,right] >= 0
 R1847: x_s_a[6,2,up] >= 0
 R1848: x_s_a[6,2,down] >= 0
 R1849: x_s_a[6,2,left] >= 0
 R1850: x_s_a[6,2,right] >= 0
 R1851: x_s_a[6,3,up] >= 0
 R1852: x_s_a[6,3,down] >= 0
 R1853: x_s_a[6,3,left] >= 0
 R1854: x_s_a[6,3,right] >= 0
 R1855: x_s_a[6,5,up] >= 0
 R1856: x_s_a[6,5,down] >= 0
 R1857: x_s_a[6,5,left] >= 0
 R1858: x_s_a[6,5,right] >= 0
 R1859: x_s_a[6,6,up] >= 0
 R1860: x_s_a[6,6,down] >= 0
 R1861: x_s_a[6,6,left] >= 0
 R1862: x_s_a[6,6,right] >= 0
 R1863: x_s_a[6,8,up] >= 0
 R1864: x_s_a[6,8,down] >= 0
 R1865: x_s_a[6,8,left] >= 0
 R1866: x_s_a[6,8,right] >= 0
 R1867: x_s_a[6,9,up] >= 0
 R1868: x_s_a[6,9,down] >= 0
 R1869: x_s_a[6,9,left] >= 0
 R1870: x_s_a[6,9,right] >= 0
 R1871: x_s_a[6,10,up] >= 0
 R1872: x_s_a[6,10,down] >= 0
 R1873: x_s_a[6,10,left] >= 0
 R1874: x_s_a[6,10,right] >= 0
 R1875: x_s_a[6,11,up] >= 0
 R1876: x_s_a[6,11,down] >= 0
 R1877: x_s_a[6,11,left] >= 0
 R1878: x_s_a[6,11,right] >= 0
 R1879: x_s_a[6,12,up] >= 0
 R1880: x_s_a[6,12,down] >= 0
 R1881: x_s_a[6,12,left] >= 0
 R1882: x_s_a[6,12,right] >= 0
 R1883: x_s_a[6,13,up] >= 0
 R1884: x_s_a[6,13,down] >= 0
 R1885: x_s_a[6,13,left] >= 0
 R1886: x_s_a[6,13,right] >= 0
 R1887: x_s_a[6,14,up] >= 0
 R1888: x_s_a[6,14,down] >= 0
 R1889: x_s_a[6,14,left] >= 0
 R1890: x_s_a[6,14,right] >= 0
 R1891: x_s_a[7,0,up] >= 0
 R1892: x_s_a[7,0,down] >= 0
 R1893: x_s_a[7,0,left] >= 0
 R1894: x_s_a[7,0,right] >= 0
 R1895: x_s_a[7,1,up] >= 0
 R1896: x_s_a[7,1,down] >= 0
 R1897: x_s_a[7,1,left] >= 0
 R1898: x_s_a[7,1,right] >= 0
 R1899: x_s_a[7,2,up] >= 0
 R1900: x_s_a[7,2,down] >= 0
 R1901: x_s_a[7,2,left] >= 0
 R1902: x_s_a[7,2,right] >= 0
 R1903: x_s_a[7,3,up] >= 0
 R1904: x_s_a[7,3,down] >= 0
 R1905: x_s_a[7,3,left] >= 0
 R1906: x_s_a[7,3,right] >= 0
 R1907: x_s_a[7,4,up] >= 0
 R1908: x_s_a[7,4,down] >= 0
 R1909: x_s_a[7,4,left] >= 0
 R1910: x_s_a[7,4,right] >= 0
 R1911: x_s_a[7,5,up] >= 0
 R1912: x_s_a[7,5,down] >= 0
 R1913: x_s_a[7,5,left] >= 0
 R1914: x_s_a[7,5,right] >= 0
 R1915: x_s_a[7,6,up] >= 0
 R1916: x_s_a[7,6,down] >= 0
 R1917: x_s_a[7,6,left] >= 0
 R1918: x_s_a[7,6,right] >= 0
 R1919: x_s_a[7,7,up] >= 0
 R1920: x_s_a[7,7,down] >= 0
 R1921: x_s_a[7,7,left] >= 0
 R1922: x_s_a[7,7,right] >= 0
 R1923: x_s_a[7,8,up] >= 0
 R1924: x_s_a[7,8,down] >= 0
 R1925: x_s_a[7,8,left] >= 0
 R1926: x_s_a[7,8,right] >= 0
 R1927: x_s_a[7,9,up] >= 0
 R1928: x_s_a[7,9,down] >= 0
 R1929: x_s_a[7,9,left] >= 0
 R1930: x_s_a[7,9,right] >= 0
 R1931: x_s_a[7,10,up] >= 0
 R1932: x_s_a[7,10,down] >= 0
 R1933: x_s_a[7,10,left] >= 0
 R1934: x_s_a[7,10,right] >= 0
 R1935: x_s_a[7,11,up] >= 0
 R1936: x_s_a[7,11,down] >= 0
 R1937: x_s_a[7,11,left] >= 0
 R1938: x_s_a[7,11,right] >= 0
 R1939: x_s_a[7,13,up] >= 0
 R1940: x_s_a[7,13,down] >= 0
 R1941: x_s_a[7,13,left] >= 0
 R1942: x_s_a[7,13,right] >= 0
 R1943: x_s_a[7,14,up] >= 0
 R1944: x_s_a[7,14,down] >= 0
 R1945: x_s_a[7,14,left] >= 0
 R1946: x_s_a[7,14,right] >= 0
 R1947: x_s_a[8,0,up] >= 0
 R1948: x_s_a[8,0,down] >= 0
 R1949: x_s_a[8,0,left] >= 0
 R1950: x_s_a[8,0,right] >= 0
 R1951: x_s_a[8,1,up] >= 0
 R1952: x_s_a[8,1,down] >= 0
 R1953: x_s_a[8,1,left] >= 0
 R1954: x_s_a[8,1,right] >= 0
 R1955: x_s_a[8,2,up] >= 0
 R1956: x_s_a[8,2,down] >= 0
 R1957: x_s_a[8,2,left] >= 0
 R1958: x_s_a[8,2,right] >= 0
 R1959: x_s_a[8,3,up] >= 0
 R1960: x_s_a[8,3,down] >= 0
 R1961: x_s_a[8,3,left] >= 0
 R1962: x_s_a[8,3,right] >= 0
 R1963: x_s_a[8,4,up] >= 0
 R1964: x_s_a[8,4,down] >= 0
 R1965: x_s_a[8,4,left] >= 0
 R1966: x_s_a[8,4,right] >= 0
 R1967: x_s_a[8,5,up] >= 0
 R1968: x_s_a[8,5,down] >= 0
 R1969: x_s_a[8,5,left] >= 0
 R1970: x_s_a[8,5,right] >= 0
 R1971: x_s_a[8,7,up] >= 0
 R1972: x_s_a[8,7,down] >= 0
 R1973: x_s_a[8,7,left] >= 0
 R1974: x_s_a[8,7,right] >= 0
 R1975: x_s_a[8,8,up] >= 0
 R1976: x_s_a[8,8,down] >= 0
 R1977: x_s_a[8,8,left] >= 0
 R1978: x_s_a[8,8,right] >= 0
 R1979: x_s_a[8,9,up] >= 0
 R1980: x_s_a[8,9,down] >= 0
 R1981: x_s_a[8,9,left] >= 0
 R1982: x_s_a[8,9,right] >= 0
 R1983: x_s_a[8,10,up] >= 0
 R1984: x_s_a[8,10,down] >= 0
 R1985: x_s_a[8,10,left] >= 0
 R1986: x_s_a[8,10,right] >= 0
 R1987: x_s_a[8,11,up] >= 0
 R1988: x_s_a[8,11,down] >= 0
 R1989: x_s_a[8,11,left] >= 0
 R1990: x_s_a[8,11,right] >= 0
 R1991: x_s_a[8,12,up] >= 0
 R1992: x_s_a[8,12,down] >= 0
 R1993: x_s_a[8,12,left] >= 0
 R1994: x_s_a[8,12,right] >= 0
 R1995: x_s_a[8,13,up] >= 0
 R1996: x_s_a[8,13,down] >= 0
 R1997: x_s_a[8,13,left] >= 0
 R1998: x_s_a[8,13,right] >= 0
 R1999: x_s_a[8,14,up] >= 0
 R2000: x_s_a[8,14,down] >= 0
 R2001: x_s_a[8,14,left] >= 0
 R2002: x_s_a[8,14,right] >= 0
 R2003: x_s_a[9,0,up] >= 0
 R2004: x_s_a[9,0,down] >= 0
 R2005: x_s_a[9,0,left] >= 0
 R2006: x_s_a[9,0,right] >= 0
 R2007: x_s_a[9,1,up] >= 0
 R2008: x_s_a[9,1,down] >= 0
 R2009: x_s_a[9,1,left] >= 0
 R2010: x_s_a[9,1,right] >= 0
 R2011: x_s_a[9,2,up] >= 0
 R2012: x_s_a[9,2,down] >= 0
 R2013: x_s_a[9,2,left] >= 0
 R2014: x_s_a[9,2,right] >= 0
 R2015: x_s_a[9,4,up] >= 0
 R2016: x_s_a[9,4,down] >= 0
 R2017: x_s_a[9,4,left] >= 0
 R2018: x_s_a[9,4,right] >= 0
 R2019: x_s_a[9,6,up] >= 0
 R2020: x_s_a[9,6,down] >= 0
 R2021: x_s_a[9,6,left] >= 0
 R2022: x_s_a[9,6,right] >= 0
 R2023: x_s_a[9,7,up] >= 0
 R2024: x_s_a[9,7,down] >= 0
 R2025: x_s_a[9,7,left] >= 0
 R2026: x_s_a[9,7,right] >= 0
 R2027: x_s_a[9,8,up] >= 0
 R2028: x_s_a[9,8,down] >= 0
 R2029: x_s_a[9,8,left] >= 0
 R2030: x_s_a[9,8,right] >= 0
 R2031: x_s_a[9,9,up] >= 0
 R2032: x_s_a[9,9,down] >= 0
 R2033: x_s_a[9,9,left] >= 0
 R2034: x_s_a[9,9,right] >= 0
 R2035: x_s_a[9,10,up] >= 0
 R2036: x_s_a[9,10,down] >= 0
 R2037: x_s_a[9,10,left] >= 0
 R2038: x_s_a[9,10,right] >= 0
 R2039: x_s_a[9,11,up] >= 0
 R2040: x_s_a[9,11,down] >= 0
 R2041: x_s_a[9,11,left] >= 0
 R2042: x_s_a[9,11,right] >= 0
 R2043: x_s_a[9,12,up] >= 0
 R2044: x_s_a[9,12,down] >= 0
 R2045: x_s_a[9,12,left] >= 0
 R2046: x_s_a[9,12,right] >= 0
 R2047: x_s_a[9,13,up] >= 0
 R2048: x_s_a[9,13,down] >= 0
 R2049: x_s_a[9,13,left] >= 0
 R2050: x_s_a[9,13,right] >= 0
 c3: z - 8 x_s_a[0,1,right] - 8 x_s_a[0,2,up] - 8 x_s_a[0,2,down]
   - 8 x_s_a[0,3,left] - 4.5 x_s_a[0,3,right] - 5 x_s_a[0,4,up]
   - 4.5 x_s_a[0,5,left] - 3.6 x_s_a[0,5,right] - 4 x_s_a[0,6,up]
   - 3.6 x_s_a[0,7,left] - 0.8 x_s_a[0,11,down] - 0.8 x_s_a[0,13,down]
   - 0.8 x_s_a[1,1,up] - 1.3 x_s_a[1,3,up] - 0.5 x_s_a[1,3,right]
   - 4 x_s_a[1,4,up] - 0.9 x_s_a[1,5,up] - 0.5 x_s_a[1,5,left]
   - 0.4 x_s_a[1,5,right] - 3.2 x_s_a[1,6,up] - 0.4 x_s_a[1,7,up]
   - 0.4 x_s_a[1,7,left] - 8.1 x_s_a[1,10,down] - 0.9 x_s_a[1,11,left]
   - 7.2 x_s_a[1,11,right] - 8 x_s_a[1,12,up] - 7.2 x_s_a[1,13,left]
   - 2.7 x_s_a[2,0,down] - 0.7 x_s_a[2,2,down] - 0.7 x_s_a[2,2,right]
   - 5.6 x_s_a[2,3,down] - 0.7 x_s_a[2,4,down] - 0.7 x_s_a[2,4,left]
   - 7.2 x_s_a[2,9,right] - 9 x_s_a[2,10,right] - 6.4 x_s_a[2,12,up]
   - 0.7 x_s_a[2,12,down] - 0.7 x_s_a[2,12,right] - 0.8 x_s_a[2,13,up]
   - 5.6 x_s_a[2,13,down] - 0.8 x_s_a[2,13,left] - 0.7 x_s_a[2,14,down]
   - 0.7 x_s_a[2,14,left] - 3 x_s_a[3,0,down] - 3 x_s_a[3,0,left]
   - 2.7 x_s_a[3,1,left] - 6.3 x_s_a[3,2,right] - 7 x_s_a[3,3,down]
   - 0.9 x_s_a[3,3,right] - 8.1 x_s_a[3,4,down] - 6.3 x_s_a[3,4,left]
   - 0.9 x_s_a[3,5,down] - 0.9 x_s_a[3,5,left] - 0.6 x_s_a[3,6,down]
   - 0.6 x_s_a[3,6,right] - 5.4 x_s_a[3,7,down] - 0.6 x_s_a[3,8,left]
   - 0.9 x_s_a[3,9,up] - 0.9 x_s_a[3,9,right] - 8.1 x_s_a[3,10,up]
   - 5.6 x_s_a[3,12,right] - 5.6 x_s_a[3,14,left] - 0.3 x_s_a[4,1,up]
   - 0.7 x_s_a[4,2,up] - 0.7 x_s_a[4,4,up] - 9 x_s_a[4,4,left]
   - 7.2 x_s_a[4,5,left] - 4.8 x_s_a[4,6,right] - 0.9 x_s_a[4,7,down]
   - 6 x_s_a[4,7,right] - 0.9 x_s_a[4,9,down] - 0.7 x_s_a[4,12,up]
   - 0.9 x_s_a[4,12,right] - 5.6 x_s_a[4,13,up] - 2.7 x_s_a[4,13,down]
   - 0.9 x_s_a[4,13,right] - 0.7 x_s_a[4,14,up] - 8.3 x_s_a[4,14,down]
   - 0.9 x_s_a[4,14,left] - 5 x_s_a[5,0,up] - 5 x_s_a[5,0,left]
   - 5 x_s_a[5,0,right] - 0.9 x_s_a[5,3,right] - 8.1 x_s_a[5,4,up]
   - 0.6 x_s_a[5,6,up] - 0.6 x_s_a[5,6,right] - 5.4 x_s_a[5,7,up]
   - 8.1 x_s_a[5,7,right] - 9 x_s_a[5,8,up] - 0.6 x_s_a[5,8,left]
   - 8.1 x_s_a[5,9,left] - 0.6 x_s_a[5,13,down] - 2 x_s_a[5,13,left]
   - 7.8 x_s_a[5,13,right] - 5.4 x_s_a[5,14,down] - 1.6 x_s_a[5,14,left]
   - 9 x_s_a[5,14,right] - 5 x_s_a[6,0,up] - 1.6 x_s_a[6,0,down]
   - 0.7 x_s_a[6,2,down] - 0.6 x_s_a[6,3,down] - 0.6 x_s_a[6,5,down]
   - 7.2 x_s_a[6,8,up] - 0.5 x_s_a[6,8,down] - 0.5 x_s_a[6,8,right]
   - 0.9 x_s_a[6,9,up] - 4.5 x_s_a[6,9,down] - 0.9 x_s_a[6,9,left]
   - 0.5 x_s_a[6,9,right] - 4.5 x_s_a[6,10,down] - 0.5 x_s_a[6,10,left]
   - 0.5 x_s_a[6,11,down] - 0.5 x_s_a[6,11,left] - 0.7 x_s_a[6,12,right]
   - 2.7 x_s_a[6,13,up] - 4.7 x_s_a[6,13,down] - 5.9 x_s_a[6,13,right]
   - 8.3 x_s_a[6,14,up] - 2.3 x_s_a[6,14,down] - 0.7 x_s_a[6,14,left]
   - 6 x_s_a[6,14,right] - x_s_a[7,0,left] - 6.3 x_s_a[7,0,right]
   - 7 x_s_a[7,1,up] - 0.8 x_s_a[7,1,left] - 6.3 x_s_a[7,2,left]
   - 5.4 x_s_a[7,3,right] - 6 x_s_a[7,4,up] - 5.4 x_s_a[7,5,left]
   - 0.9 x_s_a[7,6,right] - 8.1 x_s_a[7,7,down] - 0.9 x_s_a[7,8,down]
   - 0.9 x_s_a[7,8,left] - 4 x_s_a[7,8,right] - 0.5 x_s_a[7,9,down]
   - 4.5 x_s_a[7,9,right] - 4.6 x_s_a[7,10,down] - 4 x_s_a[7,10,left]
   - 0.6 x_s_a[7,10,right] - 5.3 x_s_a[7,11,down] - 4.5 x_s_a[7,11,left]
   - 0.6 x_s_a[7,13,up] - 5 x_s_a[7,13,left] - 2.2 x_s_a[7,13,right]
   - 5.4 x_s_a[7,14,up] - 4 x_s_a[7,14,left] - 2 x_s_a[7,14,right]
   - 1.6 x_s_a[8,0,up] - 0.7 x_s_a[8,0,down] - 1.4 x_s_a[8,0,right]
   - 5.7 x_s_a[8,1,up] - 5.6 x_s_a[8,1,down] - 0.1 x_s_a[8,1,left]
   - 0.7 x_s_a[8,2,up] - 0.7 x_s_a[8,2,down] - 1.4 x_s_a[8,2,left]
   - 0.6 x_s_a[8,3,up] - 0.6 x_s_a[8,3,right] - 4.8 x_s_a[8,4,up]
   - 0.6 x_s_a[8,5,up] - 0.6 x_s_a[8,5,left] - 9 x_s_a[8,7,left]
   - 0.5 x_s_a[8,8,up] - 7.2 x_s_a[8,8,left] - 0.5 x_s_a[8,8,right]
   - 4.5 x_s_a[8,9,up] - 0.1 x_s_a[8,9,down] - 4.6 x_s_a[8,9,right]
   - 4.5 x_s_a[8,10,up] - 0.8 x_s_a[8,10,down] - 0.5 x_s_a[8,10,left]
   - 4.8 x_s_a[8,10,right] - 0.5 x_s_a[8,11,up] - 0.3 x_s_a[8,11,down]
   - 4.6 x_s_a[8,11,left] - 0.2 x_s_a[8,11,right] - 1.6 x_s_a[8,12,down]
   - 4.8 x_s_a[8,12,left] - 0.5 x_s_a[8,12,right] - 4.7 x_s_a[8,13,up]
   - 0.2 x_s_a[8,13,down] - 0.2 x_s_a[8,13,left] - 0.2 x_s_a[8,13,right]
   - 2.3 x_s_a[8,14,up] - 0.5 x_s_a[8,14,left] - 7 x_s_a[9,0,right]
   - 7 x_s_a[9,1,down] - 6.3 x_s_a[9,2,left] - 8.1 x_s_a[9,7,up]
   - 0.9 x_s_a[9,8,up] - 0.9 x_s_a[9,8,left] - 0.5 x_s_a[9,9,up]
   - x_s_a[9,9,right] - 4.6 x_s_a[9,10,up] - x_s_a[9,10,down]
   - 5.3 x_s_a[9,11,up] - 1.4 x_s_a[9,11,left] - 2 x_s_a[9,11,right]
   - 0.6 x_s_a[9,12,up] - 2 x_s_a[9,12,down] - 0.6 x_s_a[9,12,left]
   - 1.8 x_s_a[9,13,left] >= 0
 R2052: 0.01 x_s_a[0,0,up] + x_s_a[0,0,down] + 0.01 x_s_a[0,0,left]
   + x_s_a[0,0,right] - 0.891 x_s_a[0,1,left] - 0.891 x_s_a[1,0,up]
   - 0.099 x_s_a[1,1,up] - 0.099 x_s_a[1,1,left] = 1
 R2053: - 0.891 x_s_a[0,0,right] + 0.01 x_s_a[0,1,up] + x_s_a[0,1,down]
   + x_s_a[0,1,left] + x_s_a[0,1,right] - 0.891 x_s_a[0,2,left]
   - 0.099 x_s_a[1,0,up] - 0.099 x_s_a[1,0,right] - 0.792 x_s_a[1,1,up]
   = 1
 R2054: - 0.99 x_s_a[0,1,right] + 0.01 x_s_a[0,2,up] + 0.01 x_s_a[0,2,down]
   + x_s_a[0,2,left] + x_s_a[0,2,right] - 0.99 x_s_a[0,3,left]
   - 0.099 x_s_a[1,1,up] - 0.099 x_s_a[1,3,up] = 1
 R2055: - 0.891 x_s_a[0,2,right] + 0.01 x_s_a[0,3,up] + x_s_a[0,3,down]
   + x_s_a[0,3,left] + x_s_a[0,3,right] - 0.891 x_s_a[0,4,left]
   - 0.792 x_s_a[1,3,up] - 0.099 x_s_a[1,4,up] - 0.099 x_s_a[1,4,left] = 1
 R2056: - 0.891 x_s_a[0,3,right] + 0.01 x_s_a[0,4,up] + x_s_a[0,4,down]
   + x_s_a[0,4,left] + x_s_a[0,4,right] - 0.891 x_s_a[0,5,left]
   - 0.099 x_s_a[1,3,up] - 0.099 x_s_a[1,3,right] - 0.792 x_s_a[1,4,up]
   - 0.099 x_s_a[1,5,up] - 0.099 x_s_a[1,5,left] = 1
 R2057: - 0.891 x_s_a[0,4,right] + 0.01 x_s_a[0,5,up] + x_s_a[0,5,down]
   + x_s_a[0,5,left] + x_s_a[0,5,right] - 0.891 x_s_a[0,6,left]
   - 0.099 x_s_a[1,4,up] - 0.099 x_s_a[1,4,right] - 0.792 x_s_a[1,5,up]
   - 0.099 x_s_a[1,6,up] - 0.099 x_s_a[1,6,left] = 1
 R2058: - 0.891 x_s_a[0,5,right] + 0.01 x_s_a[0,6,up] + x_s_a[0,6,down]
   + x_s_a[0,6,left] + x_s_a[0,6,right] - 0.891 x_s_a[0,7,left]
   - 0.099 x_s_a[1,5,up] - 0.099 x_s_a[1,5,right] - 0.792 x_s_a[1,6,up]
   - 0.099 x_s_a[1,7,up] - 0.099 x_s_a[1,7,left] = 1
 R2059: - 0.891 x_s_a[0,6,right] + 0.01 x_s_a[0,7,up] + x_s_a[0,7,down]
   + x_s_a[0,7,left] + x_s_a[0,7,right] - 0.891 x_s_a[0,8,left]
   - 0.099 x_s_a[1,6,up] - 0.099 x_s_a[1,6,right] - 0.792 x_s_a[1,7,up]
   = 1
 R2060: - 0.99 x_s_a[0,7,right] + 0.01 x_s_a[0,8,up] + 0.01 x_s_a[0,8,down]
   + x_s_a[0,8,left] + x_s_a[0,8,right] - 0.99 x_s_a[0,9,left]
   - 0.099 x_s_a[1,7,up] = 1
 R2061: - 0.99 x_s_a[0,8,right] + 0.01 x_s_a[0,9,up] + 0.01 x_s_a[0,9,down]
   + x_s_a[0,9,left] + x_s_a[0,9,right] - 0.99 x_s_a[0,10,left]
   - 0.099 x_s_a[1,10,up] = 1
 R2062: - 0.891 x_s_a[0,9,right] + 0.01 x_s_a[0,10,up] + x_s_a[0,10,down]
   + x_s_a[0,10,left] + x_s_a[0,10,right] - 0.891 x_s_a[0,11,left]
   - 0.792 x_s_a[1,10,up] - 0.099 x_s_a[1,11,up] - 0.099 x_s_a[1,11,left]
   = 1
 R2063: - 0.891 x_s_a[0,10,right] + 0.01 x_s_a[0,11,up] + x_s_a[0,11,down]
   + x_s_a[0,11,left] + 0.01 x_s_a[0,11,right] - 0.099 x_s_a[1,10,up]
   - 0.099 x_s_a[1,10,right] - 0.891 x_s_a[1,11,up]
   - 0.099 x_s_a[1,12,left] = 1
 R2064: 0.01 x_s_a[0,13,up] + x_s_a[0,13,down] + 0.01 x_s_a[0,13,left]
   + x_s_a[0,13,right] - 0.891 x_s_a[0,14,left] - 0.099 x_s_a[1,12,right]
   - 0.891 x_s_a[1,13,up] - 0.099 x_s_a[1,14,up] - 0.099 x_s_a[1,14,left]
   = 1
 R2065: - 0.891 x_s_a[0,13,right] + 0.01 x_s_a[0,14,up] + x_s_a[0,14,down]
   + x_s_a[0,14,left] + 0.01 x_s_a[0,14,right] - 0.099 x_s_a[1,13,up]
   - 0.099 x_s_a[1,13,right] - 0.891 x_s_a[1,14,up] = 1
 R2066: - 0.891 x_s_a[0,0,down] - 0.099 x_s_a[0,1,down]
   - 0.099 x_s_a[0,1,left] + x_s_a[1,0,up] + x_s_a[1,0,down]
   + 0.01 x_s_a[1,0,left] + x_s_a[1,0,right] - 0.792 x_s_a[1,1,left]
   - 0.891 x_s_a[2,0,up] = 1
 R2067: - 0.099 x_s_a[0,0,down] - 0.099 x_s_a[0,0,right]
   - 0.891 x_s_a[0,1,down] - 0.099 x_s_a[0,2,left] - 0.891 x_s_a[1,0,right]
   + x_s_a[1,1,up] + 0.01 x_s_a[1,1,down] + x_s_a[1,1,left]
   + 0.01 x_s_a[1,1,right] - 0.099 x_s_a[2,0,up] = 1
 R2068: - 0.099 x_s_a[0,2,right] - 0.891 x_s_a[0,3,down]
   - 0.099 x_s_a[0,4,down] - 0.099 x_s_a[0,4,left] + x_s_a[1,3,up]
   + x_s_a[1,3,down] + 0.01 x_s_a[1,3,left] + x_s_a[1,3,right]
   - 0.792 x_s_a[1,4,left] - 0.099 x_s_a[2,2,right] - 0.891 x_s_a[2,3,up]
   - 0.099 x_s_a[2,4,up] - 0.099 x_s_a[2,4,left] = 1
 R2069: - 0.099 x_s_a[0,3,down] - 0.099 x_s_a[0,3,right]
   - 0.792 x_s_a[0,4,down] - 0.099 x_s_a[0,5,down] - 0.099 x_s_a[0,5,left]
   - 0.792 x_s_a[1,3,right] + x_s_a[1,4,up] + x_s_a[1,4,down]
   + x_s_a[1,4,left] + x_s_a[1,4,right] - 0.792 x_s_a[1,5,left]
   - 0.099 x_s_a[2,3,up] - 0.099 x_s_a[2,3,right] - 0.792 x_s_a[2,4,up]
   - 0.099 x_s_a[2,5,up] - 0.099 x_s_a[2,5,left] = 1
 R2070: - 0.099 x_s_a[0,4,down] - 0.099 x_s_a[0,4,right]
   - 0.792 x_s_a[0,5,down] - 0.099 x_s_a[0,6,down] - 0.099 x_s_a[0,6,left]
   - 0.792 x_s_a[1,4,right] + x_s_a[1,5,up] + x_s_a[1,5,down]
   + x_s_a[1,5,left] + x_s_a[1,5,right] - 0.792 x_s_a[1,6,left]
   - 0.099 x_s_a[2,4,up] - 0.099 x_s_a[2,4,right] - 0.792 x_s_a[2,5,up]
   - 0.099 x_s_a[2,6,up] - 0.099 x_s_a[2,6,left] = 1
 R2071: - 0.099 x_s_a[0,5,down] - 0.099 x_s_a[0,5,right]
   - 0.792 x_s_a[0,6,down] - 0.099 x_s_a[0,7,down] - 0.099 x_s_a[0,7,left]
   - 0.792 x_s_a[1,5,right] + x_s_a[1,6,up] + x_s_a[1,6,down]
   + x_s_a[1,6,left] + x_s_a[1,6,right] - 0.792 x_s_a[1,7,left]
   - 0.099 x_s_a[2,5,up] - 0.099 x_s_a[2,5,right] - 0.792 x_s_a[2,6,up]
   - 0.099 x_s_a[2,7,up] - 0.099 x_s_a[2,7,left] = 1
 R2072: - 0.099 x_s_a[0,6,down] - 0.099 x_s_a[0,6,right]
   - 0.891 x_s_a[0,7,down] - 0.099 x_s_a[0,8,left] - 0.792 x_s_a[1,6,right]
   + x_s_a[1,7,up] + x_s_a[1,7,down] + x_s_a[1,7,left]
   + 0.01 x_s_a[1,7,right] - 0.099 x_s_a[2,6,up] - 0.099 x_s_a[2,6,right]
   - 0.891 x_s_a[2,7,up] - 0.099 x_s_a[2,8,left] = 1
 R2073: - 0.099 x_s_a[0,9,right] - 0.891 x_s_a[0,10,down]
   - 0.099 x_s_a[0,11,down] - 0.099 x_s_a[0,11,left] + x_s_a[1,10,up]
   + x_s_a[1,10,down] + 0.01 x_s_a[1,10,left] + x_s_a[1,10,right]
   - 0.792 x_s_a[1,11,left] - 0.099 x_s_a[2,9,right] - 0.891 x_s_a[2,10,up]
   = 1
 R2074: - 0.099 x_s_a[0,10,down] - 0.099 x_s_a[0,10,right]
   - 0.792 x_s_a[0,11,down] - 0.891 x_s_a[1,10,right] + x_s_a[1,11,up]
   + 0.01 x_s_a[1,11,down] + x_s_a[1,11,left] + x_s_a[1,11,right]
   - 0.891 x_s_a[1,12,left] - 0.099 x_s_a[2,10,up] - 0.099 x_s_a[2,12,up]
   = 1
 R2075: - 0.099 x_s_a[0,11,down] - 0.099 x_s_a[0,13,down]
   - 0.891 x_s_a[1,11,right] + 0.01 x_s_a[1,12,up] + x_s_a[1,12,down]
   + x_s_a[1,12,left] + x_s_a[1,12,right] - 0.891 x_s_a[1,13,left]
   - 0.792 x_s_a[2,12,up] - 0.099 x_s_a[2,13,up] - 0.099 x_s_a[2,13,left]
   = 1
 R2076: - 0.792 x_s_a[0,13,down] - 0.099 x_s_a[0,14,down]
   - 0.099 x_s_a[0,14,left] - 0.792 x_s_a[1,12,right] + x_s_a[1,13,up]
   + x_s_a[1,13,down] + x_s_a[1,13,left] + x_s_a[1,13,right]
   - 0.792 x_s_a[1,14,left] - 0.099 x_s_a[2,12,up]
   - 0.099 x_s_a[2,12,right] - 0.792 x_s_a[2,13,up] - 0.099 x_s_a[2,14,up]
   - 0.099 x_s_a[2,14,left] = 1
 R2077: - 0.099 x_s_a[0,13,down] - 0.099 x_s_a[0,13,right]
   - 0.891 x_s_a[0,14,down] - 0.792 x_s_a[1,13,right] + x_s_a[1,14,up]
   + x_s_a[1,14,down] + x_s_a[1,14,left] + 0.01 x_s_a[1,14,right]
   - 0.099 x_s_a[2,13,up] - 0.099 x_s_a[2,13,right] - 0.891 x_s_a[2,14,up]
   = 1
 R2078: - 0.99 x_s_a[1,0,down] - 0.099 x_s_a[1,1,left] + x_s_a[2,0,up]
   + x_s_a[2,0,down] + 0.01 x_s_a[2,0,left] + 0.01 x_s_a[2,0,right]
   - 0.99 x_s_a[3,0,up] - 0.099 x_s_a[3,1,left] = 1
 R2079: - 0.099 x_s_a[1,3,down] + 0.01 x_s_a[2,2,up] + x_s_a[2,2,down]
   + 0.01 x_s_a[2,2,left] + x_s_a[2,2,right] - 0.891 x_s_a[2,3,left]
   - 0.099 x_s_a[3,1,right] - 0.891 x_s_a[3,2,up] - 0.099 x_s_a[3,3,up]
   - 0.099 x_s_a[3,3,left] = 1
 R2080: - 0.792 x_s_a[1,3,down] - 0.099 x_s_a[1,4,down]
   - 0.099 x_s_a[1,4,left] - 0.792 x_s_a[2,2,right] + x_s_a[2,3,up]
   + x_s_a[2,3,down] + x_s_a[2,3,left] + x_s_a[2,3,right]
   - 0.792 x_s_a[2,4,left] - 0.099 x_s_a[3,2,up] - 0.099 x_s_a[3,2,right]
   - 0.792 x_s_a[3,3,up] - 0.099 x_s_a[3,4,up] - 0.099 x_s_a[3,4,left] = 1
 R2081: - 0.099 x_s_a[1,3,down] - 0.099 x_s_a[1,3,right]
   - 0.792 x_s_a[1,4,down] - 0.099 x_s_a[1,5,down] - 0.099 x_s_a[1,5,left]
   - 0.792 x_s_a[2,3,right] + x_s_a[2,4,up] + x_s_a[2,4,down]
   + x_s_a[2,4,left] + x_s_a[2,4,right] - 0.792 x_s_a[2,5,left]
   - 0.099 x_s_a[3,3,up] - 0.099 x_s_a[3,3,right] - 0.792 x_s_a[3,4,up]
   - 0.099 x_s_a[3,5,up] - 0.099 x_s_a[3,5,left] = 1
 R2082: - 0.099 x_s_a[1,4,down] - 0.099 x_s_a[1,4,right]
   - 0.792 x_s_a[1,5,down] - 0.099 x_s_a[1,6,down] - 0.099 x_s_a[1,6,left]
   - 0.792 x_s_a[2,4,right] + x_s_a[2,5,up] + x_s_a[2,5,down]
   + x_s_a[2,5,left] + x_s_a[2,5,right] - 0.792 x_s_a[2,6,left]
   - 0.099 x_s_a[3,4,up] - 0.099 x_s_a[3,4,right] - 0.792 x_s_a[3,5,up]
   - 0.099 x_s_a[3,6,up] - 0.099 x_s_a[3,6,left] = 1
 R2083: - 0.099 x_s_a[1,5,down] - 0.099 x_s_a[1,5,right]
   - 0.792 x_s_a[1,6,down] - 0.099 x_s_a[1,7,down] - 0.099 x_s_a[1,7,left]
   - 0.792 x_s_a[2,5,right] + x_s_a[2,6,up] + x_s_a[2,6,down]
   + x_s_a[2,6,left] + x_s_a[2,6,right] - 0.792 x_s_a[2,7,left]
   - 0.099 x_s_a[3,5,up] - 0.099 x_s_a[3,5,right] - 0.792 x_s_a[3,6,up]
   - 0.099 x_s_a[3,7,up] - 0.099 x_s_a[3,7,left] = 1
 R2084: - 0.099 x_s_a[1,6,down] - 0.099 x_s_a[1,6,right]
   - 0.792 x_s_a[1,7,down] - 0.792 x_s_a[2,6,right] + x_s_a[2,7,up]
   + x_s_a[2,7,down] + x_s_a[2,7,left] + x_s_a[2,7,right]
   - 0.792 x_s_a[2,8,left] - 0.099 x_s_a[3,6,up] - 0.099 x_s_a[3,6,right]
   - 0.792 x_s_a[3,7,up] - 0.099 x_s_a[3,8,up] - 0.099 x_s_a[3,8,left] = 1
 R2085: - 0.099 x_s_a[1,7,down] - 0.891 x_s_a[2,7,right]
   + 0.01 x_s_a[2,8,up] + x_s_a[2,8,down] + x_s_a[2,8,left]
   + x_s_a[2,8,right] - 0.891 x_s_a[2,9,left] - 0.099 x_s_a[3,7,up]
   - 0.099 x_s_a[3,7,right] - 0.792 x_s_a[3,8,up] - 0.099 x_s_a[3,9,up]
   - 0.099 x_s_a[3,9,left] = 1
 R2086: - 0.099 x_s_a[1,10,down] - 0.891 x_s_a[2,8,right]
   + 0.01 x_s_a[2,9,up] + x_s_a[2,9,down] + x_s_a[2,9,left]
   + x_s_a[2,9,right] - 0.891 x_s_a[2,10,left] - 0.099 x_s_a[3,8,up]
   - 0.099 x_s_a[3,8,right] - 0.792 x_s_a[3,9,up] - 0.099 x_s_a[3,10,up]
   - 0.099 x_s_a[3,10,left] = 1
 R2087: - 0.891 x_s_a[1,10,down] - 0.099 x_s_a[1,11,left]
   - 0.792 x_s_a[2,9,right] + x_s_a[2,10,up] + x_s_a[2,10,down]
   + x_s_a[2,10,left] + 0.01 x_s_a[2,10,right] - 0.099 x_s_a[3,9,up]
   - 0.099 x_s_a[3,9,right] - 0.891 x_s_a[3,10,up] = 1
 R2088: - 0.099 x_s_a[1,11,right] - 0.891 x_s_a[1,12,down]
   - 0.099 x_s_a[1,13,down] - 0.099 x_s_a[1,13,left] + x_s_a[2,12,up]
   + x_s_a[2,12,down] + 0.01 x_s_a[2,12,left] + x_s_a[2,12,right]
   - 0.792 x_s_a[2,13,left] - 0.891 x_s_a[3,12,up] - 0.099 x_s_a[3,13,up]
   - 0.099 x_s_a[3,13,left] = 1
 R2089: - 0.099 x_s_a[1,12,down] - 0.099 x_s_a[1,12,right]
   - 0.792 x_s_a[1,13,down] - 0.099 x_s_a[1,14,down]
   - 0.099 x_s_a[1,14,left] - 0.792 x_s_a[2,12,right] + x_s_a[2,13,up]
   + x_s_a[2,13,down] + x_s_a[2,13,left] + x_s_a[2,13,right]
   - 0.792 x_s_a[2,14,left] - 0.099 x_s_a[3,12,up]
   - 0.099 x_s_a[3,12,right] - 0.792 x_s_a[3,13,up] - 0.099 x_s_a[3,14,up]
   - 0.099 x_s_a[3,14,left] = 1
 R2090: - 0.099 x_s_a[1,13,down] - 0.099 x_s_a[1,13,right]
   - 0.891 x_s_a[1,14,down] - 0.792 x_s_a[2,13,right] + x_s_a[2,14,up]
   + x_s_a[2,14,down] + x_s_a[2,14,left] + 0.01 x_s_a[2,14,right]
   - 0.099 x_s_a[3,13,up] - 0.099 x_s_a[3,13,right] - 0.891 x_s_a[3,14,up]
   = 1
 R2091: - 0.891 x_s_a[2,0,down] + x_s_a[3,0,up] + 0.01 x_s_a[3,0,down]
   + 0.01 x_s_a[3,0,left] + x_s_a[3,0,right] - 0.891 x_s_a[3,1,left]
   - 0.099 x_s_a[4,1,up] = 1
 R2092: - 0.099 x_s_a[2,0,down] - 0.099 x_s_a[2,2,down]
   - 0.891 x_s_a[3,0,right] + 0.01 x_s_a[3,1,up] + x_s_a[3,1,down]
   + x_s_a[3,1,left] + x_s_a[3,1,right] - 0.891 x_s_a[3,2,left]
   - 0.792 x_s_a[4,1,up] - 0.099 x_s_a[4,2,up] - 0.099 x_s_a[4,2,left] = 1
 R2093: - 0.792 x_s_a[2,2,down] - 0.099 x_s_a[2,3,down]
   - 0.099 x_s_a[2,3,left] - 0.792 x_s_a[3,1,right] + x_s_a[3,2,up]
   + x_s_a[3,2,down] + x_s_a[3,2,left] + x_s_a[3,2,right]
   - 0.792 x_s_a[3,3,left] - 0.099 x_s_a[4,1,up] - 0.099 x_s_a[4,1,right]
   - 0.792 x_s_a[4,2,up] = 1
 R2094: - 0.099 x_s_a[2,2,down] - 0.099 x_s_a[2,2,right]
   - 0.792 x_s_a[2,3,down] - 0.099 x_s_a[2,4,down] - 0.099 x_s_a[2,4,left]
   - 0.891 x_s_a[3,2,right] + x_s_a[3,3,up] + 0.01 x_s_a[3,3,down]
   + x_s_a[3,3,left] + x_s_a[3,3,right] - 0.891 x_s_a[3,4,left]
   - 0.099 x_s_a[4,2,up] - 0.099 x_s_a[4,4,up] = 1
 R2095: - 0.099 x_s_a[2,3,down] - 0.099 x_s_a[2,3,right]
   - 0.792 x_s_a[2,4,down] - 0.099 x_s_a[2,5,down] - 0.099 x_s_a[2,5,left]
   - 0.792 x_s_a[3,3,right] + x_s_a[3,4,up] + x_s_a[3,4,down]
   + x_s_a[3,4,left] + x_s_a[3,4,right] - 0.792 x_s_a[3,5,left]
   - 0.792 x_s_a[4,4,up] - 0.099 x_s_a[4,5,up] - 0.099 x_s_a[4,5,left] = 1
 R2096: - 0.099 x_s_a[2,4,down] - 0.099 x_s_a[2,4,right]
   - 0.792 x_s_a[2,5,down] - 0.099 x_s_a[2,6,down] - 0.099 x_s_a[2,6,left]
   - 0.792 x_s_a[3,4,right] + x_s_a[3,5,up] + x_s_a[3,5,down]
   + x_s_a[3,5,left] + x_s_a[3,5,right] - 0.792 x_s_a[3,6,left]
   - 0.099 x_s_a[4,4,up] - 0.099 x_s_a[4,4,right] - 0.792 x_s_a[4,5,up]
   - 0.099 x_s_a[4,6,up] - 0.099 x_s_a[4,6,left] = 1
 R2097: - 0.099 x_s_a[2,5,down] - 0.099 x_s_a[2,5,right]
   - 0.792 x_s_a[2,6,down] - 0.099 x_s_a[2,7,down] - 0.099 x_s_a[2,7,left]
   - 0.792 x_s_a[3,5,right] + x_s_a[3,6,up] + x_s_a[3,6,down]
   + x_s_a[3,6,left] + x_s_a[3,6,right] - 0.792 x_s_a[3,7,left]
   - 0.099 x_s_a[4,5,up] - 0.099 x_s_a[4,5,right] - 0.792 x_s_a[4,6,up]
   - 0.099 x_s_a[4,7,up] - 0.099 x_s_a[4,7,left] = 1
 R2098: - 0.099 x_s_a[2,6,down] - 0.099 x_s_a[2,6,right]
   - 0.792 x_s_a[2,7,down] - 0.099 x_s_a[2,8,down] - 0.099 x_s_a[2,8,left]
   - 0.792 x_s_a[3,6,right] + x_s_a[3,7,up] + x_s_a[3,7,down]
   + x_s_a[3,7,left] + x_s_a[3,7,right] - 0.792 x_s_a[3,8,left]
   - 0.099 x_s_a[4,6,up] - 0.099 x_s_a[4,6,right] - 0.792 x_s_a[4,7,up]
   = 1
 R2099: - 0.099 x_s_a[2,7,down] - 0.099 x_s_a[2,7,right]
   - 0.792 x_s_a[2,8,down] - 0.099 x_s_a[2,9,down] - 0.099 x_s_a[2,9,left]
   - 0.891 x_s_a[3,7,right] + x_s_a[3,8,up] + 0.01 x_s_a[3,8,down]
   + x_s_a[3,8,left] + x_s_a[3,8,right] - 0.891 x_s_a[3,9,left]
   - 0.099 x_s_a[4,7,up] - 0.099 x_s_a[4,9,up] = 1
 R2100: - 0.099 x_s_a[2,8,down] - 0.099 x_s_a[2,8,right]
   - 0.792 x_s_a[2,9,down] - 0.099 x_s_a[2,10,down]
   - 0.099 x_s_a[2,10,left] - 0.792 x_s_a[3,8,right] + x_s_a[3,9,up]
   + x_s_a[3,9,down] + x_s_a[3,9,left] + x_s_a[3,9,right]
   - 0.792 x_s_a[3,10,left] - 0.792 x_s_a[4,9,up] = 1
 R2101: - 0.099 x_s_a[2,9,down] - 0.099 x_s_a[2,9,right]
   - 0.891 x_s_a[2,10,down] - 0.891 x_s_a[3,9,right] + x_s_a[3,10,up]
   + 0.01 x_s_a[3,10,down] + x_s_a[3,10,left] + 0.01 x_s_a[3,10,right]
   - 0.099 x_s_a[4,9,up] = 1
 R2102: - 0.891 x_s_a[2,12,down] - 0.099 x_s_a[2,13,down]
   - 0.099 x_s_a[2,13,left] + x_s_a[3,12,up] + x_s_a[3,12,down]
   + 0.01 x_s_a[3,12,left] + x_s_a[3,12,right] - 0.792 x_s_a[3,13,left]
   - 0.099 x_s_a[4,11,right] - 0.891 x_s_a[4,12,up] - 0.099 x_s_a[4,13,up]
   - 0.099 x_s_a[4,13,left] = 1
 R2103: - 0.099 x_s_a[2,12,down] - 0.099 x_s_a[2,12,right]
   - 0.792 x_s_a[2,13,down] - 0.099 x_s_a[2,14,down]
   - 0.099 x_s_a[2,14,left] - 0.792 x_s_a[3,12,right] + x_s_a[3,13,up]
   + x_s_a[3,13,down] + x_s_a[3,13,left] + x_s_a[3,13,right]
   - 0.792 x_s_a[3,14,left] - 0.099 x_s_a[4,12,up]
   - 0.099 x_s_a[4,12,right] - 0.792 x_s_a[4,13,up] - 0.099 x_s_a[4,14,up]
   - 0.099 x_s_a[4,14,left] = 1
 R2104: - 0.099 x_s_a[2,13,down] - 0.099 x_s_a[2,13,right]
   - 0.891 x_s_a[2,14,down] - 0.792 x_s_a[3,13,right] + x_s_a[3,14,up]
   + x_s_a[3,14,down] + x_s_a[3,14,left] + 0.01 x_s_a[3,14,right]
   - 0.099 x_s_a[4,13,up] - 0.099 x_s_a[4,13,right] - 0.891 x_s_a[4,14,up]
   = 1
 R2105: - 0.099 x_s_a[3,0,right] - 0.891 x_s_a[3,1,down]
   - 0.099 x_s_a[3,2,down] - 0.099 x_s_a[3,2,left] + x_s_a[4,1,up]
   + 0.01 x_s_a[4,1,down] + 0.01 x_s_a[4,1,left] + x_s_a[4,1,right]
   - 0.891 x_s_a[4,2,left] - 0.099 x_s_a[5,2,up] = 1
 R2106: - 0.099 x_s_a[3,1,down] - 0.099 x_s_a[3,1,right]
   - 0.891 x_s_a[3,2,down] - 0.099 x_s_a[3,3,left] - 0.792 x_s_a[4,1,right]
   + x_s_a[4,2,up] + x_s_a[4,2,down] + x_s_a[4,2,left]
   + 0.01 x_s_a[4,2,right] - 0.891 x_s_a[5,2,up] - 0.099 x_s_a[5,3,left]
   = 1
 R2107: - 0.099 x_s_a[3,3,right] - 0.891 x_s_a[3,4,down]
   - 0.099 x_s_a[3,5,down] - 0.099 x_s_a[3,5,left] + x_s_a[4,4,up]
   + x_s_a[4,4,down] + 0.01 x_s_a[4,4,left] + x_s_a[4,4,right]
   - 0.792 x_s_a[4,5,left] - 0.099 x_s_a[5,3,right] - 0.891 x_s_a[5,4,up]
   = 1
 R2108: - 0.099 x_s_a[3,4,down] - 0.099 x_s_a[3,4,right]
   - 0.792 x_s_a[3,5,down] - 0.099 x_s_a[3,6,down] - 0.099 x_s_a[3,6,left]
   - 0.891 x_s_a[4,4,right] + x_s_a[4,5,up] + 0.01 x_s_a[4,5,down]
   + x_s_a[4,5,left] + x_s_a[4,5,right] - 0.891 x_s_a[4,6,left]
   - 0.099 x_s_a[5,4,up] - 0.099 x_s_a[5,6,up] = 1
 R2109: - 0.099 x_s_a[3,5,down] - 0.099 x_s_a[3,5,right]
   - 0.792 x_s_a[3,6,down] - 0.099 x_s_a[3,7,down] - 0.099 x_s_a[3,7,left]
   - 0.792 x_s_a[4,5,right] + x_s_a[4,6,up] + x_s_a[4,6,down]
   + x_s_a[4,6,left] + x_s_a[4,6,right] - 0.792 x_s_a[4,7,left]
   - 0.792 x_s_a[5,6,up] - 0.099 x_s_a[5,7,up] - 0.099 x_s_a[5,7,left] = 1
 R2110: - 0.099 x_s_a[3,6,down] - 0.099 x_s_a[3,6,right]
   - 0.891 x_s_a[3,7,down] - 0.099 x_s_a[3,8,left] - 0.792 x_s_a[4,6,right]
   + x_s_a[4,7,up] + x_s_a[4,7,down] + x_s_a[4,7,left]
   + 0.01 x_s_a[4,7,right] - 0.099 x_s_a[5,6,up] - 0.099 x_s_a[5,6,right]
   - 0.891 x_s_a[5,7,up] - 0.099 x_s_a[5,8,left] = 1
 R2111: - 0.099 x_s_a[3,8,right] - 0.99 x_s_a[3,9,down]
   - 0.099 x_s_a[3,10,left] + x_s_a[4,9,up] + x_s_a[4,9,down]
   + 0.01 x_s_a[4,9,left] + 0.01 x_s_a[4,9,right] - 0.099 x_s_a[5,8,right]
   - 0.99 x_s_a[5,9,up] - 0.099 x_s_a[5,10,left] = 1
 R2112: - 0.099 x_s_a[3,12,down] + 0.01 x_s_a[4,11,up] + x_s_a[4,11,down]
   + 0.01 x_s_a[4,11,left] + x_s_a[4,11,right] - 0.891 x_s_a[4,12,left]
   - 0.099 x_s_a[5,10,right] - 0.891 x_s_a[5,11,up] = 1
 R2113: - 0.792 x_s_a[3,12,down] - 0.099 x_s_a[3,13,down]
   - 0.099 x_s_a[3,13,left] - 0.891 x_s_a[4,11,right] + x_s_a[4,12,up]
   + 0.01 x_s_a[4,12,down] + x_s_a[4,12,left] + x_s_a[4,12,right]
   - 0.891 x_s_a[4,13,left] - 0.099 x_s_a[5,11,up] - 0.099 x_s_a[5,13,up]
   = 1
 R2114: - 0.099 x_s_a[3,12,down] - 0.099 x_s_a[3,12,right]
   - 0.792 x_s_a[3,13,down] - 0.099 x_s_a[3,14,down]
   - 0.099 x_s_a[3,14,left] - 0.792 x_s_a[4,12,right] + x_s_a[4,13,up]
   + x_s_a[4,13,down] + x_s_a[4,13,left] + x_s_a[4,13,right]
   - 0.792 x_s_a[4,14,left] - 0.792 x_s_a[5,13,up] - 0.099 x_s_a[5,14,up]
   - 0.099 x_s_a[5,14,left] = 1
 R2115: - 0.099 x_s_a[3,13,down] - 0.099 x_s_a[3,13,right]
   - 0.891 x_s_a[3,14,down] - 0.792 x_s_a[4,13,right] + x_s_a[4,14,up]
   + x_s_a[4,14,down] + x_s_a[4,14,left] + 0.01 x_s_a[4,14,right]
   - 0.099 x_s_a[5,13,up] - 0.099 x_s_a[5,13,right] - 0.891 x_s_a[5,14,up]
   = 1
 R2116: 0.01 x_s_a[5,0,up] + x_s_a[5,0,down] + 0.01 x_s_a[5,0,left]
   + 0.01 x_s_a[5,0,right] - 0.99 x_s_a[6,0,up] = 1
 R2117: - 0.099 x_s_a[4,1,right] - 0.891 x_s_a[4,2,down] + x_s_a[5,2,up]
   + x_s_a[5,2,down] + 0.01 x_s_a[5,2,left] + x_s_a[5,2,right]
   - 0.792 x_s_a[5,3,left] - 0.891 x_s_a[6,2,up] - 0.099 x_s_a[6,3,up]
   - 0.099 x_s_a[6,3,left] = 1
 R2118: - 0.099 x_s_a[4,2,down] - 0.099 x_s_a[4,4,down]
   - 0.891 x_s_a[5,2,right] + 0.01 x_s_a[5,3,up] + x_s_a[5,3,down]
   + x_s_a[5,3,left] + x_s_a[5,3,right] - 0.891 x_s_a[5,4,left]
   - 0.099 x_s_a[6,2,up] - 0.099 x_s_a[6,2,right] - 0.792 x_s_a[6,3,up]
   = 1
 R2119: - 0.891 x_s_a[4,4,down] - 0.099 x_s_a[4,5,left]
   - 0.891 x_s_a[5,3,right] + x_s_a[5,4,up] + 0.01 x_s_a[5,4,down]
   + x_s_a[5,4,left] + 0.01 x_s_a[5,4,right] - 0.099 x_s_a[6,3,up] = 1
 R2120: - 0.099 x_s_a[4,5,right] - 0.891 x_s_a[4,6,down]
   - 0.099 x_s_a[4,7,down] - 0.099 x_s_a[4,7,left] + x_s_a[5,6,up]
   + x_s_a[5,6,down] + 0.01 x_s_a[5,6,left] + x_s_a[5,6,right]
   - 0.792 x_s_a[5,7,left] - 0.099 x_s_a[6,5,right] - 0.891 x_s_a[6,6,up]
   = 1
 R2121: - 0.099 x_s_a[4,6,down] - 0.099 x_s_a[4,6,right]
   - 0.792 x_s_a[4,7,down] - 0.891 x_s_a[5,6,right] + x_s_a[5,7,up]
   + 0.01 x_s_a[5,7,down] + x_s_a[5,7,left] + x_s_a[5,7,right]
   - 0.891 x_s_a[5,8,left] - 0.099 x_s_a[6,6,up] - 0.099 x_s_a[6,8,up] = 1
 R2122: - 0.099 x_s_a[4,7,down] - 0.099 x_s_a[4,9,down]
   - 0.891 x_s_a[5,7,right] + 0.01 x_s_a[5,8,up] + x_s_a[5,8,down]
   + x_s_a[5,8,left] + x_s_a[5,8,right] - 0.891 x_s_a[5,9,left]
   - 0.792 x_s_a[6,8,up] - 0.099 x_s_a[6,9,up] - 0.099 x_s_a[6,9,left] = 1
 R2123: - 0.792 x_s_a[4,9,down] - 0.792 x_s_a[5,8,right] + x_s_a[5,9,up]
   + x_s_a[5,9,down] + x_s_a[5,9,left] + x_s_a[5,9,right]
   - 0.792 x_s_a[5,10,left] - 0.099 x_s_a[6,8,up] - 0.099 x_s_a[6,8,right]
   - 0.792 x_s_a[6,9,up] - 0.099 x_s_a[6,10,up] - 0.099 x_s_a[6,10,left]
   = 1
 R2124: - 0.099 x_s_a[4,9,down] - 0.099 x_s_a[4,11,down]
   - 0.891 x_s_a[5,9,right] + 0.01 x_s_a[5,10,up] + x_s_a[5,10,down]
   + x_s_a[5,10,left] + x_s_a[5,10,right] - 0.891 x_s_a[5,11,left]
   - 0.099 x_s_a[6,9,up] - 0.099 x_s_a[6,9,right] - 0.792 x_s_a[6,10,up]
   - 0.099 x_s_a[6,11,up] - 0.099 x_s_a[6,11,left] = 1
 R2125: - 0.891 x_s_a[4,11,down] - 0.099 x_s_a[4,12,left]
   - 0.792 x_s_a[5,10,right] + x_s_a[5,11,up] + x_s_a[5,11,down]
   + x_s_a[5,11,left] + 0.01 x_s_a[5,11,right] - 0.099 x_s_a[6,10,up]
   - 0.099 x_s_a[6,10,right] - 0.891 x_s_a[6,11,up]
   - 0.099 x_s_a[6,12,left] = 1
 R2126: - 0.099 x_s_a[4,12,right] - 0.891 x_s_a[4,13,down]
   - 0.099 x_s_a[4,14,down] - 0.099 x_s_a[4,14,left] + x_s_a[5,13,up]
   + x_s_a[5,13,down] + 0.01 x_s_a[5,13,left] + x_s_a[5,13,right]
   - 0.792 x_s_a[5,14,left] - 0.099 x_s_a[6,12,right]
   - 0.891 x_s_a[6,13,up] - 0.099 x_s_a[6,14,up] - 0.099 x_s_a[6,14,left]
   = 1
 R2127: - 0.099 x_s_a[4,13,down] - 0.099 x_s_a[4,13,right]
   - 0.891 x_s_a[4,14,down] - 0.792 x_s_a[5,13,right] + x_s_a[5,14,up]
   + x_s_a[5,14,down] + x_s_a[5,14,left] + 0.01 x_s_a[5,14,right]
   - 0.099 x_s_a[6,13,up] - 0.099 x_s_a[6,13,right] - 0.891 x_s_a[6,14,up]
   = 1
 R2128: - 0.99 x_s_a[5,0,down] + x_s_a[6,0,up] + x_s_a[6,0,down]
   + 0.01 x_s_a[6,0,left] + 0.01 x_s_a[6,0,right] - 0.99 x_s_a[7,0,up]
   - 0.099 x_s_a[7,1,left] = 1
 R2129: - 0.891 x_s_a[5,2,down] - 0.099 x_s_a[5,3,down]
   - 0.099 x_s_a[5,3,left] + x_s_a[6,2,up] + x_s_a[6,2,down]
   + 0.01 x_s_a[6,2,left] + x_s_a[6,2,right] - 0.792 x_s_a[6,3,left]
   - 0.099 x_s_a[7,1,right] - 0.891 x_s_a[7,2,up] - 0.099 x_s_a[7,3,up]
   - 0.099 x_s_a[7,3,left] = 1
 R2130: - 0.099 x_s_a[5,2,down] - 0.099 x_s_a[5,2,right]
   - 0.891 x_s_a[5,3,down] - 0.099 x_s_a[5,4,left] - 0.792 x_s_a[6,2,right]
   + x_s_a[6,3,up] + x_s_a[6,3,down] + x_s_a[6,3,left]
   + 0.01 x_s_a[6,3,right] - 0.099 x_s_a[7,2,up] - 0.099 x_s_a[7,2,right]
   - 0.891 x_s_a[7,3,up] - 0.099 x_s_a[7,4,left] = 1
 R2131: - 0.099 x_s_a[5,6,down] + 0.01 x_s_a[6,5,up] + x_s_a[6,5,down]
   + 0.01 x_s_a[6,5,left] + x_s_a[6,5,right] - 0.891 x_s_a[6,6,left]
   - 0.099 x_s_a[7,4,right] - 0.891 x_s_a[7,5,up] - 0.099 x_s_a[7,6,up]
   - 0.099 x_s_a[7,6,left] = 1
 R2132: - 0.891 x_s_a[5,6,down] - 0.099 x_s_a[5,7,left]
   - 0.792 x_s_a[6,5,right] + x_s_a[6,6,up] + x_s_a[6,6,down]
   + x_s_a[6,6,left] + 0.01 x_s_a[6,6,right] - 0.099 x_s_a[7,5,up]
   - 0.099 x_s_a[7,5,right] - 0.891 x_s_a[7,6,up] - 0.099 x_s_a[7,7,left]
   = 1
 R2133: - 0.099 x_s_a[5,7,right] - 0.891 x_s_a[5,8,down]
   - 0.099 x_s_a[5,9,down] - 0.099 x_s_a[5,9,left] + x_s_a[6,8,up]
   + x_s_a[6,8,down] + 0.01 x_s_a[6,8,left] + x_s_a[6,8,right]
   - 0.792 x_s_a[6,9,left] - 0.099 x_s_a[7,7,right] - 0.891 x_s_a[7,8,up]
   - 0.099 x_s_a[7,9,up] - 0.099 x_s_a[7,9,left] = 1
 R2134: - 0.099 x_s_a[5,8,down] - 0.099 x_s_a[5,8,right]
   - 0.792 x_s_a[5,9,down] - 0.099 x_s_a[5,10,down]
   - 0.099 x_s_a[5,10,left] - 0.792 x_s_a[6,8,right] + x_s_a[6,9,up]
   + x_s_a[6,9,down] + x_s_a[6,9,left] + x_s_a[6,9,right]
   - 0.792 x_s_a[6,10,left] - 0.099 x_s_a[7,8,up] - 0.099 x_s_a[7,8,right]
   - 0.792 x_s_a[7,9,up] - 0.099 x_s_a[7,10,up] - 0.099 x_s_a[7,10,left]
   = 1
 R2135: - 0.099 x_s_a[5,9,down] - 0.099 x_s_a[5,9,right]
   - 0.792 x_s_a[5,10,down] - 0.099 x_s_a[5,11,down]
   - 0.099 x_s_a[5,11,left] - 0.792 x_s_a[6,9,right] + x_s_a[6,10,up]
   + x_s_a[6,10,down] + x_s_a[6,10,left] + x_s_a[6,10,right]
   - 0.792 x_s_a[6,11,left] - 0.099 x_s_a[7,9,up] - 0.099 x_s_a[7,9,right]
   - 0.792 x_s_a[7,10,up] - 0.099 x_s_a[7,11,up] - 0.099 x_s_a[7,11,left]
   = 1
 R2136: - 0.099 x_s_a[5,10,down] - 0.099 x_s_a[5,10,right]
   - 0.792 x_s_a[5,11,down] - 0.792 x_s_a[6,10,right] + x_s_a[6,11,up]
   + x_s_a[6,11,down] + x_s_a[6,11,left] + x_s_a[6,11,right]
   - 0.792 x_s_a[6,12,left] - 0.099 x_s_a[7,10,up]
   - 0.099 x_s_a[7,10,right] - 0.792 x_s_a[7,11,up] = 1
 R2137: - 0.099 x_s_a[5,11,down] - 0.099 x_s_a[5,13,down]
   - 0.99 x_s_a[6,11,right] + 0.01 x_s_a[6,12,up] + 0.01 x_s_a[6,12,down]
   + x_s_a[6,12,left] + x_s_a[6,12,right] - 0.99 x_s_a[6,13,left]
   - 0.099 x_s_a[7,11,up] - 0.099 x_s_a[7,13,up] = 1
 R2138: - 0.792 x_s_a[5,13,down] - 0.099 x_s_a[5,14,down]
   - 0.099 x_s_a[5,14,left] - 0.792 x_s_a[6,12,right] + x_s_a[6,13,up]
   + x_s_a[6,13,down] + x_s_a[6,13,left] + x_s_a[6,13,right]
   - 0.792 x_s_a[6,14,left] - 0.792 x_s_a[7,13,up] - 0.099 x_s_a[7,14,up]
   - 0.099 x_s_a[7,14,left] = 1
 R2139: - 0.099 x_s_a[5,13,down] - 0.099 x_s_a[5,13,right]
   - 0.891 x_s_a[5,14,down] - 0.792 x_s_a[6,13,right] + x_s_a[6,14,up]
   + x_s_a[6,14,down] + x_s_a[6,14,left] + 0.01 x_s_a[6,14,right]
   - 0.099 x_s_a[7,13,up] - 0.099 x_s_a[7,13,right] - 0.891 x_s_a[7,14,up]
   = 1
 R2140: - 0.891 x_s_a[6,0,down] + x_s_a[7,0,up] + x_s_a[7,0,down]
   + 0.01 x_s_a[7,0,left] + x_s_a[7,0,right] - 0.792 x_s_a[7,1,left]
   - 0.891 x_s_a[8,0,up] - 0.099 x_s_a[8,1,up] - 0.099 x_s_a[8,1,left] = 1
 R2141: - 0.099 x_s_a[6,0,down] - 0.099 x_s_a[6,2,down]
   - 0.891 x_s_a[7,0,right] + 0.01 x_s_a[7,1,up] + x_s_a[7,1,down]
   + x_s_a[7,1,left] + x_s_a[7,1,right] - 0.891 x_s_a[7,2,left]
   - 0.099 x_s_a[8,0,up] - 0.099 x_s_a[8,0,right] - 0.792 x_s_a[8,1,up]
   - 0.099 x_s_a[8,2,up] - 0.099 x_s_a[8,2,left] = 1
 R2142: - 0.792 x_s_a[6,2,down] - 0.099 x_s_a[6,3,down]
   - 0.099 x_s_a[6,3,left] - 0.792 x_s_a[7,1,right] + x_s_a[7,2,up]
   + x_s_a[7,2,down] + x_s_a[7,2,left] + x_s_a[7,2,right]
   - 0.792 x_s_a[7,3,left] - 0.099 x_s_a[8,1,up] - 0.099 x_s_a[8,1,right]
   - 0.792 x_s_a[8,2,up] - 0.099 x_s_a[8,3,up] - 0.099 x_s_a[8,3,left] = 1
 R2143: - 0.099 x_s_a[6,2,down] - 0.099 x_s_a[6,2,right]
   - 0.792 x_s_a[6,3,down] - 0.792 x_s_a[7,2,right] + x_s_a[7,3,up]
   + x_s_a[7,3,down] + x_s_a[7,3,left] + x_s_a[7,3,right]
   - 0.792 x_s_a[7,4,left] - 0.099 x_s_a[8,2,up] - 0.099 x_s_a[8,2,right]
   - 0.792 x_s_a[8,3,up] - 0.099 x_s_a[8,4,up] - 0.099 x_s_a[8,4,left] = 1
 R2144: - 0.099 x_s_a[6,3,down] - 0.099 x_s_a[6,5,down]
   - 0.891 x_s_a[7,3,right] + 0.01 x_s_a[7,4,up] + x_s_a[7,4,down]
   + x_s_a[7,4,left] + x_s_a[7,4,right] - 0.891 x_s_a[7,5,left]
   - 0.099 x_s_a[8,3,up] - 0.099 x_s_a[8,3,right] - 0.792 x_s_a[8,4,up]
   - 0.099 x_s_a[8,5,up] - 0.099 x_s_a[8,5,left] = 1
 R2145: - 0.792 x_s_a[6,5,down] - 0.099 x_s_a[6,6,down]
   - 0.099 x_s_a[6,6,left] - 0.792 x_s_a[7,4,right] + x_s_a[7,5,up]
   + x_s_a[7,5,down] + x_s_a[7,5,left] + x_s_a[7,5,right]
   - 0.792 x_s_a[7,6,left] - 0.099 x_s_a[8,4,up] - 0.099 x_s_a[8,4,right]
   - 0.792 x_s_a[8,5,up] = 1
 R2146: - 0.099 x_s_a[6,5,down] - 0.099 x_s_a[6,5,right]
   - 0.792 x_s_a[6,6,down] - 0.891 x_s_a[7,5,right] + x_s_a[7,6,up]
   + 0.01 x_s_a[7,6,down] + x_s_a[7,6,left] + x_s_a[7,6,right]
   - 0.891 x_s_a[7,7,left] - 0.099 x_s_a[8,5,up] - 0.099 x_s_a[8,7,up] = 1
 R2147: - 0.099 x_s_a[6,6,down] - 0.099 x_s_a[6,8,down]
   - 0.891 x_s_a[7,6,right] + 0.01 x_s_a[7,7,up] + x_s_a[7,7,down]
   + x_s_a[7,7,left] + x_s_a[7,7,right] - 0.891 x_s_a[7,8,left]
   - 0.792 x_s_a[8,7,up] - 0.099 x_s_a[8,8,up] - 0.099 x_s_a[8,8,left] = 1
 R2148: - 0.792 x_s_a[6,8,down] - 0.099 x_s_a[6,9,down]
   - 0.099 x_s_a[6,9,left] - 0.792 x_s_a[7,7,right] + x_s_a[7,8,up]
   + x_s_a[7,8,down] + x_s_a[7,8,left] + x_s_a[7,8,right]
   - 0.792 x_s_a[7,9,left] - 0.099 x_s_a[8,7,up] - 0.099 x_s_a[8,7,right]
   - 0.792 x_s_a[8,8,up] - 0.099 x_s_a[8,9,up] - 0.099 x_s_a[8,9,left] = 1
 R2149: - 0.099 x_s_a[6,8,down] - 0.099 x_s_a[6,8,right]
   - 0.792 x_s_a[6,9,down] - 0.099 x_s_a[6,10,down]
   - 0.099 x_s_a[6,10,left] - 0.792 x_s_a[7,8,right] + x_s_a[7,9,up]
   + x_s_a[7,9,down] + x_s_a[7,9,left] + x_s_a[7,9,right]
   - 0.792 x_s_a[7,10,left] - 0.099 x_s_a[8,8,up] - 0.099 x_s_a[8,8,right]
   - 0.792 x_s_a[8,9,up] - 0.099 x_s_a[8,10,up] - 0.099 x_s_a[8,10,left]
   = 1
 R2150: - 0.099 x_s_a[6,9,down] - 0.099 x_s_a[6,9,right]
   - 0.792 x_s_a[6,10,down] - 0.099 x_s_a[6,11,down]
   - 0.099 x_s_a[6,11,left] - 0.792 x_s_a[7,9,right] + x_s_a[7,10,up]
   + x_s_a[7,10,down] + x_s_a[7,10,left] + x_s_a[7,10,right]
   - 0.792 x_s_a[7,11,left] - 0.099 x_s_a[8,9,up] - 0.099 x_s_a[8,9,right]
   - 0.792 x_s_a[8,10,up] - 0.099 x_s_a[8,11,up] - 0.099 x_s_a[8,11,left]
   = 1
 R2151: - 0.099 x_s_a[6,10,down] - 0.099 x_s_a[6,10,right]
   - 0.891 x_s_a[6,11,down] - 0.099 x_s_a[6,12,left]
   - 0.792 x_s_a[7,10,right] + x_s_a[7,11,up] + x_s_a[7,11,down]
   + x_s_a[7,11,left] + 0.01 x_s_a[7,11,right] - 0.099 x_s_a[8,10,up]
   - 0.099 x_s_a[8,10,right] - 0.891 x_s_a[8,11,up]
   - 0.099 x_s_a[8,12,left] = 1
 R2152: - 0.099 x_s_a[6,12,right] - 0.891 x_s_a[6,13,down]
   - 0.099 x_s_a[6,14,down] - 0.099 x_s_a[6,14,left] + x_s_a[7,13,up]
   + x_s_a[7,13,down] + 0.01 x_s_a[7,13,left] + x_s_a[7,13,right]
   - 0.792 x_s_a[7,14,left] - 0.099 x_s_a[8,12,right]
   - 0.891 x_s_a[8,13,up] - 0.099 x_s_a[8,14,up] - 0.099 x_s_a[8,14,left]
   = 1
 R2153: - 0.099 x_s_a[6,13,down] - 0.099 x_s_a[6,13,right]
   - 0.891 x_s_a[6,14,down] - 0.792 x_s_a[7,13,right] + x_s_a[7,14,up]
   + x_s_a[7,14,down] + x_s_a[7,14,left] + 0.01 x_s_a[7,14,right]
   - 0.099 x_s_a[8,13,up] - 0.099 x_s_a[8,13,right] - 0.891 x_s_a[8,14,up]
   = 1
 R2154: - 0.891 x_s_a[7,0,down] - 0.099 x_s_a[7,1,down]
   - 0.099 x_s_a[7,1,left] + x_s_a[8,0,up] + x_s_a[8,0,down]
   + 0.01 x_s_a[8,0,left] + x_s_a[8,0,right] - 0.792 x_s_a[8,1,left]
   - 0.891 x_s_a[9,0,up] - 0.099 x_s_a[9,1,up] - 0.099 x_s_a[9,1,left] = 1
 R2155: - 0.099 x_s_a[7,0,down] - 0.099 x_s_a[7,0,right]
   - 0.792 x_s_a[7,1,down] - 0.099 x_s_a[7,2,down] - 0.099 x_s_a[7,2,left]
   - 0.792 x_s_a[8,0,right] + x_s_a[8,1,up] + x_s_a[8,1,down]
   + x_s_a[8,1,left] + x_s_a[8,1,right] - 0.792 x_s_a[8,2,left]
   - 0.099 x_s_a[9,0,up] - 0.792 x_s_a[9,1,up] - 0.099 x_s_a[9,2,up]
   - 0.099 x_s_a[9,2,left] = 1
 R2156: - 0.099 x_s_a[7,1,down] - 0.099 x_s_a[7,1,right]
   - 0.792 x_s_a[7,2,down] - 0.099 x_s_a[7,3,down] - 0.099 x_s_a[7,3,left]
   - 0.792 x_s_a[8,1,right] + x_s_a[8,2,up] + x_s_a[8,2,down]
   + x_s_a[8,2,left] + x_s_a[8,2,right] - 0.792 x_s_a[8,3,left]
   - 0.099 x_s_a[9,1,up] - 0.792 x_s_a[9,2,up] = 1
 R2157: - 0.099 x_s_a[7,2,down] - 0.099 x_s_a[7,2,right]
   - 0.792 x_s_a[7,3,down] - 0.099 x_s_a[7,4,down] - 0.099 x_s_a[7,4,left]
   - 0.891 x_s_a[8,2,right] + x_s_a[8,3,up] + 0.01 x_s_a[8,3,down]
   + x_s_a[8,3,left] + x_s_a[8,3,right] - 0.891 x_s_a[8,4,left]
   - 0.099 x_s_a[9,2,up] - 0.099 x_s_a[9,4,up] = 1
 R2158: - 0.099 x_s_a[7,3,down] - 0.099 x_s_a[7,3,right]
   - 0.792 x_s_a[7,4,down] - 0.099 x_s_a[7,5,down] - 0.099 x_s_a[7,5,left]
   - 0.792 x_s_a[8,3,right] + x_s_a[8,4,up] + x_s_a[8,4,down]
   + x_s_a[8,4,left] + x_s_a[8,4,right] - 0.792 x_s_a[8,5,left]
   - 0.792 x_s_a[9,4,up] = 1
 R2159: - 0.099 x_s_a[7,4,down] - 0.099 x_s_a[7,4,right]
   - 0.891 x_s_a[7,5,down] - 0.099 x_s_a[7,6,left] - 0.891 x_s_a[8,4,right]
   + x_s_a[8,5,up] + 0.01 x_s_a[8,5,down] + x_s_a[8,5,left]
   + 0.01 x_s_a[8,5,right] - 0.099 x_s_a[9,4,up] = 1
 R2160: - 0.099 x_s_a[7,6,right] - 0.891 x_s_a[7,7,down]
   - 0.099 x_s_a[7,8,down] - 0.099 x_s_a[7,8,left] + x_s_a[8,7,up]
   + x_s_a[8,7,down] + 0.01 x_s_a[8,7,left] + x_s_a[8,7,right]
   - 0.792 x_s_a[8,8,left] - 0.891 x_s_a[9,7,up] - 0.099 x_s_a[9,8,up]
   - 0.099 x_s_a[9,8,left] = 1
 R2161: - 0.099 x_s_a[7,7,down] - 0.099 x_s_a[7,7,right]
   - 0.792 x_s_a[7,8,down] - 0.099 x_s_a[7,9,down] - 0.099 x_s_a[7,9,left]
   - 0.792 x_s_a[8,7,right] + x_s_a[8,8,up] + x_s_a[8,8,down]
   + x_s_a[8,8,left] + x_s_a[8,8,right] - 0.792 x_s_a[8,9,left]
   - 0.099 x_s_a[9,7,up] - 0.792 x_s_a[9,8,up] - 0.099 x_s_a[9,9,up]
   - 0.099 x_s_a[9,9,left] = 1
 R2162: - 0.099 x_s_a[7,8,down] - 0.099 x_s_a[7,8,right]
   - 0.792 x_s_a[7,9,down] - 0.099 x_s_a[7,10,down]
   - 0.099 x_s_a[7,10,left] - 0.792 x_s_a[8,8,right] + x_s_a[8,9,up]
   + x_s_a[8,9,down] + x_s_a[8,9,left] + x_s_a[8,9,right]
   - 0.792 x_s_a[8,10,left] - 0.099 x_s_a[9,8,up] - 0.792 x_s_a[9,9,up]
   - 0.099 x_s_a[9,10,up] - 0.099 x_s_a[9,10,left] = 1
 R2163: - 0.099 x_s_a[7,9,down] - 0.099 x_s_a[7,9,right]
   - 0.792 x_s_a[7,10,down] - 0.099 x_s_a[7,11,down]
   - 0.099 x_s_a[7,11,left] - 0.792 x_s_a[8,9,right] + x_s_a[8,10,up]
   + x_s_a[8,10,down] + x_s_a[8,10,left] + x_s_a[8,10,right]
   - 0.792 x_s_a[8,11,left] - 0.099 x_s_a[9,9,up] - 0.792 x_s_a[9,10,up]
   - 0.099 x_s_a[9,11,up] - 0.099 x_s_a[9,11,left] = 1
 R2164: - 0.099 x_s_a[7,10,down] - 0.099 x_s_a[7,10,right]
   - 0.792 x_s_a[7,11,down] - 0.792 x_s_a[8,10,right] + x_s_a[8,11,up]
   + x_s_a[8,11,down] + x_s_a[8,11,left] + x_s_a[8,11,right]
   - 0.792 x_s_a[8,12,left] - 0.099 x_s_a[9,10,up] - 0.792 x_s_a[9,11,up]
   - 0.099 x_s_a[9,12,up] - 0.099 x_s_a[9,12,left] = 1
 R2165: - 0.099 x_s_a[7,11,down] - 0.099 x_s_a[7,13,down]
   - 0.891 x_s_a[8,11,right] + 0.01 x_s_a[8,12,up] + x_s_a[8,12,down]
   + x_s_a[8,12,left] + x_s_a[8,12,right] - 0.891 x_s_a[8,13,left]
   - 0.099 x_s_a[9,11,up] - 0.792 x_s_a[9,12,up] - 0.099 x_s_a[9,13,up]
   - 0.099 x_s_a[9,13,left] = 1
 R2166: - 0.792 x_s_a[7,13,down] - 0.099 x_s_a[7,14,down]
   - 0.099 x_s_a[7,14,left] - 0.792 x_s_a[8,12,right] + x_s_a[8,13,up]
   + x_s_a[8,13,down] + x_s_a[8,13,left] + x_s_a[8,13,right]
   - 0.792 x_s_a[8,14,left] - 0.099 x_s_a[9,12,up] - 0.792 x_s_a[9,13,up]
   = 1
 R2167: - 0.099 x_s_a[7,13,down] - 0.099 x_s_a[7,13,right]
   - 0.891 x_s_a[7,14,down] - 0.792 x_s_a[8,13,right] + x_s_a[8,14,up]
   + x_s_a[8,14,down] + x_s_a[8,14,left] + 0.01 x_s_a[8,14,right]
   - 0.099 x_s_a[9,13,up] = 1
 R2168: - 0.891 x_s_a[8,0,down] - 0.099 x_s_a[8,1,down]
   - 0.099 x_s_a[8,1,left] + x_s_a[9,0,up] + 0.01 x_s_a[9,0,down]
   + 0.01 x_s_a[9,0,left] + x_s_a[9,0,right] - 0.891 x_s_a[9,1,left] = 1
 R2169: - 0.099 x_s_a[8,0,down] - 0.099 x_s_a[8,0,right]
   - 0.792 x_s_a[8,1,down] - 0.099 x_s_a[8,2,down] - 0.099 x_s_a[8,2,left]
   - 0.99 x_s_a[9,0,right] + x_s_a[9,1,up] + 0.01 x_s_a[9,1,down]
   + x_s_a[9,1,left] + x_s_a[9,1,right] - 0.891 x_s_a[9,2,left] = 1
 R2170: - 0.099 x_s_a[8,1,down] - 0.099 x_s_a[8,1,right]
   - 0.891 x_s_a[8,2,down] - 0.099 x_s_a[8,3,left] - 0.99 x_s_a[9,1,right]
   + x_s_a[9,2,up] + 0.01 x_s_a[9,2,down] + x_s_a[9,2,left]
   + 0.01 x_s_a[9,2,right] = 1
 R2171: - 0.099 x_s_a[8,3,right] - 0.99 x_s_a[8,4,down]
   - 0.099 x_s_a[8,5,left] + x_s_a[9,4,up] + 0.01 x_s_a[9,4,down]
   + 0.01 x_s_a[9,4,left] + 0.01 x_s_a[9,4,right] = 1
 R2172: - 0.099 x_s_a[8,7,down] + 0.01 x_s_a[9,6,up] + 0.01 x_s_a[9,6,down]
   + 0.01 x_s_a[9,6,left] + x_s_a[9,6,right] - 0.99 x_s_a[9,7,left] = 1
 R2173: - 0.792 x_s_a[8,7,down] - 0.099 x_s_a[8,8,down]
   - 0.099 x_s_a[8,8,left] - 0.99 x_s_a[9,6,right] + x_s_a[9,7,up]
   + 0.01 x_s_a[9,7,down] + x_s_a[9,7,left] + x_s_a[9,7,right]
   - 0.891 x_s_a[9,8,left] = 1
 R2174: - 0.099 x_s_a[8,7,down] - 0.099 x_s_a[8,7,right]
   - 0.792 x_s_a[8,8,down] - 0.099 x_s_a[8,9,down] - 0.099 x_s_a[8,9,left]
   - 0.99 x_s_a[9,7,right] + x_s_a[9,8,up] + 0.01 x_s_a[9,8,down]
   + x_s_a[9,8,left] + x_s_a[9,8,right] - 0.891 x_s_a[9,9,left] = 1
 R2175: - 0.099 x_s_a[8,8,down] - 0.099 x_s_a[8,8,right]
   - 0.792 x_s_a[8,9,down] - 0.099 x_s_a[8,10,down]
   - 0.099 x_s_a[8,10,left] - 0.99 x_s_a[9,8,right] + x_s_a[9,9,up]
   + 0.01 x_s_a[9,9,down] + x_s_a[9,9,left] + x_s_a[9,9,right]
   - 0.891 x_s_a[9,10,left] = 1
 R2176: - 0.099 x_s_a[8,9,down] - 0.099 x_s_a[8,9,right]
   - 0.792 x_s_a[8,10,down] - 0.099 x_s_a[8,11,down]
   - 0.099 x_s_a[8,11,left] - 0.99 x_s_a[9,9,right] + x_s_a[9,10,up]
   + 0.01 x_s_a[9,10,down] + x_s_a[9,10,left] + x_s_a[9,10,right]
   - 0.891 x_s_a[9,11,left] = 1
 R2177: - 0.099 x_s_a[8,10,down] - 0.099 x_s_a[8,10,right]
   - 0.792 x_s_a[8,11,down] - 0.099 x_s_a[8,12,down]
   - 0.099 x_s_a[8,12,left] - 0.99 x_s_a[9,10,right] + x_s_a[9,11,up]
   + 0.01 x_s_a[9,11,down] + x_s_a[9,11,left] + x_s_a[9,11,right]
   - 0.891 x_s_a[9,12,left] = 1
 R2178: - 0.099 x_s_a[8,11,down] - 0.099 x_s_a[8,11,right]
   - 0.792 x_s_a[8,12,down] - 0.099 x_s_a[8,13,down]
   - 0.099 x_s_a[8,13,left] - 0.99 x_s_a[9,11,right] + x_s_a[9,12,up]
   + 0.01 x_s_a[9,12,down] + x_s_a[9,12,left] + x_s_a[9,12,right]
   - 0.891 x_s_a[9,13,left] = 1
 R2179: - 0.099 x_s_a[8,12,down] - 0.099 x_s_a[8,12,right]
   - 0.792 x_s_a[8,13,down] - 0.099 x_s_a[8,14,down]
   - 0.099 x_s_a[8,14,left] - 0.99 x_s_a[9,12,right] + x_s_a[9,13,up]
   + 0.01 x_s_a[9,13,down] + x_s_a[9,13,left] + x_s_a[9,13,right] = 1
Bounds
End
