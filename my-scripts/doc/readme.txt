1) create a new repo on github

2) add my-scripts dir

cd meta-virtualization

echo "# meta-virtualization fork" >> README.md

git init

git add .

git commit -m "first commit"

git remote add origin git@github.com:RobertBerger/meta-virtualization.git

git push -u origin master
