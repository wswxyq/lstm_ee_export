sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 24,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 24,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache &&
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 24,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 24,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache &&
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 32,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 32,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache &&
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 128, 128, 128, 128 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 128, 128, 128, 128 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 24,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 24,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache &&
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 64, 64, 64 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 64, 64, 64 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 64,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 64,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache &&
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32,32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 24,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 24,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache &&
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 128,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 128,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache 
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 128,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 128,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache 
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 20,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 20,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache 
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 128 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 128,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 128,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache 
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 128,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 32,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache 
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 32,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 64,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache 
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 64,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 32,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache 
sed -i "s/'layers_pre'   : \[.\+\],/'layers_pre'   : \[ 10, 10, 10 \],/g" train_fd_fhc.py &&
sed -i "s/'layers_post'  : \[.\+\],/'layers_post'  : \[ 32, 32, 32, 32 \],/g" train_fd_fhc.py &&
sed -i "s/'lstm_units2d' : .\+,/'lstm_units2d' : 20,/g" train_fd_fhc.py &&
sed -i "s/'lstm_units3d' : .\+,/'lstm_units3d' : 20,/g" train_fd_fhc.py &&
python3 train_fd_fhc.py --cache 
