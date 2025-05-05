classdef Bud_Tip < int32
% Enumeration class for including a tip on the earbud.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    without_tip(1)
    include_tip(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('without_tip')   = 'Exclude Ear Tip';
        map('include_tip') = 'Include Ear Tip';
    end
end
end
