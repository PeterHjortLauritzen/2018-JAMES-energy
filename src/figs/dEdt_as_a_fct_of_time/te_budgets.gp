#EFIX     param    DMEA     2Ddyn     fricH    elseH     1Dre
set terminal pdf
set out "../dEdt.pdf"
set multiplot layout 1,2 title "dE/dt for Energy consistent model version" font ",30"
set grid
set yrange [-2.8:4]
set xlabel "time [months]"
set ylabel "time [W/(m^2*s]"
plot "te_budgets.txt" u 1 title "EFIX" w l lw 1.3 lt 1,"te_budgets.txt" u 2 title "Parameterization" w l lw 1.3 lt 2,"te_budgets.txt" u 3 title "DME adjust" w l lw 1.3 lt 3,"te_budgets.txt" u 4 title "Total dynamics (excl. forcing)" w l lw 1.3 lt 4,"te_budgets.txt" u (-$3-$4) title "Consistency check" w p lt 5,"te_budgets.txt" u 6 title "Frictional heating" w l lw 1.3 lt 6
set yrange [-0.7:0.15]
plot "te_budgets.txt" u 4 title "Total dynamics (excl. forcing)" w l lw 1.3 lt 4,"te_budgets.txt" u 5 title "2D dynamics" w l lw 1.3 lt 7,"te_budgets.txt" u 7 title "Hyperviscosity total" w l lw 1.3,"te_budgets.txt" u 8 title "Vertical remapping" w l lw 1.3 lt 8

#plot "te_budgets_yearly.txt" u 1 title "EFIX" w l lw 1.3,"te_budgets_yearly.txt" u 2 title "Parameterization" w l lw 1.3,"te_budgets_yearly.txt" u 3 title "DME adjust" w l lw 1.3,"te_budgets_yearly.txt" u 4 title "Total dynamics (excl. forcing)" w l lw 1.3,"te_budgets_yearly.txt" u 5 title "2D dynamics" w l lw 1.3,"te_budgets_yearly.txt" u 6 title "Frictional heating" w l lw 1.3,"te_budgets_yearly.txt" u 7 title "Hyperviscosity total" w l lw 1.3,"te_budgets_yearly.txt" u 8 title "Vertical remapping" w l lw 1.3

