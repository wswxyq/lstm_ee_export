import numpy as np
import os
import re

loc_dir = '/home/shaowei/lstm_ee_export/lstm_seed_test'
ffdirs=os.listdir( loc_dir + "/numu/mprod5/final/fd_fhc" )
ffdirs.remove('train.log')

f = open(loc_dir+"/fd_fhc.txt", "w+")
for i in ffdirs:
    searchfile = open(loc_dir + "/numu/mprod5/final/fd_fhc/" + i + "/config.json", "r")
    for line in searchfile:
        if "seed" in line: 
            tmp=re.search('"seed": (.+?),', line).group(1)
    searchfile.close()
    searchfile01 = np.genfromtxt(loc_dir + "/numu/mprod5/final/fd_fhc/" + i + 
        "/evals/noise(none)_preset(numu_7GeV)_seed(1337)_weights(weight)/stats.csv", delimiter=",")
    print(tmp, searchfile01[1,2], searchfile01[2,2], searchfile01[3,2], file=f)
f.close()


