for regularization in `seq 0.0020 0.0001 0.0040`; 
do sed -i "s/'kwargs' : { 'l' : .\+ },/'kwargs' : { 'l' : ${regularization} },/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache &&
sleep 10
done
#sed -i "s/l1/l2/g" train_fd_fhc.py &&
#sleep 10
#for regularization in `seq 0 0.0001 0.0020`; 
#do sed -i "s/'kwargs' : { 'l' : .\+ },/'kwargs' : { 'l' : ${regularization} },/g" train_fd_fhc.py &&
#python3 train_fd_fhc.py --cache &&
#sleep 10 
#done
#sed -i "s/l2/l1/g" train_fd_fhc.py 
