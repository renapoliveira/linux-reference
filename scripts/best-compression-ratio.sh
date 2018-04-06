#!/bin/bash
#This script compresses a file or directory in multiple compression types and keeps the generated file with the best compression ratio

INPUT=$1
OUTPUT="bcr-compressed."

rm -rf bcr-compressed.*

if [ -z ${INPUT} ]
then
    echo ""
    echo "First argument  must be a file or a directory"
    echo ""
    exit 1
fi

if [ -d ${INPUT} ]; then
    PARAM="-r"
elif [ -f ${INPUT} ]; then
    PARAM=""
else
    echo "${INPUT} is not valid"
    exit 1
fi


#TAR
if [ `command -v tar` ]
then
    if [ `command -v gzip` ]
    then
        #GUNZIP (with best compression rate)
        EXT="tar"
        echo "Compressing gunzip..."
        tar -cf ${OUTPUT}${EXT} $INPUT ; gzip --best -f ${OUTPUT}${EXT}
        echo ${OUTPUT}${EXT}".gz size is" `find -name ${OUTPUT}${EXT}.gz -printf '%s'`
    else
        echo "GUNZIP is not installed"
    fi

    #BZIP2
    EXT="tar.bz2"
    echo "Compressing bzip2..."
    tar -cjf ${OUTPUT}${EXT} ${INPUT}
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`

    #XZ (replacing lzma https://tukaani.org/lzma/)
    EXT="tar.xz"
    echo "Compressing xz..."
    tar -cJf ${OUTPUT}${EXT} ${INPUT}
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`
else
    echo "TAR is not installed"
fi

if [ `command -v rar` ]
then
    #RAR
    EXT="rar"
    echo "Compressing rar..."
    rar a ${PARAM} -inul ${OUTPUT}${EXT} ${INPUT}
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`
else
    echo "RAR is not installed"
fi

if [ `command -v 7z` ]
then
    #7Z
    EXT="7z"
    echo "Compressing 7z..."
    7z a bcr-compressed.7z ${OUTPUT}${EXT} ${INPUT} &> /dev/null
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`
else
    echo "7Z is not installed"
fi

if [ `command -v zip` ]
then
    #zip
    EXT="zip"
    echo "Compressing zip..."
    7z a ${OUTPUT}${EXT} ${INPUT} &> /dev/null
    zip -q ${PARAM} bcr-compressed.zip ${INPUT}
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`
else
    echo "ZIP is not installed"
fi

SMALLEST=`find . -maxdepth 1 -name "bcr-compressed.*" -printf '%s %p\n' | sort -n | head -n 1 | cut -d " " -f 2`

echo ""; echo ${SMALLEST} "presented the best compression ratio, keeping it and removing the other ones."; echo ""
find . -maxdepth 1 -name "bcr-compressed.*" -printf '%p\n' | grep -v ${SMALLEST} | xargs rm -f
