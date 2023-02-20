function [d] = Generation1Part2(N)
%κλάδοι 1 έως 4
var = 0;

while var == 0
d(1) = rand * 54.13;
d(2) = rand * 21.56;
d(3) = rand * 34.08;
d(4) = rand * 49.19;
sum = d(1) + d(2) + d(3) + d(4);
d(1) = d(1)/sum * N;
d(2) = d(2)/sum * N;
d(3) = d(3)/sum * N;
d(4) = d(4)/sum * N;

    if d(1) < 54.13 && d(2) < 21.56 && d(3) < 34.08 && d(4) < 49.19 && d(1) >= 0 && d(2) >= 0 && d(3) >= 0 && d(4) >= 0
        var = 1;
    end
end

%κλάδοι 5 και 6
var2 = 0;
while var2 == 0
d(5) = rand * d(1);
d(6) = d(1) - d(5);

if d(5) < 33.03 && d(6) < 21.84 && d(5) >=0 && d(6) >= 0
    var2 = 1;
end
end

%κλάδοι 7 και 8
var3 = 0;
while var3 == 0
    d(7) = rand * d(2);
    d(8) = d(2) - d(7);
    if d(7) < 29.96 && d(8) < 24.87 && d(7) >=0 && d(8) >= 0
        var3 = 1;
    end
end

%κλάδοι 9 και 10
var4 = 0;
while var4 == 0
    d(10) = rand * d(4);
    d(9) = d(4) - d(10);
    if d(9) < 47.24 && d(10) < 33.97 && d(9) >= 0 && d(10) >= 0
        var4 = 1;
    end
end

%κλάδοι 11, 12 και 13
var5 = 0;
while var5 == 0
    newsum = d(9) + d(3) + d(8);
    d(11) = rand * newsum;
    d(12) = rand * newsum;
    d(13) = newsum - d(11) - d(12);
    d(17) = d(10) + d(11);
    
    if d(11) < 26.89 && d(12) < 32.76 && d(13) < 39.98 && d(17) < 59.73 && d(11) >= 0 && d(12) >= 0 && d(13) > 0 && d(17) > 0
        var5 = 1;
    end
end

%κλάδοι 14, 15 και 16
var6 = 0;
while var6 == 0
    newsum2 = d(6) + d(7) + d(13);
    d(14) = rand * 37.12;
    d(15) = newsum2 - d(14);
    d(16) = d(5) + d(14);
    
    if d(14) < 37.12 && d(15) < 53.83 && d(16) < 61.65 && d(14) >= 0 && d(15) >= 0 && d(16) > 0
        var6 = 1;
    end
end

% disp("END OF GENERATION 1");
% disp(d(15) + d(16) + d(12) + d(17));
d(18) = N;
end