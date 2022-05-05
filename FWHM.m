% Computing FWHM of absorbance data

function [FWHM_val] = FWHM(x, y)

halfMax = max(y)/2;

% Find where the data first drops below half the max
index1 = find(y >= halfMax, 1, 'first');

% Find where the data last rises above half the max
index2 = find(y >= halfMax, 1, 'last');

% Compute the actual FWHM value
FWHM_val = x(index2) - x(index1);

end