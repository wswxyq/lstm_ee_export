import numpy as np
import os
import re

if 'LSTM_EE_OUTDIR' in os.environ:
    ROOT_OUTDIR = os.environ['LSTM_EE_OUTDIR']

    ffdirs=os.listdir( ROOT_OUTDIR + "/numu/mprod5/final/fd_fhc" )
    '''frdirs=os.listdir( ROOT_OUTDIR + "/numu/mprod5/final/fd_rhc/" )
    nfdirs=os.listdir( ROOT_OUTDIR + "/numu/mprod5/final/nd_fhc/" )
    nrdirs=os.listdir( ROOT_OUTDIR + "/numu/mprod5/final/nd_rhc/" )'''


    ffdirs.remove('train.log')
    '''frdirs.remove('train.log')
    nfdirs.remove('train.log')
    nrdirs.remove('train.log')'''

    #print( ffdirs )
    #print( frdirs )
    #print( nfdirs )
    #print( nrdirs )

    f = open(ROOT_OUTDIR+"/fd_fhc.txt", "w+")
    for i in ffdirs:
        searchfile = open(ROOT_OUTDIR + "/numu/mprod5/final/fd_fhc/" + i + "/config.json", "r")
        for line in searchfile:
            if "dropout" in line: 
                tmp=re.search('"dropout": (.+?),', line).group(1)
        searchfile.close()

        searchfile01 = np.genfromtxt(ROOT_OUTDIR + "/numu/mprod5/final/fd_fhc/" + i + 
            "/evals/noise(none)_preset(numu_7GeV)_weights(weight)/stats.csv", delimiter=",")
        print(tmp, searchfile01[1,2], searchfile01[2,2], searchfile01[3,2], file=f)
    f.close()

    '''f = open(ROOT_OUTDIR+"/fd_rhc.txt", "w+")
    for i in frdirs:
        searchfile = open(ROOT_OUTDIR + "/numu/mprod5/final/fd_rhc/" + i + "/config.json", "r")
        for line in searchfile:
            if "seed" in line: 
                tmp=re.search('"seed": (.+?),', line).group(1)
        searchfile.close()

        searchfile01 = np.genfromtxt(ROOT_OUTDIR + "/numu/mprod5/final/fd_rhc/" + i + 
            "/evals/noise(none)_preset(numu_7GeV)_weights(weight)/stats.csv", delimiter=",")
        print(tmp, searchfile01[1,2], searchfile01[2,2], searchfile01[3,2], file=f)
    f.close()

    f = open(ROOT_OUTDIR+"/nd_fhc.txt", "w+")
    for i in nfdirs:
        searchfile = open(ROOT_OUTDIR + "/numu/mprod5/final/nd_fhc/" + i + "/config.json", "r")
        for line in searchfile:
            if "seed" in line: 
                tmp=re.search('"seed": (.+?),', line).group(1)
        searchfile.close()

        searchfile01 = np.genfromtxt(ROOT_OUTDIR + "/numu/mprod5/final/nd_fhc/" + i + 
            "/evals/noise(none)_preset(numu_7GeV)_weights(weight)/stats.csv", delimiter=",")
        print(tmp, searchfile01[1,2], searchfile01[2,2], searchfile01[3,2], file=f)
    f.close()

    f = open(ROOT_OUTDIR+"/nd_rhc.txt", "w+")
    for i in nrdirs:
        searchfile = open(ROOT_OUTDIR + "/numu/mprod5/final/nd_rhc/" + i + "/config.json", "r")
        for line in searchfile:
            if "seed" in line: 
                tmp=re.search('"seed": (.+?),', line).group(1)
        searchfile.close()

        searchfile01 = np.genfromtxt(ROOT_OUTDIR + "/numu/mprod5/final/nd_rhc/" + i + 
            "/evals/noise(none)_preset(numu_7GeV)_weights(weight)/stats.csv", delimiter=",")
        print(tmp, searchfile01[1,2], searchfile01[2,2], searchfile01[3,2], file=f)
    f.close()'''

else:
    print("LSTM_EE_OUTDIR not found in system env. Quit...")
