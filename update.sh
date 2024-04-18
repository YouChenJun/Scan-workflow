BASE_PATH="$HOME/osmedeus-base"

echo "开始更新workflow"
rm -rf $BASE_PATH/workflow >/dev/null 2>&1
git clone -b test --quiet --depth=1 https://github.com/YouChenJun/Scan-workflow $BASE_PATH/workflow
## retry to clone in case of anything wrong with the connection
if [ ! -d "$BASE_PATH/workflow" ]; then
    git clone -b test --quiet --depth=1 https://github.com/YouChenJun/Scan-workflow $BASE_PATH
fi