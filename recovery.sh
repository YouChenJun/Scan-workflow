BASE_PATH="$HOME/osmedeus-base"

echo "开始恢复workflow"
rm -rf $BASE_PATH/workflow >/dev/null 2>&1
git clone --quiet --depth=1 https://github.com/osmedeus/osmedeus-workflow $BASE_PATH/workflow
## retry to clone in case of anything wrong with the connection
if [ ! -d "$BASE_PATH/workflow" ]; then
    git clone --quiet --depth=1 https://github.com/osmedeus/osmedeus-workflow $BASE_PATH
fi