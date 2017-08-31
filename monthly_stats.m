function [ a ] = monthly_stats( vector )
%This function takes a vector containing monthly data and outputs a matrix
%containing the standard deviations and means for each month

%Line 6 calls the annual_profile function
[ old ] = annual_profile(vector);

%Line 9 stores the height and width of the output of annual_profile
[height, width] = size(old);

%Lines 12-17 flips the marix old over the line y=-x
[ new ] = zeros(width, height);
for rows = 1:height
    for columns = 1:width
        new(columns, rows) = old(rows, columns); 
    end    
end

%Line 20 calculates the means for each month from 2008-2016
[ means ] = sum(new)/9;

%Line 23 initializes the array 'a' which will be filled in with the 
%output data of the monthly_stats function
a = zeros(length(means),2);

%Line 27 calculates the standard deviations for the monthtly data
[ standards ] = std(new);

%Lines 30-33 put the statistical information into the output matrix 'a'
for i = 1:length(means)
    a(i,1) = means(i);
    a(i,2) = standards(i);
end

