%% This code performs a M2M Data Request for the data in Figure 5
% Kristen Fogaren fogaren@bc.edu

% M2M Data Request
% local copy of M2M Matlab Code
% Available for download at 
% https://github.com/oceanobservatories/ooi-data-explorations/tree/master/matlab 
M2Mdir = 'G:\My Drive\Matlab_work\OSU\Cruises\OOI\M2M';

% Add the path to the local location of the M2M Matlab Code 
addpath(M2Mdir) 

% Set login and URL details. 
% Note: These are unique to each user (register for api key and token here: 
%   https://ooinet.oceanobservatories.org/signup)
username = 'OOIAPI-33J33E2K9D7YQ5';  %api_key
password = '15JXAAXHML7';	%api_token

% Set authorization header field in weboptions 
options = weboptions('CertificateFilename','','HeaderFields',{'Authorization',...
    ['Basic ' matlab.net.base64encode([username ':' password])]}, 'Timeout', 120);

start_date = '2018-11-09T00:00:00.000Z';
end_date = '2018-12-07T23:59:59.000Z';

% % Specify metadata (see M2M documentation) 
% platform_name = 'CP03ISSM';
% node = 'BUOY';
% instrument_class = 'METBK1';
% method = 'RecoveredHost';
% 
% % Get M2M URL
% [uframe_dataset_name,variables] = M2M_URLs(platform_name,node,instrument_class,method);
% % Make M2M Call
% [nclist] = M2M_Call(uframe_dataset_name,start_date,end_date,options);
% % Get Data
% [metbk_variables, metbk_mtime, netcdfFilenames] = M2M_Data(variables, nclist, false);   %This will download .nc file(s) and read in the data from the local files
% %[metbk_variables, metbk_mtime, netcdfFilenames] = M2M_Data(variables, nclist);  %This will use the opendap to read in the data from remote files
% save CP03ISSMmetpackage metbk_variables metbk_mtime...
%     platform_name node instrument_class method start_date end_date nclist

platform_name = 'CP02PMCO';
node = 'PROFILER';
instrument_class = 'CTD';
method = 'RecoveredWFP';

% Get M2M URL
[uframe_dataset_name,variables] = M2M_URLs(platform_name,node,instrument_class,method);
% Make M2M Call
[nclist] = M2M_Call(uframe_dataset_name,start_date,end_date,options);
% Get Data
[ctd_variables, ctd_mtime, netcdfFilenames] = M2M_Data(variables, nclist, false);   %This will download .nc file(s) and read in the data from the local files
%[ctd_variables, ctd_mtime, netcdfFilenames] = M2M_Data(variables, nclist);  %This will use the opendap to read in the data from remote files
save CP02PMCOProfilerCTD ctd_variables ctd_mtime...
    platform_name node instrument_class method start_date end_date nclist

platform_name = 'CP02PMCO';
node = 'PROFILER';
instrument_class = 'DOSTA';
method = 'RecoveredWFP';

% Get M2M URL
[uframe_dataset_name,variables] = M2M_URLs(platform_name,node,instrument_class,method);
% Make M2M Call
[nclist] = M2M_Call(uframe_dataset_name,start_date,end_date,options);
% Get Data
[DO_variables, DO_mtime, netcdfFilenames] = M2M_Data(variables, nclist, false);   %This will download .nc file(s) and read in the data from the local files
%[DO_variables, DO_mtime, netcdfFilenames] = M2M_Data(variables, nclist);  %This will use the opendap to read in the data from remote files
save CP02PMCOProfilerDO DO_variables DO_mtime...
    platform_name node instrument_class method start_date end_date nclist

platform_name = 'CP02PMCO';
node = 'PROFILER';
instrument_class = 'FLORT';
method = 'RecoveredWFP';

% Get M2M URL
[uframe_dataset_name,variables] = M2M_URLs(platform_name,node,instrument_class,method);
% Make M2M Call
[nclist] = M2M_Call(uframe_dataset_name,start_date,end_date,options);
% Get Data
[flort_variables, flort_mtime, netcdfFilenames] = M2M_Data(variables, nclist, false);   %This will download .nc file(s) and read in the data from the local files
%[flort_variables, flort_mtime, netcdfFilenames] = M2M_Data(variables, nclist);  %This will use the opendap to read in the data from remote files
save CP02PMCOProfilerFLORT flort_variables flort_mtime...
    platform_name node instrument_class method start_date end_date nclist