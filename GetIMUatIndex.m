function [IMU_data, labels] = GetIMUatIndex(indices, D_all)
    % Takes in vector or matrix (columns are different channels) and
    % computes the moving average
    arguments
        indices (1, :) double
        D_all table
    end

    IMU_data = [];
    labels = [];

    for i = 1:length(indices)
        current_idx = indices(i);
            
        IMU_data(end+1, :) = [D_all.R_Gyro(current_idx, :), D_all.R_Accel(current_idx,:)];
        labels(end+1, :) = D_all.RampAngle(current_idx);
    end
end
