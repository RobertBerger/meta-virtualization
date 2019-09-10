1) create a new repo on github

2) add my-scripts dir

cd meta-virtualization

echo "# meta-virtualization fork" >> README.md

git init

git add .

git commit -m "first commit"

git remote add origin git@github.com:RobertBerger/meta-virtualization.git

git push -u origin master

3) use my repo

mv meta-virtualization/ meta-virtualization.ori
git clone git@github.com:RobertBerger/meta-virtualization.git

4) add upstream

cd meta-virtualization

git remote add official-upstream git://git.yoctoproject.org/meta-virtualization

git fetch official-upstream

git branch -a

