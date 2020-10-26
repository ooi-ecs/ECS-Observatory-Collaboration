# ECS Observatory Collaboration
## An open source project to provide the geosciences community with an example of the interdisciplinary potential of the [Ocean Observatories Initiative](https://oceanobservatories.org/).

This repository contains all of the necessary analyses and materials for Levine et al., 2020, "*Open data, collaborative working platforms, and interdisciplinary collaboration: building an early career scientist community of practice to leverage Ocean Observatories Initiative data to address critical questions in marine science*" currently under review. Code and data included are for investigation into air-sea interactions and water column impacts of Winter Storm Avery on the New England shelf break and subsequent surface cooling events. The notebooks, code, and data within this directory serve as an introduction to data acquisition and analysis of OOI data through the use of both [Python via Jupyter Notebooks](https://jupyter.org/) and [MATLAB](https://www.mathworks.com/products/matlab.html).

## Data
Data included in the analyses and figures presented. See **data** folder for additional documentation on included files and original sources.

## Analysis
Python and Matlab materials for data analysis and figure production. See **analysis** folder for additional documentation on included files.


### Additional Examples for Accessing and Analyzing OOI data

#### dataAccess
This notebook walks through searching for instrumentation and datasets at the OOI Coastal Endurance sites.

#### Future Code/Examples
- Abbreviated script or version of this `dataAccess` notebook that will pull cabled array data from a new centralized server.
- Create data analysis example using dask distributed for looking at larger datasets using the pangeo cluster.

## Copying/Running this repository
#### Local
- Make sure you have Git installed on your machine.  For downloads/instructions for Windows/Mac/Linux, check out the [Git website](https://git-scm.com/) and/or the great [tutorial video](https://www.youtube.com/watch?v=wyiiTHVEF8k&feature=youtu.be) by UW eScience.
- In command line, navigate to where you would like the cloned directory, and run the following in your command line:
```bash
git clone https://github.com/ooi-ecs/InterdisciplinaryEvaluation.git
```

#### Pangeo
- Log into your [pangeo account](https://nasa.pangeo.io/hub/login)
- On the Jupyter Lab **Launcher** tab or via File > New launch a **terminal**, and run the following in your command line:
```bash
git clone https://github.com/ooi-ecs/InterdisciplinaryEvaluation.git
```
This should set up a permenant folder in your pangeo Jupyter Lab that will save and be accessible every time you start up a new worker,.

#### Google Colaboratory
- Through your Google account, open Google Drive
- On the top left side of your screen, select **New** > **More** > **Colaboratory** to launch a new Google Colaboratory notebook
- Under **File**, select **Upload notebook** and click on **GitHub** at the top of the window
- Insert `https://github.com/ooi-ecs/InterdisciplinaryEvaluation` into the search bar and press `Enter`
- Click on **dataAcces.ipynb** to launch the notebook in a new window.  
- To connect to a runtime, run any notebook cell.
- To save any changes to the notebook, select **Copy to Drive** on the top left of the site or go to **File** > **Save a copy in Drive...**

## Other Resources
#### Quick Jupyter keyboard shortcuts for new Users
- Esc + A: add new cell above
- Esc + B: add new cell below
- Esc + M: convert to Markdown cell
- Esc + Y: convert to code cell
- Esc + D + D (D twice): Delete current cell
- ctrl + Enter: execute the current cell
- Shift + Enter: execute the current cell and advance to the next cell
