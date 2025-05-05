classdef Bud_RearVent < int32
% Enumeration class for including a rear vent on the earbud.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    without_rear_vent(1)
    include_rear_vent(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('without_rear_vent')   = 'Exclude Rear Vent';
        map('include_rear_vent') = 'Include Rear Vent';
    end
end
end
