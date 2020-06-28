function download_questions(){
    if [ $1 -eq "training" ]
    then 
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Train_mscoco.zip -o ../data/Input-Questions

    elif [ $1 -eq "validation"]
    then
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Val_mscoco.zip -o ../data/Input-Questions

    elif [ $1 -eq "testing" ]
    then 
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Test_mscoco.zip -o ..data/Input-Questions
    fi

}

download_questions