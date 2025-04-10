if [ "$1" == "" ]; then
  echo "No Git LFS host set"
  exit 1
fi

git lfs install
touch .lfsconfig
touch .gitattributes
git config -f .lfsconfig lfs.url "$1"
git add .gitattributes .lfsconfig
git commit -m 'configured git lfs'

echo "git lfs track <file selector>"
echo "git add .gitattributes"
echo "add, commit, and push as normal, with your lfs files"
