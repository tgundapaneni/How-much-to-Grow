# How-much-to-Grow
Using CPLEX Optimization Studio

Problem Statement
A farmer is planning production on his 200-acre farm over 5 years.
Currently he has 120 cows - 10 cows each aged from newborn to 11 years old. This is made up of 20
heifers and 100 milk-producing cows. Each heifer needs 2/3rd of an acre and a dairy cow needs 1 acre to
support it. A dairy cow produces 1.1 calves per year. Half of those calves will be bullocks, which will be
sold immediately for an average of 30pounds each. The remaining heifers can be either sold almost
immediately for 40 pounds or reared to become milk-producing cows. It is intended that all dairy cows
be sold at 12 years old for an average of 120pounds each, although there will be an annual loss of 5%
per year among heifers and 2% among dairy cows. The decision of how many heifers to sell in the
current year has already been taken and implemented. The milk from a cow yields an annual revenue of
370 pounds. A maximum of 130 cows can be housed at the present time. To provide accommodation for
each cow beyond this number will entail a capital outlay of 200 pounds per cow. Each milk producing
cow requires 0.6 tons of grain and 0.7 tons of sugar beet per year. Grain and sugar beet can both be
grown on the farm. Each acre yields 1.5 tons of sugar beet. Only 80 acres are suitable for growing grain.
They can be divided into four groups whose yields are as follows –
Group1 20 acres 1.1 tons per acre
Group2 30 acres 0.9 tons per acre
Group3 20 acres 0.8 tons per acre
Group4 10 acres 0.65 tons per acre
Grain can be bought for 90 pounds per ton and sold for 75 pounds per ton. Sugar Beet can be bought for
70pounds per ton and sold for 58pounds per ton.
The labor requirements are as follows -
Each Heifer 10h per year
Each milk-producing cow 42h per year
Each acre put to grain 4h per year
Each acre put to sugar beet 14h per year
Other costs are as follows -
Each Heifer 50 pounds per year
Each milk-producing cow 100 pounds per year
Each acre put to grain 15 pounds per year
Each acre put to sugar beet 10 pounds per year
Labor costs for the farm at present are 4000 pounds per year and provide 5500 h of labor. Any labor
needed above this will cost 1.20 pounds per hour. Any Capital expenditure would be financed by a 10-
year loan at 15% annual interest. the interest and capital repayment would be paid in 10 equally sized
yearly installments. In no year can the cash flow be negative. Finally, the farmer would neither wish to
reduce the total number cows at the end of the 5 -year period by more than 50% nor wish to increase
the number by more than 75%. How should the farmer operate over the next five years to maximize
profit?


Implementation Details
This model is implemented in CPLEX OPTIMIZATION STUDIO using Linear Programming technique since
the mortality rates and birth rates of the cows and heifers are fractions. the numbers of cows of
successively increasing ages in successive years are effectively fixed by the continuity constraints. A
Final_Project.dat file is created with all the parameters and sets defined above and their values.
Final_Project.mod is where the input data is called from .dat file and decision variables stated above are
declared in this file. Objective function along with constraints are coded in here and the output in
written to Output.txt. The complete model is written to Final_Project.lp file where all the variables and
constraints are written for further analysis. Configuration file is created with the above .dat and .mod
files which enables us to run the model.
