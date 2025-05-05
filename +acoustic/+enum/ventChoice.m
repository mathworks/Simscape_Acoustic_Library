classdef ventChoice < int32
% Enumeration class for the selecting condenser microphone rear vent.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    rect(1)
    cyl(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('rect') = 'Rectangular Slot';
        map('cyl') = 'Cylindrical Tube';
    end
end
end
