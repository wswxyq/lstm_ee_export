cd /home/shaowei/lstm_ee
for folder in /home/shaowei/lstm_ee_export/*/numu/mprod5/final/*/*
do
  python3 scripts/eval/eval_model.py -e pdf --preset numu_7GeV --seed 1337 "$folder"
done

