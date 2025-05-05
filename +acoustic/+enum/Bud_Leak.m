classdef Bud_Leak < int32
% Enumeration class for considering leakage on earbud due to imperfect
% fitting

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    without_leak(1)
    include_leak(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('without_leak')   = 'Not Consider Leakage';
        map('include_leak') = 'Consider Leakage';
    end
end
end
