%6. NRz signal;
% Clear the workspace and close all figures
clc;
close all;
clear all;

bitStream = [1 0 1 0 0 1]; % Bit stream
bitRate = 1; % Bit rate (bits per second)
duration = length(bitStream); % Duration of the signal (seconds)
samplingRate = 100; % Sampling rate (samples per second)

% Time vector
t = linspace(0, duration, duration * samplingRate);

% Generate NRZ signal
nrzSignal = zeros(1, length(t));
bitDuration = 1 / bitRate;
for i = 1:length(bitStream)
    if bitStream(i) == 1
        nrzSignal((i - 1) * bitDuration * samplingRate + 1:i * bitDuration * samplingRate) = 1;
    else
        nrzSignal((i - 1) * bitDuration * samplingRate + 1:i * bitDuration * samplingRate) = 0;
    end
end

% Plot
plot(t, nrzSignal, 'b', 'LineWidth', 2);
axis([0 duration -0.5 1.5]);
xlabel('Time (s)');
ylabel('Amplitude');
title('Non-Return-to-Zero (NRZ) Signal');
grid off;
