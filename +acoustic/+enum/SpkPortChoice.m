classdef SpkPortChoice < int32
% Enumeration class for the selecting number of speaker mounting holes.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    withoutport(1)
    withport(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('withoutport') = 'Without Port';
        map('withport')    = 'With Port';
    end
end
end
