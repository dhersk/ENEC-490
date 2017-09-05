function [ n ] = annual_profile(data)
%function that creates monthly gas prices to annual profile

num_data_points = length(data);
years = floor(num_data_points/12);

%create empty matrix 
n = zeros(12,years);

for i = 1:years
    for j = 1:12
        n(j,i) = data((i-1)*12+j);
    end
end

%new_years = 1997:1:2016;
%start = find(new_years==2008);

%n = m(:,start:end);

end
