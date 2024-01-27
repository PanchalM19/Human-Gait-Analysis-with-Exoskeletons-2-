function R_GaitState = GetGaitState(D)
    % Takes in data and returns right leg gait state based on heuristics

    R_GaitState = NaN(size(D.Time));
    R_current_state = 1; % Assume gait state is 1 at the beginning of the file

    Force_Threshold = 50;
    Ankle_Angle_Threshold = 15;

    % Stance Flexion    = 1
    % Pre-Swing         = 2
    % Swing Flexion     = 3
    % Swing Extension   = 4

    % Your Code Here
%     for i=1:2:size(D)
%         R=D.R_ankle_Angle(:,i+1)
%         disp(R)
%     end 

    force = D.R_F(:, 3);
    ankle = D.R_Ankle_Angle;
    knee = D.R_Knee_Velocity;

    R_GaitState(1) = R_current_state;

    for i = 1:size(R_GaitState)
        if R_current_state == 1 && ankle(i) > Ankle_Angle_Threshold
            R_current_state = 2;
        elseif R_current_state == 2 && force(i) < Force_Threshold
            R_current_state = 3;
        elseif R_current_state == 3 && knee(i) > 0
            R_current_state = 4;
        elseif R_current_state == 4 && force(i) > Force_Threshold
            R_current_state = 1;
        end
        R_GaitState(i) = R_current_state;
    end

end