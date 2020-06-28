make_dir(){
    mkdir ../data/
    mkdir ../data/Input-Images
}

download_images(){
    if [ $1 == "training" ]
    then 
        wget http://images.cocodataset.org/zips/train2014.zip -O ../data/Input-Images/train_images.zip

    elif [ $1 == "validation" ]
    then
        wget http://images.cocodataset.org/zips/val2014.zip -O ../data/Input-Images/validation_image.zip

    elif [ $1 == "testing" ]
    then 
        wget http://images.cocodataset.org/zips/test2015.zip -O ../data/Input-Images/test_images.zip
    fi

}
make_dir
download_images $1