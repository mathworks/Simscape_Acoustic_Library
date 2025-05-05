classdef R2L2 < int32
% Enumeration class for the selecting R2L2 model.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    simple(1)
    withR2L2(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('simple')   = 'Simple linear model';
        map('withR2L2') = 'Include R2 and L2';
    end
end
end
