lr=3e-5
gpu=7
backRazor_pruneRatio=0.9

python CNN/tinytl_fgvc_train.py --transfer_learning_method full_noBN \
    --train_batch_size 8 --test_batch_size 100 \
    --n_epochs 50 --init_lr ${lr} --opt_type adam \
    --label_smoothing 0.3 --distort_color None --frozen_param_bits 8 --origin_network --fix_bn_stat \
    --gpu ${gpu} --dataset pets --path .exp/batch8/pets_lr${lr}_backRazor${backRazor_pruneRatio} \
    --backRazor --backRazor_pruneRatio ${backRazor_pruneRatio} --backRazor_pruneRatio_head ${backRazor_pruneRatio}
