make_dir(){
    mkdir ../data/
    mkdir ../data/Input-Questions

}

download_questions(){
    if [ $1 == "training" ]
    then 
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Train_mscoco.zip -O ../data/Input-Questions/train_questions.zip

    elif [ $1 == "validation" ]
    then
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Val_mscoco.zip -O ../data/Input-Questions/val_questions.zip

    elif [ $1 == "testing" ]
    then 
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Test_mscoco.zip -O ..data/Input-Questions/test_questions.zip
    fi

}
make_dir
download_questions $1