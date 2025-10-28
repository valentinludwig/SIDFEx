##################################################################
## Content: User guide for SIDFEx data base and software package
## Maintainers: Helge Goessling, Valentin Ludwig
## Contact: helge.goessling@awi.de, valentin.ludwig@awi.de
## Date of creation: 20211103
## Last significant change: 20211103
## History:
##		20211103: First commit of notebook and corresponding data.
##		20220401: Added md version of user guide.
##################################################################

### Description ###
This repository contains the user guide for the SIDFEx (Sea Ice Drift Forecast Experiment) dataset. It is analysed by using the tailored R software package SIDFEx. 

### Content ###
There are three versions of the user guide:
	1) Interactive, rather brief (user_guide_sidfex_interactive.ipynb)
		This version comprises a Jupyter Notebook which allows to install the needed software, set the file paths and learn how to analyse the dataset. It is comprehensive in the examples which it gives, but rather short on the explanation of the background and the interpretation of the results. It also exists as a PDF, but the interactive version is recommended.
	2) Markdown file (user_guide_sidfex.md). Nice for having a look online.
	3) Extensive (user_guide_sidfex_extensive.pdf)
		This version is a classical PDF file. It elaborates more extensively on the background behind the commands which you can execute in the Jupyter Notebook. 

The repository contains the following files:
	- user_guide_sidfex_interactive.ipynb: Interactive Jupyter Notebook version of the user guide (see above)
	- user_guide_sidfex_interactive.pdf: PDF Version of the interactive notebook (see above)
	- user_guide_sidfex_interactive.md: Markldown version of the interactive notebook (see above)
	- user_guide_sidfex_extensive.pdf: Extensive PDF version of the user guide (see above)
	- setup_sidfex.bash: Bash script to set the filepaths for the SIDFEx dataset
	- output*png: Plots which are incorporated in the markdown file.
	- user_guide_sidfex.yml: File for constructing the conda environment in which the Jupyter notebook can be run
	- plots/: Directory where plots will be saved when running the notebook interactively

### Getting started ###
The only thing which you have to do upfront is to install the Anaconda software package (if you do not have it already) and set up the conda environment. 

If you have experience with conda and Juopyter Notebooks:
Create the conda environment from the file user_guide_sidfex.yml and start a Jupyter Notebook server therein.

If you do not have experience with conda and Jupyter Notebooks:
For setting up Anaconda, a comprehensive instruction is given here: https://docs.anaconda.com/anaconda/install/index.html (last checked on 20211103). Once this is done, you can either import the .yml file with the Anaconda Navigator or use the command line command ```conda env create -f user_guide_sidfex.yml```. Details are given at https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html (last checked 20211103). 
To activate the environment, open a terminal and run the command ```conda activate user_guide_sidfex```. If you use this for the first time, you have to initialise conda to interact with the shell by typing ``` conda init <SHELL_NAME>```, replacing ```SHELL_NAME``` by the name of the shell which you are using. Default is bash.

Now, you can start a Jupyter Lab server by typing ``` jupyter lab --no-browser --port=8888```. Now, open the browser of your choice and type ```http://localhost:8888```. This should open the notebook server. Now, you can navigate to the folder where you saved the notebook and get started. Have fun!
