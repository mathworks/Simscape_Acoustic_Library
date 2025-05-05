classdef springChoice < int32
% Enumeration class for the selecting R2L2 model.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    simple(1)
    nonlin(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('simple')    = 'Simple linear model';
        map('nonlin') = 'Nonlinear spring stiffness coefficients';
    end
end
end
