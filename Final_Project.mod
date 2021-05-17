/*********************************************
 * OPL 12.10.0.0 Model
 * Author: peddi
 * Creation Date: Dec 12, 2020 at 5:21:18 PM
 *********************************************/

int Tot_grps = ...;
range Grps = 1..Tot_grps;

int Tot_years = ...;
range Years = 1..Tot_years;

int Tot_Ages = ...;
range Ages = 1..Tot_Ages;
range DiaryCowAges = 2..Tot_Ages-1;

float Init_num_cows[Ages] = ...;
float Heif_survival = ...;
float Cow_survival = ...;
float Calf_born_rate = ...;
float Heif_born_fraction  = ...;
float Max_num_cows = ...;
float Gr_req_Cow = ...;
float Sb_req_Cow  = ...;
float Grain_prod_Acre[Grps] = ...;
float Acres_Grp[Grps] = ...;
float Sb_prod_Acre = ...;
float Heif_acre_needed = ...;
float Cow_acre_needed  = ...;
float Total_acres = ...;
float Heif_req_labor = ...;
float Cow_req_labor  = ...;
float Tot_labor = ...;
float Gr_req_labor   = ...;
float Sb_req_labor = ...;
float Max_inc_ratio = ...;
float Max_dec_ratio = ...;
float Bullock_sell_price = ...;
float Heif_sell_price = ...;
float Cow_sell_price = ...;
float Milk_per_Cow_sell_price = ...;
float Gr_sell_price = ...;
float Sb_sell_price = ...;
float Gr_buy_price = ...;
float Sb_buy_price = ...;
float Lbr_fixed_cost = ...;
float Excess_lbr_cost  = ...;
float Heif_othr_cost_price = ...;
float Cow_othr_cost_price  = ...;
float Gr_othr_cost_price = ...;
float Sb_othr_cost_price  = ...;
int   num_loan_yrs = ...;
float Annual_Intr_rate = ...;

float Init_DiaryCows = sum(j in DiaryCowAges) Init_num_cows[j];


dvar float+ Grain_grown[Grps][Years] ;
dvar float+ Grain_bought[Years];
dvar float+ Grain_Sold[Years];
dvar float+ Sb_grown[Years];
dvar float+ Sb_bought[Years];
dvar float+ Sb_sold[Years];
dvar float+ Num_excess_lbr_hrs[Years];
dvar float+ Capital_outlay[Years];
dvar float+ Heif_sold[Years];
dvar float+ Num_cows[Ages][Years];
dvar float+ Num_dairy_cows[Years];
dvar float+ Num_cows_0[Years];
dvar float+ Profit[Years];

dexpr float Total_Profit 
	= sum(y in Years) Profit[y] - Annual_Intr_rate * (sum(y in Years) ((num_loan_yrs-Tot_years-1+y) * Capital_outlay[y]));

maximize Total_Profit;

subject to {
 
  forall(y in Years)
    Num_dairy_cows[y] == sum(j in DiaryCowAges) Num_cows[j][y];

  // Continuity - cows move from one age to the next
  a :
  forall(y in 1..Tot_years-1) {
    Num_cows[1][y+1] == Heif_survival * Num_cows_0[y];
    Num_cows[2][y+1] == Heif_survival * Num_cows[1][y];
  forall(j in DiaryCowAges)
    Num_cows[j+1][y+1] == Cow_survival * Num_cows[j][y];
  }

  // Continuity - Sell heifers as newborns
  b :
  forall(y in Years)
    Num_cows_0[y] == Heif_born_fraction * Calf_born_rate *  Num_dairy_cows[y] - Heif_sold[y];

  // Initial conditions - fixed
  c :
  Num_cows[1][1] == Heif_survival * Init_num_cows[1];
  Num_cows[2][1] == Heif_survival * Init_num_cows[2];
  forall(j in 3..Tot_Ages)
    Num_cows[j][1] == Cow_survival * Init_num_cows[j];
 
  // Accommodation
  d :
  forall(y in Years)
    Num_cows_0[y] + Num_cows[1][y] + Num_dairy_cows[y]
       <= Max_num_cows + sum(k in Years: k <= y) Capital_outlay[k];

  // Grain consumption
  e :
  forall(y in Years)
     Num_dairy_cows[y] * Gr_req_Cow <= 
       sum(g in Grps) Grain_grown[g,y] + Grain_bought[y] - Grain_Sold[y];
          
  // Sugar beet consumption
  f :
  forall(y in Years)
    Num_dairy_cows[y] * Sb_req_Cow <=
       Sb_grown[y] + Sb_bought[y] - Sb_sold[y];
       
 //Grain Growing
   g :
   forall(y in Years) {
   Grain_grown[1][y] <= Grain_prod_Acre[1] * Acres_Grp[1] ;
   Grain_grown[2][y] <= Grain_prod_Acre[2] * Acres_Grp[2] ;
   Grain_grown[3][y] <= Grain_prod_Acre[3] * Acres_Grp[3] ;
   Grain_grown[4][y] <= Grain_prod_Acre[4] * Acres_Grp[4] ;
}
  // Acreage
  h :
  forall(y in Years)
    sum(g in Grps) 1.0/Grain_prod_Acre[g] * Grain_grown[g][y] 
       + 1.0/Sb_prod_Acre * Sb_grown[y] + Heif_acre_needed * Num_cows_0[y]
       + Heif_acre_needed * Num_cows[1][y] 
       + Cow_acre_needed * Num_dairy_cows[y] <= Total_acres; 

  // Labor
  i :
  forall(y in Years)
  Heif_req_labor * Num_cows_0[y] + Heif_req_labor * Num_cows[1][y]
    + Cow_req_labor * Num_dairy_cows[y]
    + Gr_req_labor * (sum(g in Grps) 1.0/Grain_prod_Acre[g] * Grain_grown[g][y])
    + Sb_req_labor * 1.0 / Sb_prod_Acre * Sb_grown[y]
    <= Tot_labor + Num_excess_lbr_hrs[y];

  // End total
    j : 
    sum(j in DiaryCowAges) Num_cows[j][5] >=  Init_DiaryCows * (1-Max_inc_ratio);
    sum(j in DiaryCowAges) Num_cows[j][5] <=  Init_DiaryCows * (1+Max_dec_ratio);

  // Profit
	k :  
   forall(y in Years)
    Profit[y] == Bullock_sell_price * Calf_born_rate * (1.0 - Heif_born_fraction) * Num_dairy_cows[y] 
             + Heif_sell_price * Heif_sold[y]
             + Cow_sell_price * Num_cows[Tot_Ages][y]
             + Milk_per_Cow_sell_price * Num_dairy_cows[y] 
             + Gr_sell_price * Grain_Sold[y]
             + Sb_sell_price * Sb_sold[y]
             - Gr_buy_price * Grain_bought[y]
             - Sb_buy_price * Sb_bought[y]
             - Excess_lbr_cost * Num_excess_lbr_hrs[y]
             - Lbr_fixed_cost
             - Heif_othr_cost_price * Num_cows_0[y]
             - Heif_othr_cost_price * Num_cows[1][y]
             - Cow_othr_cost_price * Num_dairy_cows[y]
             - Gr_othr_cost_price * (sum(g in Grps) 1.0/Grain_prod_Acre[g] * Grain_grown[g][y])
             - Sb_othr_cost_price * (1.0/Sb_prod_Acre) * Sb_grown[y]
             - Annual_Intr_rate * (sum(k in Years: k<=y) Capital_outlay[k]);

}

execute pp
{
		
  		writeln("Total Profit - ", Total_Profit);		 // lazy open
  		writeln("\nProfit in each of 5 years - \n", Profit);
  		writeln("\nGrain_grown in each of 4 groups group in each of 5 years - \n\t\t", Grain_grown);	
  		writeln("\nGrain_bought in each of 5 years - \n", Grain_bought);	
  		writeln("\nGrain_Sold in each of 5 years - \n", Grain_Sold);	
  		writeln("\nSb_grown in each of 5 years - \n", Sb_grown);	
  		writeln("\nSb_bought in each of 5 years - \n", Sb_bought);	
  		writeln("\nSb_sold in each of 5 years - \n", Sb_sold);
  		writeln("\nNum_excess_lbr_hrs in each of 5 years - \n", Num_excess_lbr_hrs);
  		writeln("\nnum of cows over max limit in each of 5 years - \n", Capital_outlay);
  		writeln("\nHeif_sold in each of 5 years - \n", Heif_sold);
  		writeln("\nNum_cows of all ages in each of 5 years - \n\t\t ",Num_cows);

}  	

main 
	{
  var opl = thisOplModel;
     opl.generate();
     cplex.exportModel("Final_Project.lp")
     if (cplex.solve())
     {
       var f = new IloOplOutputFile("Output.txt");
       f.writeln(opl.printSolution());
       f.close();
       
      //writeln("the value of the objective function, total profit = ",cplex.getObjValue());
    //  writeln("Print Reduced Costs  = ",Total_Profit.reducedCost);
     }
     else
     {
       writeln("No Solution Found");
     }
     opl.postProcess();
	  }