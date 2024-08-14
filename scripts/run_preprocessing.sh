# export DATA_FOLDER='data/BERT-SST-2'
# export TOKENIZER_NAME='bert-base-uncased'
# export MAX_LENGTH=10
export DATA_FOLDER='data/XLMR-TREC'
export TOKENIZER_NAME='xlm-roberta-base'
export MAX_LENGTH=10
# Creates jsonl files for train and dev

# python3 preprocessing/store_parse_trees.py \
#       --data_dir $DATA_FOLDER  \
#       --tokenizer_name $TOKENIZER_NAME

# Create concept store for SST-2 dataset
# Since SST-2 already provides parsed output, easier to do it this way, for other datasets, need to adapt

python3 preprocessing/build_concept_store.py \
       -i $DATA_FOLDER/train_with_parse.json \
       -o $DATA_FOLDER \
       -m $TOKENIZER_NAME \
       -l $MAX_LENGTH