#!/bin/bash
#This script will compress a file or directory in multiple compression types and keep the generated file with the best compression ratio


INPUT=$1
OUTPUT="compressed."

if [ -z ${INPUT} ]
then
    echo ""
    echo "First argument  must be a file or a directory"
    echo ""
    exit 1
fi

if [[ -d ${INPUT} ]]; then
    PARAM="-r"
elif [[ -f ${INPUT} ]]; then
    PARAM=""
else
    echo "${INPUT} is not valid"
    exit 1
fi

if [ `command -v tar` ]
then
    if [ `command -v gzip` ]
    then
        #gunzip with best compression rate
        EXT="tar"
        echo "Compressing gunzip..."
        tar -cf ${OUTPUT}${EXT} $INPUT ; gzip --best ${OUTPUT}${EXT}
        echo ${OUTPUT}${EXT}".gz size is" `find -name ${OUTPUT}${EXT}.gz -printf '%s'`
    fi

    #bzip2
    EXT="tar.bz2"
    echo "Compressing bzip2..."
    tar -cjf ${OUTPUT}${EXT} ${INPUT}
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`

    #xz (replacing lzma https://tukaani.org/lzma/)
    EXT="tar.xz"
    echo "Compressing xz..."
    tar -cJf ${OUTPUT}${EXT} ${INPUT}
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`
fi

if [ `command -v rar` ]
then
    #rar
    EXT="rar"
    echo "Compressing rar..."
    rar a ${PARAM} -inul ${OUTPUT}${EXT} ${INPUT}
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`
fi

if [ `command -v 7z` ]
then
    #7z
    EXT="7z"
    echo "Compressing 7z..."
    7z a compressed.7z ${OUTPUT}${EXT} ${INPUT} &> /dev/null
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`
fi

if [ `command -v zip` ]
then
    #zip
    EXT="zip"
    echo "Compressing zip..."
    7z a ${OUTPUT}${EXT} ${INPUT} &> /dev/null
    zip -q ${PARAM} compressed.zip ${INPUT}
    echo ${OUTPUT}${EXT}" size is" `find -name ${OUTPUT}${EXT} -printf '%s'`
fi

SMALLER=`find . -maxdepth 1 -name "compressed*" -printf '%s %p\n' | sort -n | head -n 1 | cut -d " " -f 2`
echo ${SMALLER} "has the best compression ratio, keeping it and removing the other ones."

find . -maxdepth 1 -name "compressed*" -printf '%p\n' | grep -v ${SMALLER} | xargs rm -f
