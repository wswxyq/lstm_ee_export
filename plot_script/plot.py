#from tkinter import *
import sys
import numpy as np
import matplotlib.pyplot as plt
import json
from matplotlib.ticker import PercentFormatter


def draw():
    with open(sys.argv[1], 'r') as f:
        plot_config = json.load(f)

    dataset = np.loadtxt(plot_config["file_loc"])
    if ("mean_val" in plot_config) and ("std_val" in plot_config):
        mean_value = plot_config["mean_val"]
        std_value = plot_config["std_val"]
    else:
        mean_value = np.mean(dataset[:,plot_config["y_data"]])
        std_value = np.std(dataset[:,plot_config["y_data"]])

    l2 = plt.axhspan( mean_value - std_value,
                mean_value + std_value,
                facecolor='#2ca02c', alpha=0.5)
    plt.axhline( y=mean_value, linewidth= 1, color="g" )


    if plot_config["use_index_as_x"] == 1:
        x_coordinate = [ i for i in range(len(dataset[:,plot_config["y_data"]])) ]
        l1 = plt.scatter(x_coordinate[:], dataset[:,plot_config["y_data"]], c='#3977AF', marker='o')
        ticks_label = [ "[" + str(i) +"]" for i in x_coordinate]
        plt.xticks(x_coordinate, ticks_label)

    elif plot_config["use_index_as_x"] == 0:
        l1 = plt.scatter(dataset[:,plot_config["x_data"]], dataset[:,plot_config["y_data"]], c='#3977AF', marker='o')
    else:
        print("Invalid value of use_index_as_x. Please check your json file.")
        return


    plt.legend(handles = [l2, l1, ], \
    labels = ['Mean: '+"{:.2f}".format(mean_value * 100.0 )+
            ', Stdev: '+ "{:.4f}".format(std_value * 100.0 ) ,
                'Model Performance',], loc = 'best')
    plt.xlabel(plot_config["x_label"])
    plt.ylabel(plot_config["y_label"])
    plt.gca().yaxis.set_major_formatter(PercentFormatter(1, decimals=2, symbol=""))
    
    if "autofmt_x_tick" in plot_config: 
        plt.gcf().autofmt_xdate()

    #plt.show()

    plt.savefig(plot_config["output_file_name"])
    plt.close()

draw()