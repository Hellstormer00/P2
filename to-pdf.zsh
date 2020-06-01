IPYNB="./$1/Notebooks"
PDF="./$1/Notebooks-pdf"

for file in ${IPYNB}/*
do
    filename=$(basename -- "$file")
    filename="${filename%.*}"
    jupyter nbconvert file --to pdf ${file}
    mv "${IPYNB}/${filename}.pdf" "${PDF}"
done