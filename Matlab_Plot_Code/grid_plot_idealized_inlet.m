T0 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_0_km/fort14.txt");
x = T0(:,"Var2");
y = T0(:,"Var3");
T1 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_0_km/maxele.txt");
T2 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_5_km/maxele.txt");
w1 = [];
for i = 1:63
    x1 = table2array(T1(i,2));
    x2 = table2array(T2(i,2));
    if x1 == -9.9999000000E+004
        x1 = 0;
    end
    if x2 == -9.9999000000E+004
        x2 = 0;
    end
    w1(end+1,1) = (x1-x2)^2;
end
[x1, y1] = meshgrid(table2array(x),table2array(y));
z1 = griddata(x.Var2,y.Var3,w1,X1,Y1);
k = boundary(x.Var2, y.Var3);
pgon = polyshape(x.Var2(k), y.Var3(k),'Simplify',false);
idx = isinterior(pgon,x1(:),y1(:));
idx = reshape(idx,size(x1));
z1(~idx) = nan;
figure
contourf(x1,y1,z1,"Edgecolor","none");
colorbar

