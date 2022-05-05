% Importing data into MATLAB

Ag_nano_data = xlsread('Ag nano data.xlsx');

% Extracting relevant data
wavelength_data = Ag_nano_data(:, 1:2:19);
Absorbance_data = Ag_nano_data(:, 2:2:20);

% Locating the wavelengths at which maximum aborbance occurs (also -- the corresponding absorbance values)
max_wave = zeros(1, 10);
absorbance_val = zeros(1, 10);

for i = 1:10
    [val, idx] = max(Absorbance_data(:, i));
    absorbance_val(i) = Absorbance_data(idx, i);
    max_wave(i) = wavelength_data(idx, i);
end

% Visualization
figure(1); % for 0.5 mL dilute solution
plot(wavelength_data(:, 1), Absorbance_data(:, 1), 'k', 'LineWidth', 2);
hold on
xline(max_wave(1), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(1), max(Absorbance_data(:, 1))/2, '430.5 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(2); % for 1.5 mL diluted solution 1
plot(wavelength_data(:, 2), Absorbance_data(:, 2), 'k', 'LineWidth', 2);
hold on
xline(max_wave(2), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(2), max(Absorbance_data(:, 2))/2, '430.5 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(3); % for 1.5 mL diluted solution 2
plot(wavelength_data(:, 3), Absorbance_data(:, 3), 'k', 'LineWidth', 2);
hold on
xline(max_wave(3), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(3), max(Absorbance_data(:, 3))/2, '429 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(4); % for 1 mL diluted solution 1
plot(wavelength_data(:, 4), Absorbance_data(:, 4), 'k', 'LineWidth', 2);
hold on
xline(max_wave(4), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(4), max(Absorbance_data(:, 4))/2, '432.5 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(5); % for 1 mL diluted solution 2
plot(wavelength_data(:, 5), Absorbance_data(:, 5), 'k', 'LineWidth', 2);
hold on
xline(max_wave(5), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(5), max(Absorbance_data(:, 5))/2, '431.5 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(6); % for 1 mL diluted solution 3
plot(wavelength_data(:, 6), Absorbance_data(:, 6), 'k', 'LineWidth', 2);
hold on
xline(max_wave(6), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(6), max(Absorbance_data(:, 6))/2, '431 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(7); % for 2 mL diluted solution 1
plot(wavelength_data(:, 7), Absorbance_data(:, 7), 'k', 'LineWidth', 2);
hold on
xline(max_wave(7), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(7), max(Absorbance_data(:, 7))/2, '427 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(8); % for 2 mL diluted solution 2
plot(wavelength_data(:, 8), Absorbance_data(:, 8), 'k', 'LineWidth', 2);
hold on
xline(max_wave(8), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(8), max(Absorbance_data(:, 8))/2, '427 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(9); % for 2 mL diluted solution 3
plot(wavelength_data(:, 9), Absorbance_data(:, 9), 'k', 'LineWidth', 2);
hold on
xline(max_wave(9), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(9), max(Absorbance_data(:, 9))/2, '425 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(10); % for 2 mL diluted solution 4
plot(wavelength_data(:, 10), Absorbance_data(:, 10), 'k', 'LineWidth', 2);
hold on
xline(max_wave(10), '--', 'Color', 'r', 'LineWidth', 1.5);
text(max_wave(10), max(Absorbance_data(:, 10))/2, '425 nm', 'Color', 'red', 'FontSize', 16);
xlabel('Wavelength [nm]', 'FontSize', 20);
ylabel('Absorbance (arb. units)', 'FontSize', 20);
hold off
grid

figure(11); % all the data
cm = jet(10);

for i = 1:10
    plot(wavelength_data(:, i), Absorbance_data(:, i), 'Color', cm(i, :), 'LineWidth', 1.5);
    xlabel('Wavelength [nm]', 'FontSize', 20);
    ylabel('Absorbance (arb. units)', 'FontSize', 20);
    hold on
    grid
    legend('0.5 mL', '1.5 mL diluted 1', '1.5 mL diluted 2', '1 mL diluted 1', '1 mL diluted 2', '1 mL diluted 3', '2 mL diluted 1', '2 mL diluted 2', '2 mL diluted 3', '2 mL diluted 4', 'FontSize', 17, 'Orientation', 'vertical', 'Location', 'best');
end

% Computing FWHMs of absorbance data
FWHM_data = zeros(1, 10);

for i = 1:10
    FWHM_data(i) = FWHM(wavelength_data(:, i), Absorbance_data(:, i));
end






