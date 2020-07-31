# please make sure the variable "dropout" is in your file.
for drop_out in `seq 0 0.005 0.1`; 
do sed -i "s/'dropout' : .\+,/'dropout' : ${drop_out},/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache &&
sleep 10; 
done
