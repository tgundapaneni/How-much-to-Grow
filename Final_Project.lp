\ENCODING=ISO-8859-1
\Problem name: Configuration1

Maximize
 obj1: Profit(1) + Profit(2) + Profit(3) + Profit(4) + Profit(5)
       - 198.55 Capital_outlay(1) - 238.26 Capital_outlay(2)
       - 277.97 Capital_outlay(3) - 317.68 Capital_outlay(4)
       - 357.39 Capital_outlay(5)
Subject To
 c1:   Num_dairy_cows(1) - Num_cows(2)(1) - Num_cows(3)(1) - Num_cows(4)(1)
       - Num_cows(5)(1) - Num_cows(6)(1) - Num_cows(7)(1) - Num_cows(8)(1)
       - Num_cows(9)(1) - Num_cows(10)(1) - Num_cows(11)(1)  = 0
 c2:   Num_dairy_cows(2) - Num_cows(2)(2) - Num_cows(3)(2) - Num_cows(4)(2)
       - Num_cows(5)(2) - Num_cows(6)(2) - Num_cows(7)(2) - Num_cows(8)(2)
       - Num_cows(9)(2) - Num_cows(10)(2) - Num_cows(11)(2)  = 0
 c3:   Num_dairy_cows(3) - Num_cows(2)(3) - Num_cows(3)(3) - Num_cows(4)(3)
       - Num_cows(5)(3) - Num_cows(6)(3) - Num_cows(7)(3) - Num_cows(8)(3)
       - Num_cows(9)(3) - Num_cows(10)(3) - Num_cows(11)(3)  = 0
 c4:   Num_dairy_cows(4) - Num_cows(2)(4) - Num_cows(3)(4) - Num_cows(4)(4)
       - Num_cows(5)(4) - Num_cows(6)(4) - Num_cows(7)(4) - Num_cows(8)(4)
       - Num_cows(9)(4) - Num_cows(10)(4) - Num_cows(11)(4)  = 0
 c5:   Num_dairy_cows(5) - Num_cows(2)(5) - Num_cows(3)(5) - Num_cows(4)(5)
       - Num_cows(5)(5) - Num_cows(6)(5) - Num_cows(7)(5) - Num_cows(8)(5)
       - Num_cows(9)(5) - Num_cows(10)(5) - Num_cows(11)(5)  = 0
 c6:   Num_cows(1)(2) - 0.95 Num_cows_0(1)  = 0
 c7:   Num_cows(2)(2) - 0.95 Num_cows(1)(1)  = 0
 c8:   - 0.98 Num_cows(2)(1) + Num_cows(3)(2)  = 0
 c9:   - 0.98 Num_cows(3)(1) + Num_cows(4)(2)  = 0
 c10:  - 0.98 Num_cows(4)(1) + Num_cows(5)(2)  = 0
 c11:  - 0.98 Num_cows(5)(1) + Num_cows(6)(2)  = 0
 c12:  - 0.98 Num_cows(6)(1) + Num_cows(7)(2)  = 0
 c13:  - 0.98 Num_cows(7)(1) + Num_cows(8)(2)  = 0
 c14:  - 0.98 Num_cows(8)(1) + Num_cows(9)(2)  = 0
 c15:  - 0.98 Num_cows(9)(1) + Num_cows(10)(2)  = 0
 c16:  - 0.98 Num_cows(10)(1) + Num_cows(11)(2)  = 0
 c17:  - 0.98 Num_cows(11)(1) + Num_cows(12)(2)  = 0
 c18:  Num_cows(1)(3) - 0.95 Num_cows_0(2)  = 0
 c19:  Num_cows(2)(3) - 0.95 Num_cows(1)(2)  = 0
 c20:  - 0.98 Num_cows(2)(2) + Num_cows(3)(3)  = 0
 c21:  - 0.98 Num_cows(3)(2) + Num_cows(4)(3)  = 0
 c22:  - 0.98 Num_cows(4)(2) + Num_cows(5)(3)  = 0
 c23:  - 0.98 Num_cows(5)(2) + Num_cows(6)(3)  = 0
 c24:  - 0.98 Num_cows(6)(2) + Num_cows(7)(3)  = 0
 c25:  - 0.98 Num_cows(7)(2) + Num_cows(8)(3)  = 0
 c26:  - 0.98 Num_cows(8)(2) + Num_cows(9)(3)  = 0
 c27:  - 0.98 Num_cows(9)(2) + Num_cows(10)(3)  = 0
 c28:  - 0.98 Num_cows(10)(2) + Num_cows(11)(3)  = 0
 c29:  - 0.98 Num_cows(11)(2) + Num_cows(12)(3)  = 0
 c30:  Num_cows(1)(4) - 0.95 Num_cows_0(3)  = 0
 c31:  Num_cows(2)(4) - 0.95 Num_cows(1)(3)  = 0
 c32:  - 0.98 Num_cows(2)(3) + Num_cows(3)(4)  = 0
 c33:  - 0.98 Num_cows(3)(3) + Num_cows(4)(4)  = 0
 c34:  - 0.98 Num_cows(4)(3) + Num_cows(5)(4)  = 0
 c35:  - 0.98 Num_cows(5)(3) + Num_cows(6)(4)  = 0
 c36:  - 0.98 Num_cows(6)(3) + Num_cows(7)(4)  = 0
 c37:  - 0.98 Num_cows(7)(3) + Num_cows(8)(4)  = 0
 c38:  - 0.98 Num_cows(8)(3) + Num_cows(9)(4)  = 0
 c39:  - 0.98 Num_cows(9)(3) + Num_cows(10)(4)  = 0
 c40:  - 0.98 Num_cows(10)(3) + Num_cows(11)(4)  = 0
 c41:  - 0.98 Num_cows(11)(3) + Num_cows(12)(4)  = 0
 c42:  Num_cows(1)(5) - 0.95 Num_cows_0(4)  = 0
 c43:  Num_cows(2)(5) - 0.95 Num_cows(1)(4)  = 0
 c44:  - 0.98 Num_cows(2)(4) + Num_cows(3)(5)  = 0
 c45:  - 0.98 Num_cows(3)(4) + Num_cows(4)(5)  = 0
 c46:  - 0.98 Num_cows(4)(4) + Num_cows(5)(5)  = 0
 c47:  - 0.98 Num_cows(5)(4) + Num_cows(6)(5)  = 0
 c48:  - 0.98 Num_cows(6)(4) + Num_cows(7)(5)  = 0
 c49:  - 0.98 Num_cows(7)(4) + Num_cows(8)(5)  = 0
 c50:  - 0.98 Num_cows(8)(4) + Num_cows(9)(5)  = 0
 c51:  - 0.98 Num_cows(9)(4) + Num_cows(10)(5)  = 0
 c52:  - 0.98 Num_cows(10)(4) + Num_cows(11)(5)  = 0
 c53:  - 0.98 Num_cows(11)(4) + Num_cows(12)(5)  = 0
 c54:  - 0.55 Num_dairy_cows(1) + Num_cows_0(1) + Heif_sold(1)  = 0
 c55:  - 0.55 Num_dairy_cows(2) + Num_cows_0(2) + Heif_sold(2)  = 0
 c56:  - 0.55 Num_dairy_cows(3) + Num_cows_0(3) + Heif_sold(3)  = 0
 c57:  - 0.55 Num_dairy_cows(4) + Num_cows_0(4) + Heif_sold(4)  = 0
 c58:  - 0.55 Num_dairy_cows(5) + Num_cows_0(5) + Heif_sold(5)  = 0
 c:    Num_cows(1)(1)  = 9.5
 c60:  Num_cows(2)(1)  = 9.5
 c61:  Num_cows(3)(1)  = 9.8
 c62:  Num_cows(4)(1)  = 9.8
 c63:  Num_cows(5)(1)  = 9.8
 c64:  Num_cows(6)(1)  = 9.8
 c65:  Num_cows(7)(1)  = 9.8
 c66:  Num_cows(8)(1)  = 9.8
 c67:  Num_cows(9)(1)  = 9.8
 c68:  Num_cows(10)(1)  = 9.8
 c69:  Num_cows(11)(1)  = 9.8
 c70:  Num_cows(12)(1)  = 9.8
 c71:  - Capital_outlay(1) + Num_dairy_cows(1) + Num_cows_0(1) + Num_cows(1)(1)
       <= 130
 c72:  - Capital_outlay(1) - Capital_outlay(2) + Num_dairy_cows(2)
       + Num_cows(1)(2) + Num_cows_0(2) <= 130
 c73:  - Capital_outlay(1) - Capital_outlay(2) - Capital_outlay(3)
       + Num_dairy_cows(3) + Num_cows(1)(3) + Num_cows_0(3) <= 130
 c74:  - Capital_outlay(1) - Capital_outlay(2) - Capital_outlay(3)
       - Capital_outlay(4) + Num_dairy_cows(4) + Num_cows(1)(4) + Num_cows_0(4)
       <= 130
 c75:  - Capital_outlay(1) - Capital_outlay(2) - Capital_outlay(3)
       - Capital_outlay(4) - Capital_outlay(5) + Num_dairy_cows(5)
       + Num_cows(1)(5) + Num_cows_0(5) <= 130
 c76:  0.6 Num_dairy_cows(1) - Grain_grown(1)(1) - Grain_grown(2)(1)
       - Grain_grown(3)(1) - Grain_grown(4)(1) - Grain_bought(1)
       + Grain_Sold(1) <= 0
 c77:  0.6 Num_dairy_cows(2) - Grain_grown(1)(2) - Grain_grown(2)(2)
       - Grain_grown(3)(2) - Grain_grown(4)(2) - Grain_bought(2)
       + Grain_Sold(2) <= 0
 c78:  0.6 Num_dairy_cows(3) - Grain_grown(1)(3) - Grain_grown(2)(3)
       - Grain_grown(3)(3) - Grain_grown(4)(3) - Grain_bought(3)
       + Grain_Sold(3) <= 0
 c79:  0.6 Num_dairy_cows(4) - Grain_grown(1)(4) - Grain_grown(2)(4)
       - Grain_grown(3)(4) - Grain_grown(4)(4) - Grain_bought(4)
       + Grain_Sold(4) <= 0
 c80:  0.6 Num_dairy_cows(5) - Grain_grown(1)(5) - Grain_grown(2)(5)
       - Grain_grown(3)(5) - Grain_grown(4)(5) - Grain_bought(5)
       + Grain_Sold(5) <= 0
 c81:  0.7 Num_dairy_cows(1) - Sb_grown(1) - Sb_bought(1) + Sb_sold(1) <= 0
 c82:  0.7 Num_dairy_cows(2) - Sb_grown(2) - Sb_bought(2) + Sb_sold(2) <= 0
 c83:  0.7 Num_dairy_cows(3) - Sb_grown(3) - Sb_bought(3) + Sb_sold(3) <= 0
 c84:  0.7 Num_dairy_cows(4) - Sb_grown(4) - Sb_bought(4) + Sb_sold(4) <= 0
 c85:  0.7 Num_dairy_cows(5) - Sb_grown(5) - Sb_bought(5) + Sb_sold(5) <= 0
 c86:  Grain_grown(1)(1) <= 22
 c87:  Grain_grown(2)(1) <= 27
 c88:  Grain_grown(3)(1) <= 16
 c89:  Grain_grown(4)(1) <= 6.5
 c90:  Grain_grown(1)(2) <= 22
 c91:  Grain_grown(2)(2) <= 27
 c92:  Grain_grown(3)(2) <= 16
 c93:  Grain_grown(4)(2) <= 6.5
 c94:  Grain_grown(1)(3) <= 22
 c95:  Grain_grown(2)(3) <= 27
 c96:  Grain_grown(3)(3) <= 16
 c97:  Grain_grown(4)(3) <= 6.5
 c98:  Grain_grown(1)(4) <= 22
 c99:  Grain_grown(2)(4) <= 27
 c100: Grain_grown(3)(4) <= 16
 c101: Grain_grown(4)(4) <= 6.5
 c102: Grain_grown(1)(5) <= 22
 c103: Grain_grown(2)(5) <= 27
 c104: Grain_grown(3)(5) <= 16
 c105: Grain_grown(4)(5) <= 6.5
 c106: Num_dairy_cows(1) + 0.6666667 Num_cows_0(1) + 0.6666667 Num_cows(1)(1)
       + 0.909090909090909 Grain_grown(1)(1)
       + 1.11111111111111 Grain_grown(2)(1) + 1.25 Grain_grown(3)(1)
       + 1.53846153846154 Grain_grown(4)(1) + 0.666666666666667 Sb_grown(1)
       <= 200
 c107: Num_dairy_cows(2) + 0.6666667 Num_cows(1)(2) + 0.6666667 Num_cows_0(2)
       + 0.909090909090909 Grain_grown(1)(2)
       + 1.11111111111111 Grain_grown(2)(2) + 1.25 Grain_grown(3)(2)
       + 1.53846153846154 Grain_grown(4)(2) + 0.666666666666667 Sb_grown(2)
       <= 200
 c108: Num_dairy_cows(3) + 0.6666667 Num_cows(1)(3) + 0.6666667 Num_cows_0(3)
       + 0.909090909090909 Grain_grown(1)(3)
       + 1.11111111111111 Grain_grown(2)(3) + 1.25 Grain_grown(3)(3)
       + 1.53846153846154 Grain_grown(4)(3) + 0.666666666666667 Sb_grown(3)
       <= 200
 c109: Num_dairy_cows(4) + 0.6666667 Num_cows(1)(4) + 0.6666667 Num_cows_0(4)
       + 0.909090909090909 Grain_grown(1)(4)
       + 1.11111111111111 Grain_grown(2)(4) + 1.25 Grain_grown(3)(4)
       + 1.53846153846154 Grain_grown(4)(4) + 0.666666666666667 Sb_grown(4)
       <= 200
 c110: Num_dairy_cows(5) + 0.6666667 Num_cows(1)(5) + 0.6666667 Num_cows_0(5)
       + 0.909090909090909 Grain_grown(1)(5)
       + 1.11111111111111 Grain_grown(2)(5) + 1.25 Grain_grown(3)(5)
       + 1.53846153846154 Grain_grown(4)(5) + 0.666666666666667 Sb_grown(5)
       <= 200
 c111: 0.42 Num_dairy_cows(1) + 0.1 Num_cows_0(1) + 0.1 Num_cows(1)(1)
       + 0.0363636363636364 Grain_grown(1)(1)
       + 0.0444444444444444 Grain_grown(2)(1) + 0.05 Grain_grown(3)(1)
       + 0.0615384615384615 Grain_grown(4)(1) + 0.0933333333333333 Sb_grown(1)
       - Num_excess_lbr_hrs(1) <= 55
 c112: 0.42 Num_dairy_cows(2) + 0.1 Num_cows(1)(2) + 0.1 Num_cows_0(2)
       + 0.0363636363636364 Grain_grown(1)(2)
       + 0.0444444444444444 Grain_grown(2)(2) + 0.05 Grain_grown(3)(2)
       + 0.0615384615384615 Grain_grown(4)(2) + 0.0933333333333333 Sb_grown(2)
       - Num_excess_lbr_hrs(2) <= 55
 c113: 0.42 Num_dairy_cows(3) + 0.1 Num_cows(1)(3) + 0.1 Num_cows_0(3)
       + 0.0363636363636364 Grain_grown(1)(3)
       + 0.0444444444444444 Grain_grown(2)(3) + 0.05 Grain_grown(3)(3)
       + 0.0615384615384615 Grain_grown(4)(3) + 0.0933333333333333 Sb_grown(3)
       - Num_excess_lbr_hrs(3) <= 55
 c114: 0.42 Num_dairy_cows(4) + 0.1 Num_cows(1)(4) + 0.1 Num_cows_0(4)
       + 0.0363636363636364 Grain_grown(1)(4)
       + 0.0444444444444444 Grain_grown(2)(4) + 0.05 Grain_grown(3)(4)
       + 0.0615384615384615 Grain_grown(4)(4) + 0.0933333333333333 Sb_grown(4)
       - Num_excess_lbr_hrs(4) <= 55
 c115: 0.42 Num_dairy_cows(5) + 0.1 Num_cows(1)(5) + 0.1 Num_cows_0(5)
       + 0.0363636363636364 Grain_grown(1)(5)
       + 0.0444444444444444 Grain_grown(2)(5) + 0.05 Grain_grown(3)(5)
       + 0.0615384615384615 Grain_grown(4)(5) + 0.0933333333333333 Sb_grown(5)
       - Num_excess_lbr_hrs(5) <= 55
 j:    Num_cows(2)(5) + Num_cows(3)(5) + Num_cows(4)(5) + Num_cows(5)(5)
       + Num_cows(6)(5) + Num_cows(7)(5) + Num_cows(8)(5) + Num_cows(9)(5)
       + Num_cows(10)(5) + Num_cows(11)(5) >= 50
 c117: Num_cows(2)(5) + Num_cows(3)(5) + Num_cows(4)(5) + Num_cows(5)(5)
       + Num_cows(6)(5) + Num_cows(7)(5) + Num_cows(8)(5) + Num_cows(9)(5)
       + Num_cows(10)(5) + Num_cows(11)(5) <= 175
 c118: Profit(1) + 39.71 Capital_outlay(1) - 286.5 Num_dairy_cows(1)
       + 50 Num_cows_0(1) + 50 Num_cows(1)(1) - 40 Heif_sold(1)
       - 120 Num_cows(12)(1) + 13.6363636363636 Grain_grown(1)(1)
       + 16.6666666666667 Grain_grown(2)(1) + 18.75 Grain_grown(3)(1)
       + 23.0769230769231 Grain_grown(4)(1) + 90 Grain_bought(1)
       - 75 Grain_Sold(1) + 6.66666666666667 Sb_grown(1) + 70 Sb_bought(1)
       - 58 Sb_sold(1) + 120 Num_excess_lbr_hrs(1)  = -4000
 c119: Profit(2) + 39.71 Capital_outlay(1) + 39.71 Capital_outlay(2)
       - 286.5 Num_dairy_cows(2) + 50 Num_cows(1)(2) - 120 Num_cows(12)(2)
       + 50 Num_cows_0(2) - 40 Heif_sold(2)
       + 13.6363636363636 Grain_grown(1)(2)
       + 16.6666666666667 Grain_grown(2)(2) + 18.75 Grain_grown(3)(2)
       + 23.0769230769231 Grain_grown(4)(2) + 90 Grain_bought(2)
       - 75 Grain_Sold(2) + 6.66666666666667 Sb_grown(2) + 70 Sb_bought(2)
       - 58 Sb_sold(2) + 120 Num_excess_lbr_hrs(2)  = -4000
 c120: Profit(3) + 39.71 Capital_outlay(1) + 39.71 Capital_outlay(2)
       + 39.71 Capital_outlay(3) - 286.5 Num_dairy_cows(3) + 50 Num_cows(1)(3)
       - 120 Num_cows(12)(3) + 50 Num_cows_0(3) - 40 Heif_sold(3)
       + 13.6363636363636 Grain_grown(1)(3)
       + 16.6666666666667 Grain_grown(2)(3) + 18.75 Grain_grown(3)(3)
       + 23.0769230769231 Grain_grown(4)(3) + 90 Grain_bought(3)
       - 75 Grain_Sold(3) + 6.66666666666667 Sb_grown(3) + 70 Sb_bought(3)
       - 58 Sb_sold(3) + 120 Num_excess_lbr_hrs(3)  = -4000
 c121: Profit(4) + 39.71 Capital_outlay(1) + 39.71 Capital_outlay(2)
       + 39.71 Capital_outlay(3) + 39.71 Capital_outlay(4)
       - 286.5 Num_dairy_cows(4) + 50 Num_cows(1)(4) - 120 Num_cows(12)(4)
       + 50 Num_cows_0(4) - 40 Heif_sold(4)
       + 13.6363636363636 Grain_grown(1)(4)
       + 16.6666666666667 Grain_grown(2)(4) + 18.75 Grain_grown(3)(4)
       + 23.0769230769231 Grain_grown(4)(4) + 90 Grain_bought(4)
       - 75 Grain_Sold(4) + 6.66666666666667 Sb_grown(4) + 70 Sb_bought(4)
       - 58 Sb_sold(4) + 120 Num_excess_lbr_hrs(4)  = -4000
 c122: Profit(5) + 39.71 Capital_outlay(1) + 39.71 Capital_outlay(2)
       + 39.71 Capital_outlay(3) + 39.71 Capital_outlay(4)
       + 39.71 Capital_outlay(5) - 286.5 Num_dairy_cows(5) + 50 Num_cows(1)(5)
       - 120 Num_cows(12)(5) + 50 Num_cows_0(5) - 40 Heif_sold(5)
       + 13.6363636363636 Grain_grown(1)(5)
       + 16.6666666666667 Grain_grown(2)(5) + 18.75 Grain_grown(3)(5)
       + 23.0769230769231 Grain_grown(4)(5) + 90 Grain_bought(5)
       - 75 Grain_Sold(5) + 6.66666666666667 Sb_grown(5) + 70 Sb_bought(5)
       - 58 Sb_sold(5) + 120 Num_excess_lbr_hrs(5)  = -4000
End
