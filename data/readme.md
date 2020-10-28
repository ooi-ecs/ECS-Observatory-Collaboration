# PioneerStorms2018 - Data

### *Met_mat*
The data from files
`deployment0010_CP01CNSM-SBD11-06-METBKA000-recovered_host-metbk_a_dcl_instrument_recovered_20181112T000012.513000-20181205T235959.678000.nc`
& `CP01CNSM_METBK1_2018-11-12_2018-12-06_RI.mat` were acquired from the site CP01CNSM using the following parameters:

```python
node = 'SBD11'
instrument= '06-METBKA000'
method = 'recovered_host'
stream = 'metbk_a_dcl_instrument'
time='?beginDT=2018-11-12T00:00:00.000Z&endDT=2018-12-05T00:00:00.000Z'
```
The code "plotOOImetbk.m" utilizes either file (.nc or .mat) and was used to create Figure 3. Please see comments in code to determine how to use each file.

### *Profiler_csv*

**'Site'\_ctd.csv**: Formatted .csv files of temperature and salinity from the 7 profiler mooring sites. Names are site codes as used by [OOI Data Portal](https://ooinet.oceanobservatories.org/):
- CP01CNPM: Central Profiler Mooring
- CP02PMCI: Central Inshore Profiler Mooring
- CP02PMCO: Central Offshore Profiler Mooring
- CP02PMUI: Upstream Inshore Profiler Mooring
- CP02PMUO: Upstream  Offshore Profiler Mooring
- CP03ISPM: Inshore Profiler Mooring
- CP04OSPM: Offshore Profiler mooring

Code for data requests and formatting can be found in the `ProfilerCTD_RequestsAndAnalysis.ipynb` notebook in the analysis directory for this project. In addition to the site code as stated above, all data were acquired via the m2m API using the following parameters:

```python
node = 'WFP01'
instrument= '03-CTDPFK000'
method = 'telemetered'
stream = 'ctdpf_ckl_wfp_instrument'
time='?beginDT=2018-11-12T00:00:00.000Z&endDT=2018-12-06T00:00:00.000Z'
```

Header information for csv files:

| Time | Practical Salinity (PSS-78) | Seawater Conductivity | Seawater Pressure (mbar) | Seawater Temperature (°C) | Depth (m) |
|----|----|----|----|----|----|
|`time`|`practical_salinity`|`ctdpf_ckl_seawater_conductivity`|`ctdpf_ckl_seawater_pressure`|	`ctdpf_ckl_seawater_temperature`|`depth`|

**woaDecadalAverage.csv**: .csv form of the data contained within the `woa18_TSDO_CP02MCO.tar.gz` file in the data directory.

| Depth (m) | Seawater Temperature (°C) | Practical Salinity (PSS-78) | Dissolved Oxygen (umol/kg) |
|----|----|----|----|
|`depth`|`temp`|`salinity`|`oxygen`|


### Original Data Sources
Three publicly available datasets were used for the case study.
- Data for the OOI Pioneer Array can be accessed via the OOI Data Portal (first accessed 10 March 2020, https://ooinet.oceanobservatories.org/data_access/#CP).
- World Ocean Atlas 18 climatology is available via the National Oceanographic and Atmospheric Administration National Centers for Environmental Information (first accessed 27 April 2020, https://www.nodc.noaa.gov/OC5/woa18/woa18data.html).
- Satellite-derived sea surface temperature can be accessed via Jet Propulsion Laboratory’s PODAAC Group for High Resolution SSTs (GHRSST) Level 4 MUR (first accessed 27 April 2020, https://podaac.jpl.nasa.gov/dataset/MUR-JPL-L4-GLOB-v4.1).
