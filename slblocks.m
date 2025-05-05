function blkStruct = slblocks
% This function specifies that the library should appear
% in the Library Browser
% and be cached in the browser repository

%   Copyright 2025 The MathWorks, Inc.

% Browser.Library = 'mylib';
% 'mylib' is the name of the library
Browser(1).Library = 'acoustic_lib';

% Browser.Name = 'My Library';
% 'My Library' is the library name that appears
% in the Library Browser
Browser(1).Name = 'Acoustic';

Browser(1).IsFlat  = 0; % Is this library "flat" (i.e. no subsystems)?

blkStruct.Browser = Browser;