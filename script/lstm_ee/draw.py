#from tkinter import *
import numpy as np
import matplotlib.pyplot as plt

def draw(filename):
    a=np.loadtxt('/home/shaowei/export/'+ filename + ".txt")

    l1=plt.scatter(a[:,0], a[:,1], c='r', marker='o')
    l2=plt.scatter(a[:,0], a[:,2], c='g', marker='o')
    l3=plt.scatter(a[:,0], a[:,3], c='b', marker='o')

    plt.legend(handles = [l1, l2, l3, ], \
    labels = ['total', 'primary','secondary'], loc = 'best')
    plt.xlabel('seed value')
    plt.ylabel('RMS value')

    #plt.show()

    plt.savefig("/home/shaowei/export/" + filename +".pdf")
    plt.close()


draw("fd_fhc")
draw("fd_rhc")
draw("nd_fhc")
draw("nd_rhc")