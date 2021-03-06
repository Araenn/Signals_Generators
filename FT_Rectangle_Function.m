T = 10; %s
dt = 10^-3; %s
t = [-T:dt:T]; %time
N = length(t);
df = 10^-3; %Hz
a = 1; 
f = [-T:df:T]; %frequency
U = length(f);

for k = 1:N
  if (-a < t(k) && t(k) < a)
    x1(k) = 1;
  else
    x1(k) = 0;
  end
end

for k = 1:U %create a tab from 1 to U, in order to generate the Fourier Transform
  X1(k) = T .* sinc(f(k) .* T); %pi is included in the sinc function
end

subplot(2,1,1);
plot(t, x1) %plot the rectangle function depending to time
title('Rectangle function')
xlabel('t')
ylabel('y')
grid()

subplot(2,1,2);
plot(f, X1) %plot the Fourier transform of x1 depending to frequency
title('Fourier transform')
xlabel('f')
ylabel('y')
grid()
