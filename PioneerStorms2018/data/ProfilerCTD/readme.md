# ProfilerCTD

### 'Site'\_ctd.csv

Formatted .csv files of temperature and salinity from the 7 profiler mooring sites. Names are site codes as used by [OOI Data Portal](https://ooinet.oceanobservatories.org/):
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

### woaDecadalAverage.csv

.csv form of the data contained within the `woa18_TSDO_CP02MCO.tar.gz` file in the data directory.

| Depth (m) | Seawater Temperature (°C) | Practical Salinity (PSS-78) | Dissolved Oxygen (umol/kg) |
|----|----|----|----|
|`depth`|`temp`|`salinity`|`oxygen`|
