# Susceptible-Infected-Asymptomatic-Recovered Disease Spread Model

# Download location: 
/epidemic_siar is expected to put under the same directory with cd++

# How to run the script
In the /epidemic_siar, there are 10 folders. Each folder contains a 
1. model(.ma), 
2. a script to run the model(.sh), 
3. .pal, 
4. .inc, 
5. initial value file(.var), 
6. and its log files in the /results.

# Naming convention for folders
The name of folder indicates the parameters(testing accuracy and normal area size) used in the model. 

For example, "infec_a_11_size_10"  contains the model using 11% people testing negative in the screening area when they are asymptomatic infected COVID-19 (equivalently the testing accuracy is 89%), and the size of normal area is 10x10.

As another example, "infec_a_12_size_18"  contains the model using 12% people testing negative in the screening area when they are asymptomatic infected COVID-19 (equivalently the testing accuracy is 88%), and the size of normal area is 18x18.

# To run the script
Open the terminal, and go to the diectory that contains the script

Use the command:
./SIAR.sh 

The simulation log files will be saved in the /results

# Videos 
The naming rule of each video is the same as it of the folder that contains the model.

For example, "infec-a=0.11_size=10.webm" is the visualization results of the model with 11% people testing negative in the screening area when they are asymptomatic infected COVID-19 (equivalently the testing accuracy is 89%), and the size of normal area is 10x10.

There is a README in the /videos to show the output that each square is representing

# Visulization
Drag .ma .var and results/result.log01 to the DEVS web viewer
