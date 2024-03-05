t=0:100;

signal1=4*sin(t/2);
signal2=2*signal1;
signal3=4*sin((t+2)/2);

figure(1),subplot(3,1,1),stem(0:length(signal1)-1,signal1);title('Αρχικό σήμα 1');
subplot(3,1,2),stem(0:length(signal1)-1,signal1);title('Αρχικό σήμα 1');
subplot(3,1,3),stem(0:length(signal3)-1,signal3);title('Αρχικό σήμα 3');

down1=downsample (signal1,2);figure(2),subplot(3,1,1),stem(0:length(down1)-1,down1);title('Σήμα 1 μετά το Downsampling');
down2=downsample (signal2,2);subplot(3,1,2),stem(0:length(down2)-1,down2);title('Σήμα 2 μετά το Downsampling');
down3=downsample (signal3,2);subplot(3,1,3),stem(0:length(down3)-1,down3);title('Σήμα 3 μετά το Downsampling');

gram=isequal(2*down1, down2)

xro=isequal(down1, down3)






n = 0:100;

pulse1=sin(100*pi*0.1*n);
pulse2=sin(40*pi*0.1*n);
pulse=pulse1+pulse2;
pulse_noize=pulse +0.3*randn(size(pulse));
A1=movmean(pulse_noize,120)
A2=movmean(pulse_noize,400)
figure(3),clf,subplot(2,1,1),plot(pulse);title('Αρχικο σήμα');
subplot(2,1,2),plot(pulse_noize);title('Αρχικο σήμα μετά το randn');

figure(4),clf,subplot(2,1,1),plot(A1);title('το σήμα με εύρος παραθύρου 120');
subplot(2,1,2),plot(A2);title('το σήμα με εύρος παραθύρου 400');
