bsub -n 6 -W 4:00 -R "rusage[mem=1024, ngpus_excl_p=1]" python train.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 --save_dir ./experiments --experiment_name sample


#1597137370 and 1597136472
bsub -n 6 -W 24:00 -R "rusage[mem=1024, ngpus_excl_p=1]" python train.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 \
--save_dir ./experiments  --model_type rnn_spl --spl_dropout --spl_dropout_rate 0.1 --input_hidden_size 256 --input_hidden_layers 1 \
--output_hidden_layers 1 --output_hidden_size 64 --input_dropout_rate 0.1 --num_epochs 500 --experiment_name rnnspldef1024 --learning_rate_decay_rate 0.98 --residual_velocity \
--cell_size 512 --cell_type lstm

#1597137999
bsub -n 6 -W 24:00 -R "rusage[mem=1024, ngpus_excl_p=1]" python train.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 \
--save_dir ./experiments  --model_type rnn_spl --spl_dropout --spl_dropout_rate 0.1 --input_hidden_size 256 --input_hidden_layers 1 \
--output_hidden_layers 1 --output_hidden_size 64 --input_dropout_rate 0.1 --num_epochs 500 --experiment_name rnnspl1024blstm --learning_rate_decay_rate 0.98 --residual_velocity \
--cell_size 1024 --cell_type blstm

#1597146040
bsub -n 6 -W 24:00 -R "rusage[mem=1024, ngpus_excl_p=1]" python train.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 \
--save_dir ./experiments  --model_type rnn_spl --spl_dropout --spl_dropout_rate 0.0 --input_hidden_size 256 --input_hidden_layers 1 \
--output_hidden_layers 1 --output_hidden_size 64 --input_dropout_rate 0.1 --num_epochs 500 --experiment_name rnnspl1024blstm00drop --learning_rate_decay_rate 0.98 --residual_velocity \
--cell_size 1024 --cell_type blstm

bsub -n 6 -W 4:00 -R "rusage[mem=1024, ngpus_excl_p=1]" -o outvalidate.txt python evaluate_test.py --data_dir /cluster/project/infk/hilliges/lectures/mp20/project4 --save_dir ./experiments --model_id 1597146040 --export


