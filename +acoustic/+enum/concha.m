classdef concha < int32
% Enumeration class for including concha cavity in the ear canal model.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    without_concha(1)
    include_concha(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('without_concha')   = 'Exclude Concha';
        map('include_concha') = 'Include Concha';
    end
end
end
