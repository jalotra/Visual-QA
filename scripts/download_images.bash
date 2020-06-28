function download_images(){
    if [ $1 -eq "training" ]
    then 
        wget http://images.cocodataset.org/zips/train2014.zip -o ../data/Input-Images

    elif [ $1 -eq "validation" ]
    then
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Val_mscoco.zip -o ../data/Input-Images

    elif [ $1 -eq "testing" ]
    then 
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Test_mscoco.zip -o ..data/Input-Images
    fi

}

download_images