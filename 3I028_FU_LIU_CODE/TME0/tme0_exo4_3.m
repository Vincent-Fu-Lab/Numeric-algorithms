format longE
x = 0:1:2000;
z = sin (-10 + x / 100);
y = zeros(1, 2001);

for i = 1:2001
    y(i) = sin_serie(-10 + (i - 1) / 100);
end

result = (y - z) ./ z;
plot(x, result)