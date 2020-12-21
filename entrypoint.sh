#!/usr/bin/env bash
set -e

# bert-serving-start \
#   -model_dir=/app/base-models/uncased_L-12_H-768_A-12/ \
#   -tuned_model_dir=/app/trained-models/engadget_L-12_H-768_A-12/ \
#   -ckpt_name=model.ckpt-43000 \
#   -num_worker=1 \
#   -http_port 9000 \
#   -cpu \
#   -pooling_strategy=REDUCE_MEAN_MAX \
#   -max_batch_size 16 \
#   -verbose

# max_seq_len: Set it to NONE for dynamically using the longest sequence in a (mini)batch.

bert-serving-start \
    -num_worker=1 \
    -max_seq_len=512 \
    -model_dir models/uncased_L-12_H-768_A-12
# -cpu \
