%% This code performs a M2M Request for the data in Figure 2
%
% M2M Data Request
% Add the path to the local location of the M2M Matlab Code 
%Available: https://github.com/oceanobservatories/ooi-data-explorations/tree/master/matlab
addpath('G:\My Drive\Matlab_work\OSU\Cruises\OOI\M2M') % Local location of M2M Code  

% Set login and URL details. 
% Note: These are unique to each user (register for api key and token here: 
%   https://ooinet.oceanobservatories.org/signup)
username = 'OOIAPI-33J33E2K9D7YQ5';  %api_key
password = '15JXAAXHML7';	%api_token

% Set authorization header field in weboptions 
options = weboptions('CertificateFilename','','HeaderFields',{'Authorization',...
    ['Basic ' matlab.net.base64encode([username ':' password])]}, 'Timeout', 120);

% Set time period of interest 
start_date = '2018-01-01T00:00:00.000Z';
end_date = '2019-12-31T23:59:59.000Z';

% Specify metadata (see M2M documentation) 
platform_name = 'CP03ISSM';
node = 'BUOY';
instrument_class = 'METBK1';
method = 'RecoveredHost';

% Get M2M URL
[uframe_dataset_name,variables] = M2M_URLs(platform_name,node,instrument_class,method);
% Make M2M Call
[nclist] = M2M_Call(uframe_dataset_name,start_date,end_date,options);
% Get Data
[metbk_variables, metbk_mtime, netcdfFilenames] = M2M_Data(variables, nclist, false);   %This will download .nc file(s) and read in the data from the local files
%[metbk_variables, metbk_mtime, netcdfFilenames] = M2M_Data(variables, nclist);  %This will use the opendap to read in the data from remote files
save CP03ISSMmetpackage
