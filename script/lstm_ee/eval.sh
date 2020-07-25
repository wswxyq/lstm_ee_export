cd /home/shaowei/lstm_ee
for folder in /home/shaowei/export/numu/mprod5/final/*/*
do
  python3 scripts/eval/eval_model.py -e pdf --preset numu_7GeV "$folder"
done
