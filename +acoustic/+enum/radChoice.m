classdef radChoice < int32
% Enumeration class for the selecting radiation type.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    piston(1)
    spherical_cap(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('piston') = 'Baffled Piston';
        map('spherical_cap') = 'Spherical Cap';
    end
end
end
