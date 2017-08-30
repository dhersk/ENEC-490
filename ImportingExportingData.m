%line 3 reads the downloaded file and creates a vector containing 
%the numeric data from the file.
[NUM] = xlsread('EER_EPMRU_PF4_Y35NY_DPGm.xls','Data 1');

%lines 7-12 creates a matrix which groups the monthly data into columns
%for each year.
NEW = zeros(12,30);
for x = 1:30
    for y = 1:12
        NEW(y,x) = NUM((x-1)*12+y);
    end
end

%line 16 creates a row vector which contains the average price gasoline
%prices for each year.
AVE = sum(NEW)/12;

%lines 20-24 convert the vector 'AVE' into a matrix with column containing
%the year and column two containing the corresponding gas price.
FINAL = zeros(30,2);
for i = 1:30
    FINAL(i,1) = 1986 + i;
    FINAL(i,2) = AVE(i);
end

%line 27 writes a .xlsx file with the data contained in the matrix 'FINAL'.
xlswrite('monthly_average_price.xlsx',FINAL);
