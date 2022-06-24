valuesmin = ["400", "405", "410", "415", "420", "425"];
valuesmax = ["425", "430", "435", "440", "445", "450"];
valuesslope =  ["-0.03", "-0.02", "-0.01", "0", "0.005", "0.01"];
figure(1)
for k = 1:length(valuesmin)
    for j = 1:length(valuesmax)
        for i = 1:length(valuesslope)
            T = readtable("data_matrix/smbt11950smbtf2300smb00.3smb10.15smbf0" + ...
                "sillmin"+valuesmin(k)+"sillmax"+valuesmax(j)+"sillslope" ...
                +valuesslope(i)+"hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,'t'));
            H = table2array(T(:,"H"));
            plot(t,H,'k')
            hold on
        end
    end
end
saveas(gcf, "H(t)sillminsillmaxsillslope.png")
hold off
figure(2)
for k = 1:length(valuesmin)
    for j = 1:length(valuesmax)
        for i = 1:length(valuesslope)
            T = readtable("data_matrix/smbt11950smbtf2300smb00.3smb10.15smbf0" + ...
                "sillmin"+valuesmin(k)+"sillmax"+valuesmax(j)+"sillslope" ...
                +valuesslope(i)+"hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,'t'));
            L = table2array(T(:,"L"));
            plot(t,L,'k')
            hold on
        end
    end
end
saveas(gcf, "L(t)sillminsillmaxsillslope.png")
hold off
