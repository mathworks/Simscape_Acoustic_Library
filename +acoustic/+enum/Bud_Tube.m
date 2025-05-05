classdef Bud_Tube < int32
% Enumeration class for including a sound tube on the earbud.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    without_tube(1)
    include_tube(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('without_tube')   = 'Exclude Sound Tube';
        map('include_tube') = 'Include Sound Tube';
    end
end
end
