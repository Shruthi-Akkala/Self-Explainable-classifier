 python3 model/infer_model.py \
      --ckpt /home/shivam/Desktop/shivam/Shruthi_NLP/SelfExplain_LoRa/lightning_logs/version_44/checkpoints/epoch=4-step=16186-val_acc_epoch=0.8417.ckpt\
      --concept_map data/XLMR-TREC/concept_idx.json \
      --paths_output_loc result/result_XLMR-TREC.tsv \
      --dev_file data/XLMR-TREC/dev_with_parse.json \
      --batch_size 16