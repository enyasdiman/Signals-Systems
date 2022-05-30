hclc; clear all; close all;
%% isaret olusturma
t = 0:0.0001:2*pi;
xt = 10*sint(t)
figure(1), plot(t, xt);

%% ornekleme
ts = 4000;
toplamUzunluk = floor(62382/ts);
xSampled = zeros (1, toplamUzunluk);
tSampled = zeros(1, toplamUzunluk);
for i = 1:toplamUzunluk
  tSampled(i) = t(i*ts);
  xSampled(i) = xt(i*ts);
end
hold on;
stem(tSampled, xSampled, 'r');

%% nicemleme
xQuantized = zeros (1, toplamUzunluk);
Qstep (10-(-10))/4;

for i = 1:toplamUzunluk
  xQuantized(i) = floor(xSampled(i)/Qstep)*Qstep+Qstep/2;
end
hold on;
stem(tSampled, XQuantized, 'k');
