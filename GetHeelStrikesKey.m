function HS_idxs = GetHeelStrikesKey(vertical_force)
    % Uses a threshold on vertical force to calculate heel strike indices
    arguments
        vertical_force (:,1) double
    end

    threshold = 50;
    HS_idxs = [];
    for i = 2:length(vertical_force)
        if vertical_force(i) > threshold && vertical_force(i-1) < threshold
            HS_idxs(end+1) = i;
        end
    end
end