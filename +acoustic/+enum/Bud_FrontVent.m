classdef Bud_FrontVent < int32
% Enumeration class for including a front vent on the earbud.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    without_front_vent(1)
    include_front_vent(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('without_front_vent')   = 'Exclude Front Vent';
        map('include_front_vent') = 'Include Front Vent';
    end
end
end
