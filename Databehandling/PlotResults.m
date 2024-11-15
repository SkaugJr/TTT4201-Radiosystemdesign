%% -------------------- 
load('Data/Måling/group_6_2.mat');    % your file name here

%% -----------HB1TONE_MEASUREMENT-----------------------------
figure(1);
plot(PA_1tone.Pi_dBm,PA_1tone.Po_dBm);
xlabel('Input Power (dBm)'); ylabel('Output Power (dBm)'); grid on; axis tight
title('Output Power vs. Input Power');

figure(2);
plot(PA_1tone.Pi_dBm,PA_1tone.Gain_dB);
xlabel('Input Power (dBm)'); ylabel('Available Power Gain (dB)'); grid on;
title('Gain vs. Input Power');

figure(3);
plot(PA_1tone.Pi_dBm,PA_1tone.PAE);
xlabel('Input Power (dBm)'); ylabel('PAE (%)'); grid on;
title('PAE vs. Input Power');

figure(4);
plot(PA_1tone.Po_dBm,PA_1tone.PAE);
xlabel('Input Power (dBm)'); ylabel('PAE (%)'); grid on;
title('PAE vs. Output Power');

%% ---------- HB2TONE_MEASUREMENT ---------- 
PA_Out_BothTones_dBm = 10*log10( 10.^((PA_2tone.Po_dBm_f1)./10) + 10.^((PA_2tone.Po_dBm_f2)./10));
PA_In_BothTones_dBm  = PA_2tone.Pi_dBm_f1+3;

figure(5);
plot(PA_In_BothTones_dBm,PA_Out_BothTones_dBm,'b'); hold on
plot(PA_In_BothTones_dBm,PA_Out_BothTones_dBm+PA_2tone.TOIMD_dBc_low,'r'); 
plot(PA_In_BothTones_dBm,PA_Out_BothTones_dBm+PA_2tone.TOIMD_dBc_high,'g'); hold off
xlabel('Total Input Power both tones(dBm)'); ylabel('Po (dBm), IMD low and high'); grid on;
legend({'Po (dBm)' 'IMD low(dBm)' 'IMD high (dBm)'},'Location','southeast')
title('2-Tone Output Power and 3.order IMD vs. Input Power');


