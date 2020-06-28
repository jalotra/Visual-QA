
make_dir(){
    mkdir ../data/
    mkdir ../data/Annotations
}

download_training_annotations(){
    echo $1
    if [ "$1" == "training" ]; then 
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Train_mscoco.zip -O ../data/Annotations/train_annotations.zip

    elif [ "$1" == "validation" ]; then
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Val_mscoco.zip -O ../data/Annotations/val_annotaions.zip
    fi
}
make_dir
download_training_annotations $1