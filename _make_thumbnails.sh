# for file in images/shiv/*.{jpg,png}; do
#     [ ! -f "tn/$file" ] && magick "$file"  -thumbnail 160x160 "tn/$file"
# done

for file in images/shiv/*.{jpg,png}; do
    mkdir -p "$(dirname "tn/$file")"
    [ ! -f "tn/$file" ] && magick.exe "$file" -thumbnail 160x160 "tn/$file"
done