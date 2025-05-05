classdef Bud_FRVent < int32
% Enumeration class for including a front vent on the earbud.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    without_front_to_rear(1)
    include_front_to_rear(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('without_front_to_rear')   = 'Exclude Front-to-Rear Vent';
        map('include_front_to_rear') = 'Include Front-to-Rear Vent';
    end
end
end
