function [ n ] = annual_profile( vector )
%function that creates monthly gas prices to annual profile

years = floor(length(vector)/12);
m = zeros(12,years);
n = zeros(12,9);
for i = 1:years
    for j = 1:12
        m(j,i) = vector((i-1)*12+j,2);
    end
end

for x = 12:20
    for y = 1:12
        n(y,x-11) = m(y,x);
    end
end

% years = 1997:1:2016;
% start = find(years==2008);

%years = 1999:1:2016;
%start = find(years==1999);

%m = m(:,start:end);

end