PROJ=$(pwd)

echo "[+] Generating cscope and ctags database for $PROJ..."

cd $PROJ
echo "[+] Cleaning up previous databases..."
rm cscope*
rm tags
echo "[+] Done!"

echo "[+] Generating file list..."

find $PROJ                                          \
    -path "$PROJ/.flux/*" -prune -o                 \
    -path "$PROJ/bin/*" -prune -o                   \
    -path "$PROJ/build/*" -prune -o                 \
    -path "$PROJ/cache/*" -prune -o                 \
    -path "$PROJ/doc/*" -prune -o                   \
    -path "$PROJ/docs/*" -prune -o                  \
    -path "$PROJ/export/*" -prune -o                \
    -path "$PROJ/external/*" -prune -o              \
    -path "$PROJ/inc/*" -prune -o                   \
    -name "*.[chmxsS]" -print > $PROJ/cscope.files

echo "[+] Done!"

cd $PROJ

echo "[+] Generating cscope database..."
cscope -b -q -k
echo "[+] Done!"

echo "[+] Generating ctags database..."
ctags -R                                            \
    --exclude=".flux"                               \
    --exclude="bin"                                 \
    --exclude="build"                               \
    --exclude="cache"                               \
    --exclude="doc"                                 \
    --exclude="docs"                                \
    --exclude="export"                              \
    --exclude="external"                            \
    --exclude="inc"                                 \
    .

echo "[+] Done!"
