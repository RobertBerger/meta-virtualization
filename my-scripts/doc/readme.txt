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

5) use specific upstream branch/commit and make own branch

syntax: git fetch url-to-repo branchname:refs/remotes/origin/branchname

git fetch git://git.yoctoproject.org/meta-virtualization warrior:refs/remotes/origin/warrior

6) Update from git.yoctoproject:
git co master
>> git remote -v

official-upstream       git://git.yoctoproject.org/meta-virtualization (fetch)
official-upstream       git://git.yoctoproject.org/meta-virtualization (push)
origin  git@github.com:RobertBerger/meta-virtualization.git (fetch)
origin  git@github.com:RobertBerger/meta-virtualization.git (push)

>> git fetch official-upstream
remote: Counting objects: 4043, done.
remote: Compressing objects: 100% (1273/1273), done.
remote: Total 4043 (delta 3130), reused 3632 (delta 2727)
Receiving objects: 100% (4043/4043), 721.50 KiB | 402.00 KiB/s, done.
Resolving deltas: 100% (3130/3130), completed with 502 local objects.
From git://git.yoctoproject.org/meta-virtualization
   62591d9..e758547  master     -> official-upstream/master
 + 2942327...a382678 master-next -> official-upstream/master-next  (forced update)
   a3fa5ce..6a1f33c  morty      -> official-upstream/morty
---

7) My own branch:
git co master
git co official-upstream/warrior
git checkout -b 2019-09-09-warrior-2.7+
git co master
cd my-scripts
./push-all-to-github.sh

8) apply patches


