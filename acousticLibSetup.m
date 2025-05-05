% acousticLibSetup: Setup the acoustic library
% Run this file to add relevant folders to the path

%   Copyright 2025 The MathWorks, Inc.

addpath(fullfile(pwd,'legacy'))
addpath(pwd)

% The library file is available with this repository. However, you can
% build the library again if you need to.
%
% To build the documented library:
%  sscbuild acoustic
%
% To build the legacy library
% cd('legacy')
% sscbuild acoustical