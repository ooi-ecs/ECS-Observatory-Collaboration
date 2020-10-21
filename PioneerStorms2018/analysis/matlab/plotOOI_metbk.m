%Plots panels of meteorology variables from METBK packages on surface buoys from OOI
%
%Choice below to read in from NETCDF file (pulled from OOI data portal) or
%from .mat file created from OOI M2M matlab codes

%created by Johna Rudzin, april 2020

%%%Can use this info below to automate infile name creation
%code isn't setup that way now. This is only used for output file name presently.
%platformname
pname='CP01CNSM'
%node
node='SBD11'
%instrument_class
iclass='06-METBKA000'
%method
method='recovered_host'
%stream
stream='metbk_a_dcl_instrument'
%pull dates
dates='20181112-20181205';

%read in netcdf file
infile='deployment0010_CP01CNSM-SBD11-06-METBKA000-recovered_host-metbk_a_dcl_instrument_recovered_20181112T000012.513000-20181205T235959.678000.nc';


time=ncread(infile,'time');
sst=ncread(infile,'sea_surface_temperature');
sss=ncread(infile,'met_salsurf');
apres=ncread(infile,'barometric_pressure');
atmp=ncread(infile,'air_temperature');
qh=ncread(infile,'met_latnflx_minute');
qs=ncread(infile,'met_sensflx_minute');
wspd=ncread(infile,'met_relwind_speed');
uwind=ncread(infile,'eastward_wind_velocity');
vwind=ncread(infile,'northward_wind_velocity');
wdir=ncread(infile,'met_relwind_direction');
cdir=ncread(infile,'met_current_direction');
ucurr=ncread(infile,'eastward_velocity');
vcurr=ncread(infile,'northward_velocity');

%%%%%% Read code using .mat output
%if wanting to use .mat output from matlab OOI M2M .mat file, uncomment code
%below and comment lines above from "infile" to "vcurr"
%load('CP01CNSM_METBK1_2018-11-12_2018-12-06_RI.mat');

%for i=1:length(outvariables);
%varname{i}=outvariables(i).name;
%data{i}=outvariables(i).data;
%units{i}=outvariables(i).units;
%end

%time=data{1};
%sst=data{2};
%sss=data{4};
%apres=data{7};
%atmp=data{8};
%rh=data{9};
%precip=data{12};
%qh=data{14};
%qs=data{16};
%uwind=data{17};
%vwind=data{18};
%q=data{19};
%wspd=data{20};
%lat=data{23};
%lon=data{24};
%%%%%%%%%%%%%%%%%%%

%create time vector with readable time units
for i=1:length(time)
  timestr{i}=datetime(1900,1,1)+(time(i)/(3600*24));
  xtime(i)=datenum(timestr{i});
end


ii=1:60*3:length(xtime); %output of data is every minute so plot every 3 hours (180 min)

f=figure;
subplot(6,1,1);a=plot(xtime(ii),apres(ii),'k','linewidth',1.5);
datetick('x','mm-dd-hh','keepticks');
ax = ancestor(a, 'axes');
ax.YAxis.Exponent = 0;
ylabel('Pressure (hPa)');
set(gca,'Fontname','Serif','Fontsize',12);
datetick('x','mm-dd-hh','keepticks');
subplot(6,1,2);plot(xtime(ii),wspd(ii),'k','linewidth',1.5);
ylabel({'Wind Speed';'(ms^-^1)'});
set(gca,'Fontname','Serif','Fontsize',12);
datetick('x','mm-dd-hh','keepticks');
subplot(6,1,3);plot(xtime(ii),atmp(ii),'k','linewidth',1.5);
ylabel({'Air Temp';'(\circC)'});
set(gca,'Fontname','Serif','Fontsize',12);
datetick('x','mm-dd-hh','keepticks');
subplot(6,1,4);plot(xtime(ii),qh(ii),'k','linewidth',1.5);
hold on;plot(xtime(ii),qs(ii),'--k','linewidth',1.5);
ylabel({'Heat Flux';'(Wm^-^2)'});%legend('Latent','Sensible');
set(gca,'Fontname','Serif','Fontsize',12);
datetick('x','mm-dd-hh','keepticks');
subplot(6,1,5);plot(xtime(ii),sst(ii),'k','linewidth',1.5);
ylabel('SST (\circC)');
set(gca,'Fontname','Serif','Fontsize',12);
datetick('x','mm-dd-hh','keepticks');
subplot(6,1,6);quiver(xtime(ii)',ones(length(ii),1),ucurr(ii),vcurr(ii),'color','k','maxheadsize',0.1,'linewidth',1.5);
ylabel({'Current Speed';'(ms^-^1)'});
set(gca,'Fontname','Serif','Fontsize',12);
datetick('x','mm-dd-hh','keepticks');

print(f,'-dpng',[pname '-' node '-' iclass '-' method  '-'stream '-' dates '.png']);
