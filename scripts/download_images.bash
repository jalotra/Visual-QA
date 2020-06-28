function download_images(){
    if [ $1 == "training" ]
    then 
        wget http://images.cocodataset.org/zips/train2014.zip -o ../data/Input-Images

    elif [ $1 == "validation" ]
    then
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Val_mscoco.zip -o ../data/Input-Images

    elif [ $1 == "testing" ]
    then 
        wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Test_mscoco.zip -o ..data/Input-Images
    fi

}

download_images