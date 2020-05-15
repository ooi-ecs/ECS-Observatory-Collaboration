%Code to use matlab OOI M2M codes to pull specific data stream information for time period of interest and output to .mat file
%created by johna rudzin, april 2020


%%%%CHANGE ALL OF THIS INFORMATION BELOW FOR YOUR SPECIFIC USAGE%%%%%%%%

%.. set login and URL details
username = '';  %api_key - input your personal api-key here
password = '';    %api_token - input your personal api-token here
% Set Authorization header field in weboptions
options = weboptions('CertificateFilename','','HeaderFields',{'Authorization',...
    ['Basic ' matlab.net.base64encode([username ':' password])]}, 'Timeout', 120);

%.. set time period of interest
start_date='2018-11-12T00:00:00.000Z';
end_date='2018-12-06T00:00:00.000Z';

%Specify metadata
platform_name = 'CP01CNSM';
node = 'MFN';
instrument_class = 'ADCP';
method = 'RecoveredInst';
%%%%CHANGE ALL OF THIS INFORMATION ABOVE FOR YOUR SPECIFIC USAGE%%%%%%%%

%Get M2M URL
[uframe_dataset_name,variables] = M2M_URLs(platform_name,node,instrument_class,method);

uframe_dataset_name

%Make M2M Call
[nclist] = M2M_Call(uframe_dataset_name,start_date,end_date,options);

%Get Data
[outvariables, outtime, netcdfFilenames] = M2M_Data(variables, nclist);  %This will use the opendap to read in the data from remote files

%Create .mat file
fout=['/matlab/matfiles/' platform_name '_' instrument_class '_' start_date(1:10) '_' end_date(1:10) '.mat'];

save(fout,'outvariables','outtime')

