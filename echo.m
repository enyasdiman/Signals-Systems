clc; clear all;
[x,Fs] = audioread('myRecording.wav);
sound(x,Fs);
y = zeros(1,length(x));

for i = 900:length(x)
                   y(i) = x(i) + 0.4*x(i-800);
end
sound(y,Fs);
