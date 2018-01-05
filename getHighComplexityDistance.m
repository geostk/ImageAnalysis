function hcd = getHighComplexityDistance(image,labels,graphDistances,colorHists,gradient,labelSet1,labelSet2)
Dmin = Inf;
Dg = Inf;

for i = labelSet1
    for j = labelSet2
        Dmin = min(Dmin, getColorDistance(image,labels,colorHists,gradient,i,j));
        Dg = min(Dg, graphDistances(i,j));
    end
end

hcd = 0.4*Dg + Dmin;


end

