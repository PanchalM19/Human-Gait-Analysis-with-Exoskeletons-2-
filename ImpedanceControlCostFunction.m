function error = ImpedanceControlCostFunction(impedance_params_to_evaluate, ...
        gait_state, angle, velocity, biological_torque)
    % calculates actuator torque from the impedance_params and returns
    % error in RMSE

    % Your code here
    actuator_torque = ImpedanceController(impedance_params_to_evaluate, gait_state, angle, velocity);

    difference = biological_torque' - actuator_torque;
    error = sqrt(mean(difference.^2));
end