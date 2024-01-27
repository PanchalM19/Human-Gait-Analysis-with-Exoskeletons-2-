function torque = ImpedanceController(impedance_params, gait_state, angle, velocity)
    % Uses gait state and the impedance params to determine the actuator
    % torque.

    arguments
        impedance_params (1,12) double
        gait_state (:,1) double
        angle (:,1) double
        velocity (:,1) double
    end

    % your code here
    torque = size(gait_state);
    stiff_k = impedance_params(1:4);
    damp_b = impedance_params(5:8);
    equi_angle = impedance_params(9:12);
    for i = 1 : size(gait_state,1)
        %using the torque equation given in the paper and ignoring the
        %cubic term
       torque(i) = -(stiff_k(gait_state(i))*(angle(i) - equi_angle(gait_state(i))) + damp_b(gait_state(i))*velocity(i));
    end
end