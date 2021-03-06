#EFIX     param    DMEA     2Ddyn     fricH    elseH     1Dre
set terminal pdf
set out "../dEdt.pdf"
set multiplot layout 1,2 title "F2000climo, CAM-SE, lcpdry, ftype=1" font ",28"
set grid
#set yrange [-2.8:4.7]
set yrange [-4.3:5.5]
set ylabel "{/Symbol \266}E [W/m^2]"
set xlabel "time [months]"
set key top right spacing 2 maxrows 3
plot "te_budgets.txt" u 1 title "{/Symbol \266}E@_{phys}^{(efix)}" w l lw 1.3 lt 1,"te_budgets.txt" u 2 title "{/Symbol \266}E@_{phys}^{(param)}" w l lw 1.3 lt 2,"te_budgets.txt" u 3 title "{/Symbol \266}E@_{phys}^{(pwork)}" w l lw 1.3 lt 3,"te_budgets.txt" u 4 title "{/Symbol \266}E@_{dyn}^{(adiab)}" w l lw 1.3 lt 4,"te_budgets.txt" u (-$3-$4) title "-{/Symbol \266}E@_{phys}^{(pwork)}-{/Symbol \266}E@_{dyn}^{(adiab)}" w p ps 0.2 pt 2 lt 7
set yrange [-0.7:0.85]
set key top right spacing 2 maxrows 2
plot "te_budgets.txt" u 4 title "{/Symbol \266}E@_{dyn}^{(adiab)}" w l lw 1.3 lt 4,"te_budgets.txt" u 5 title "{/Symbol \266}E@_{dyn}^{(2D)}" w l lw 1.3 lt 7,"te_budgets.txt" u 7 title "{/Symbol \266}E@_{dyn}^{(hvis)}" w l lw 1.3,"te_budgets.txt" u 8 title "{/Symbol \266}E@_{dyn}^{(remap)}" w l lw 1.3 lt 8,"te_budgets.txt" u 6 title "{/Symbol \266}E@_{dyn}^{(fheat)}" w l lw 1.3 lt 6,"te_budgets.txt" u 9 title "{/Symbol \266}E@^{(pdc)}" w l lw 1.3 lt 13
#test
#plot "te_budgets_yearly.txt" u 1 title "EFIX" w l lw 1.3,"te_budgets_yearly.txt" u 2 title "Parameterization" w l lw 1.3,"te_budgets_yearly.txt" u 3 title "DME adjust" w l lw 1.3,"te_budgets_yearly.txt" u 4 title "Total dynamics (excl. forcing)" w l lw 1.3,"te_budgets_yearly.txt" u 5 title "2D dynamics" w l lw 1.3,"te_budgets_yearly.txt" u 6 title "Frictional heating" w l lw 1.3,"te_budgets_yearly.txt" u 7 title "Hyperviscosity total" w l lw 1.3,"te_budgets_yearly.txt" u 8 title "Vertical remapping" w l lw 1.3

