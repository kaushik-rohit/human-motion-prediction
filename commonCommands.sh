bsub -n 6 -W 4:00 -R "rusage[mem=1024, ngpus_excl_p=1]" python train.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 --save_dir ./experiments --experiment_name sample


bsub -n 6 -W 4:00 -R "rusage[mem=1024, ngpus_excl_p=1]" -o outvalidate.txt python evaluate_test.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 --save_dir ./experiments --model_id 1588192230 --export