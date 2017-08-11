Climate Change Temperature Data Shiny App
========================================================
author: Dave Rosenman, rosenmd1@tcnj.edu


The App
========================================================
The app is available at [https://daverosenman.shinyapps.io/Climate/](https://daverosenman.shinyapps.io/Climate/). You can choose between yearly global average land temperature data and yearly global land + ocean temperature data. You can choose the starting year for the plot (any year from 1850 on) and the end year (any year prior 2016). You also have the option to add a best-fit line.

The Data
========================================================

The raw data that I used is from the 'Berkelely Earth' project. The raw data is available [here](https://www.google.com/search?q=kaggle+berkely+earth&ie=utf-8&oe=utf-8). From [GlobalTemperatures.csv](https://github.com/DRosenman/climate-change-shiny-app/blob/master/GlobalTemperatures.csv). It contains daily global land temperature and daily global land + ocean temperature data from 1750 through 2015.



data_prep.R
========================================================
- This file contains the code that I used to create [landtemperature.csv](https://github.com/DRosenman/climate-change-shiny-app/blob/master/landtemperature.csv) and [landandoceantemperature.csv](https://github.com/DRosenman/climate-change-shiny-app/blob/master/landandoceantemperature.csv)
- [landtemperature.csv](https://github.com/DRosenman/climate-change-shiny-app/blob/master/landtemperature.csv) which contains the yearly average land temperatures from 1850 through 2015.
- [landandoceantemperature.csv](https://github.com/DRosenman/climate-change-shiny-app/blob/master/landandoceantemperature.csv) contains the yearly average land + ocean temperatures from 1850 through 2015.
========================================================




