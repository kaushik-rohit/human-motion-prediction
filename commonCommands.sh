

bsub -n 8 -W 4:00 -R "rusage[mem=1024, ngpus_excl_p=1]" -R "select[gpu_model0==GeForceGTX2080Ti]" python train.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 --save_dir ./experiments --experiment_name seq2seq


bsub -n 6 -W 4:00 -R "rusage[mem=1024, ngpus_excl_p=1]" -R "select[gpu_model0==GeForceGTX2080Ti]" -o outvalidate.txt python evaluate_test.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 --save_dir ./experiments --model_id 1588192230 --export