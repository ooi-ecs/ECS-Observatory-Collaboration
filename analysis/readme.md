# Analysis

## matlab
Matlab code for data requests and analyses of met package datasets.
- `M2M_Data_Figure2.m` and `Figure2.m` are the required scripts for Figure 2. `Figure2.mlx` is the Live Script file containing all necessary materials.
- `pullOOIdata.m` and `plotOOI_metbk.m` are the required scripts for Figure 3.
- `M2M_Data_Figure5.m` and `Figure5.m` are the required scripts for Figure 2. `Figure5.mlx` is the Live Script file containing all necessary materials.

## python
`ProfilerCTD_RequestsAndAnalysis.ipynb` iPython Jupyter notebook contains the code and instructions for OOI data requests via the thredds server using the python, similar to the examples indicated in `dataAccess.ipynb`. Data reformatting, analysis, and plotting are also included in the same notebook, with all information needed for replicatoin of Figures 6 and 7 of Levine et al.

## ferret
Ferret language (open source from NOAA PMEL, ferret.pmel.noaa.gov) 
- `plotGHRSST_ooi.jnl` is the main code to read in and subset global NASA JPL GHRSST 1km SST analyses , take the difference, and plot the field. Code also plots the OOI Pioneer array locations. 
- `sstopo_over_gray.jnl` plots a landmask, using topographic data in Ferret libraries
- `blue_red_offcenter.spk` is the colorbar for the plots
- `control.axis.jnl` is a function alter the latitude and longitude labels
- `limpia.jnl` is function to clear out all variables from memory in the Ferret workspace
