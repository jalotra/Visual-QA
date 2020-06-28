function download_training_annotations(){
    if [ $1 -eq "training" ]
    then 
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Train_mscoco.zip -o ../data/Annotations
    fi

    if [ $1 -eq "validation"]
    then
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Val_mscoco.zip -o ../data/Annotations
}

download_training_annotations