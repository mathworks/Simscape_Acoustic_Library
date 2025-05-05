classdef rad_area_Choice < int32
% Enumeration class for the selecting radius ofr area.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    radius(1)
    area(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('radius') = 'radius';
        map('area')   = 'area';
    end
end
end
