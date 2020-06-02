# ProfilerCTD

Formatted .csv files of temperature and salinity from the 7 profiler mooring sites. Names are site codes as used by [OOI Data Portal](https://ooinet.oceanobservatories.org/):
- CP01CNPM: Central Profiler Mooring
- CP02PMCI: Central Inshore Profiler Mooring
- CP02PMCO: Central Offshore Profiler Mooring
- CP02PMUI: Upstream Inshore Profiler Mooring
- CP02PMUO: Upstream  Offshore Profiler Mooring
- CP03ISPM: Inshore Profiler Mooring
- CP04OSPM: Offshore Profiler mooring

Code for data requests and formatting can be found in the `ProfilerCTD_RequestsAndAnalysis.ipynb` notebook in the analysis directory for this project.

csv Header:

| Time | Practical Salinity | Seawater Conductivity | Seawater Pressure | Seawater Temperature | Depth (m) |
|----|----|----|----|----|----|
|`time`|`practical_salinity`|`ctdpf_ckl_seawater_conductivity`|`ctdpf_ckl_seawater_pressure`|	`ctdpf_ckl_seawater_temperature`|`depth`|
