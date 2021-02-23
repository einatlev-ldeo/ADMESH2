function ADMESH
% ADMESH v2.0 2014
% Copyright (C) 2014-2018. Dustin West, Colton Conroy, Ethan Kubatko
% ADvanced Mesh Generator for hydrodynmaic models
%
% ADMESH is a two-dimensional, automatic unstructured mesh generator for 
% shallow water models. Starting with only target minimum and maximum element
% sizes and points defining the boundary and bathymetry/topography of the 
% domain, the goal of the mesh generator is to automatically produce a 
% high-quality mesh from this minimal set of input. From the geometry 
% provided, properties such as local features, curvature of the boundary, 
% bathymetric/topographic gradients, and approximate flow characteristics can 
% be extracted, which are then used to determine local element sizes. The 
% result is a high-quality mesh, with the correct amount of refinement where 
% it is needed to resolve all the geometry and flow characteristics of the 
% domain.
%
% Department of Civil and Environmental Engineering
% and Geodetic Science, The Ohio State University,
% 470 Hitchcock Hall, 2070 Neil Avenue, Columbus,
% OH 43210, USA
%
% Developers:_____________________________________________________________ 
%           Dustin West     - west.425@osu.edu
%           Colton Conroy   - conroy.51@gmail.com
%           Ethan Kubatko   - kubatko.3@osu.edu
%_________________________________________________________________________
%
% References:_____________________________________________________________
% 
% Colton J. Conroy, Ethan J. Kubatko, Dustin W. West, ADMESH: An advanced 
% unstructured mesh generator for shallow water models, Ocean Dynamics, 
% December 2012, Volume 62, Issue 10-12, pp 1503-1517
%
% Per-Olof Persson and Gilbert Strang, "A Simple Mesh Generator in MATLAB,"
% SIAM Review Vol. 46 (2) 2004
%_________________________________________________________________________
%          
%--------------------------------------------------------------------------
% Add libraries path
%--------------------------------------------------------------------------
if ispc
        
    addpath(genpath([cd '\libraries'])); % Store current path
    
elseif ismac
    
    addpath(genpath([cd '/libraries'])); % Store current path
    
else
    
    errordlg('ADMESH is not written for this platform.','ADMESH')

end

%--------------------------------------------------------------------------
% Start ADMESH Program
%--------------------------------------------------------------------------
ADMESH_v_2

end