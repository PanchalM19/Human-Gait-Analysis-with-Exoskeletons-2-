function [feature_matrix, labels] = GetFeatures(indices, window_size, D_all, signals)
    % Creates a feature matrix with mean, min, max from a window of data,
    % from whichever signal names are passed.
    % tip: taking the mean/max/min of an n x m matrix is a 1 x m vector 
    arguments
        indices (1, :) double
        window_size double
        D_all table
        signals string
    end

    feature_matrix = [];
    labels = [];

    % your code here
        for a = 1 : size(signals)
            for b = 1:size(indices, 2)
                % For data
                window_data = [D_all.(signals(a))((indices(b)-window_size:indices(b)), 1) ...
                    D_all.(signals(a))((indices(b)-window_size:indices(b)), 2) ...
                    D_all.(signals(a))((indices(b)-window_size:indices(b)), 3)];
                feature_matrix_current = [mean(window_data(:, 1))...
                                            max(window_data(:, 1))...
                                            min(window_data(:, 1))...
                                            mean(window_data(:, 2))...
                                            max(window_data(:, 2))...
                                            min(window_data(:, 2))...
                                            mean(window_data(:, 3))...
                                            max(window_data(:, 3))...
                                            min(window_data(:, 3))];
                feature_matrix = [feature_matrix; feature_matrix_current];
                labels = [labels; D_all.RampAngle(indices(b))];
        end
    end