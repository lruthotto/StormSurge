values0 = ["0.27", "0.276","0.282","0.288","0.294","0.3","0.306","0.312","0.318","0.324","0.33"];
values1 = ["0.135","0.138","0.141","0.144","0.147","0.15","0.153","0.156","0.159","0.162","0.165"];
valuesf = ["-0.015","-0.012","-0.009","-0.006","-0.003","0.0","0.003","0.006","0.009","0.012","0.015"];
figure(1)
for k = 1:2:length(values0)
    for j = 1:2:length(values1)
        for i = 1:2:length(valuesf)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb0"+values0(k)+ ...
                "smb1"+values1(j)+"smbf"+valuesf(i)+"sillmin415sillmax425"+ ...
                "sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,"t"));
            H = table2array(T(:,"H"));
            plot(t,H,"Color", [0,0,0,0.75])
            title("t vs. H(t): smb0 smb1 smbf ")
            hold on
        end
    end
end
xlabel("Time, t")
ylabel("Height, H(t)")
saveas(gcf, "H(t)smb0smb1smbf10.png")
hold off
figure(2)
for k = 1:2:length(values0)
    for j = 1:2:length(values1)
        for i = 1:2:length(valuesf)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb0"+values0(k)+ ...
                "smb1"+values1(j)+"smbf"+valuesf(i)+"sillmin415sillmax425" + ...
                "sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,"t"));
            L = table2array(T(:,"L"));
            plot(t,L,"Color", [0,0,0,0.75])
            title("t vs. L(t): smb0 smb1 smbf")
            hold on
        end
    end
end
xlabel("Time, t")
ylabel("Length, L(t)")
saveas(gcf, "L(t)smb0smb1smbf10.png")
hold off
valuesmin = ["404.625","406.7","408.775","410.85","412.925","415.0","417.075","419.15","421.225","423.3","425.375"];
valuesmax = ["414.375","416.5","418.625","420.75","422.875","425.0","427.125","429.25","431.375","433.5","435.625"];
valuesslope = ["0.009","0.0092","0.0094","0.0096","0.0098","0.01","0.0102","0.0104","0.0106","0.0108","0.011"];
figure(3)
for k = 1:2:length(valuesmin)
    for j = 1:2:length(valuesmax)
        for i = 1:2:length(valuesslope)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb00.3smb10.15smbf0.0"+ ...
                "sillmin"+valuesmin(k)+"sillmax"+valuesmax(j)+"sillslope" ...
                +valuesslope(i)+"hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,"t"));
            H = table2array(T(:,"H"));
            plot(t,H,"Color", [0,0,0,0.75])
            title("t vs. H(t): sillmin sillmax sillslope")
            hold on
        end
    end
end
xlabel("Time, t")
ylabel("Height, H(t)")
saveas(gcf, "H(t)sillminsillmaxsillslope10.png")
hold off
figure(4)
for k = 1:2:length(valuesmin)
    for j = 1:2:length(valuesmax)
        for i = 1:2:length(valuesslope)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb00.3smb10.15smbf0.0" + ...
                "sillmin"+valuesmin(k)+"sillmax"+valuesmax(j)+"sillslope" ...
                +valuesslope(i)+"hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,"t"));
            L = table2array(T(:,"L"));
            plot(t,L,"Color", [0,0,0,0.75])
            title("t vs. L(t): sillmin sillmax sillslope")
            hold on
        end
    end
end
xlabel("Time, t")
ylabel("Length, L(t)")
saveas(gcf, "L(t)sillminsillmaxsillslope10.png")
hold off
valuesh = ["2.1364"];
valuesl = ["4.3212"];
valuesbx = ["-0.0011","-0.00108","-0.00106","-0.00104","-0.00102","-0.001","-0.00098","-0.00096","-0.00094","-0.00092","-0.0009"];
figure(5)
for k = 1:length(valuesh)
    for j = 1:length(valuesl)
        for i = 1:length(valuesbx)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb00.3smb10.15smbf0.0" + ...
                "sillmin415sillmax425sillslope0.01hnd"+valuesh(k)+"lnd"+valuesl(j) ...
                +"bx"+valuesbx(i)+".csv");
            t = table2array(T(:,"t"));
            H = table2array(T(:,"H"));
            plot(t,H,"Color", [0,0,0,0.75])
            title("t vs. H(t): hnd lnd bx")
            xlabel("t")
            ylabel("H(t)")
            hold on
        end
    end
end
xlabel("Time, t")
ylabel("Height, H(t)")
saveas(gcf, "H(t)hndlndbx10single.png")
hold off
figure(6)
for k = 1:2:length(valuesh)
    for j = 1:2:length(valuesl)
        for i = 1:2:length(valuesbx)
            T = readtable("data_matrix_10/smbt11950smbtf2300smb00.3smb10.15smbf0.0" + ...
                "sillmin415sillmax425sillslope0.01hnd"+valuesh(k)+"lnd"+valuesl(j) ...
                +"bx"+valuesbx(i)+".csv");
            t = table2array(T(:,"t"));
            L = table2array(T(:,"L"));
            plot(t,L,"Color", [0,0,0,0.75])
            title("t vs. L(t): hnd lnd bx")
            xlabel("t")
            ylabel("L(t)")
            hold on
        end
    end
end
xlabel("Time, t")
ylabel("Length, L(t)")
saveas(gcf, "L(t)hndlndbx10single.png")
hold off
