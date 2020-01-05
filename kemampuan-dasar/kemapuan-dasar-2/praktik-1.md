# Create a folder for your project.
mkdir rhymes
cd rhymes

# To make this directory and empty Git repo do this:
git init 

# I usually create an empty README.txt file for the first commit in my project
# history. 
touch README.txt 
git add README.txt 
git commit -m 'First commit.' 

# Add some explanation about the project to the README file.
echo 'This repo is a collection of my favorite nursery rhymes.' >> README.txt

# Review uncommitted changes. Then commit them.
git status
git diff
git add README.txt
git commit -m 'Added project overview to README.txt'

# Alice downloads favorite rhymes.
wget https://www.acquia.com/sites/default/files/blog/all-around-the-mulberry-bush.txt
wget https://www.acquia.com/sites/default/files/blog/jack-and-jill.txt
wget https://www.acquia.com/sites/default/files/blog/old-mother-hubbard.txt
wget https://www.acquia.com/sites/default/files/blog/twinkle-twinkle.txt
wget https://www.acquia.com/sites/default/files/blog/hokey-pokey.txt 

# The files have been downloaded, but not committed.
# You can see this with git status. git status
# Alice adds the files one-by-one to make her git history look nice and tidy.
git add all-around-the-mulberry-bush.txt 
git status 
git commit -m 'Added all-around-the-mulberry-bush.txt.'
git add jack-and-jill.txt
git commit -m 'Added jack-and-jill.txt.' 

# Alice gets lazy and decides to just add everything else at once.
git add .
git commit -m 'Added old-mother-hubbard.txt, twinkle-twinkle.txt, hokey-pokey.txt' 

# Alice reviews and admires her commit history.
git log
git log --oneline
git log -p

git remote add origin https://github.com/fredome17/rhymes.git
git push -u origin master

# First Bob clones his fork of Alice's rhymes project.
# (If you're following along, replace bryanhirsch below with your own GitHub username.)
git clone https://github.com/fredome17/rhymes.git
cd rhymes

# To keep things simple and tidy, Bob will keep the master branch in sync with Alice's version of the master branch.
# Bob creates a new branch, where he will store his changes.
git checkout -b hickory-dickory

# Add Hickory Dickory Dock to the repo.
wget https://www.acquia.com/sites/default/files/blog/hickory-dickory-dock.txt...
add hickory-dickory-dock.txt
git commit -m 'Added hickory-dickory-dock.txt.'

# Bob pushes the changes from his local copy of rhymes up to GitHub.
git push origin hickory-dickory

# Alice renames origin -> alice.
cd rhymes
git remote rename origin alice

# Add a remote pointing to Bob's copy of the project.
git remote add bob https://github.com/bryanhirsch/rhymes.git

# Review remotes.
git remote

# Confirm each remote points to the correct repository.
git remote -v

# Fetch a copy of Bob's work.
git fetch bob

# Review all the branches (both local and remote).
git branch -a

# Check out a local copy of Bob's work and review it.
git checkout -b hickory-dickory bob/hickory-dickory
git diff master hickory-dickory
git log -1 -p

# Checkout master and merge Bobs changes in.
git checkout master
git merge hickory-dickory

# Push changes up to GitHub git push alice master
# Remove our local copy of the hickory-dickory branch. We don't need it anymore.
git branch -D hickory-dickory

cd rhymes
git remote rename origin bob 

# Add a remote pointing to Alice's copy of the project.
git remote add alice https://github.com/bryanhirsch/rhymes.git

# Review remotes.
git remote 

# Confirm each remote points to the correct repository. 
git remote -v 

# Update master branch. 
# (As an alternative to fetch, use `remote update` to update all your remotes.)
git remote update
git checkout master
git merge alice/master

# To confirm you did everything right check the difference between your local copy of master 
# and Alice's master branch. There should be no difference. 
git diff alice/master 

# Push to GitHub 
git push bob master
git checkout -b bobs-changes

wget https://www.acquia.com/sites/default/files/blog/jack-be-nimble.txt
git add jack-be-nimble.txt
git commit -m 'Added jack-be-nimble.txt.'
wget https://www.acquia.com/sites/default/files/blog/mother-goose.txt
git add mother-goose.txt
git commit -m 'Added mother-goose.txt.'

git commit -am 'Updated README.txt.'

git commit -am 'Updated README.txt.'

git commit -am 'Updated README.txt.'

wget https://www.acquia.com/sites/default/files/blog/old-king-cole.txt
git add old-king-cole.txt git commit -m 'Added old-king-cole.txt.'
wget https://www.acquia.com/sites/default/files/blog/twinkle-twinkle.txt
git add twinkle-twinkle.txt
git commit -m 'Added twinkle-twinkle.txt.'

git commit -am 'Updated README.txt.'

git log git log --oneline 

$ git log --oneline
77886c1 Updated README.txt.
fbe874e Added old-king-cole.txt.
6256b8a Updated README.txt.
d1ba481 Updated README.txt.
b7e5732 Fixed typo in README.txt.
642477c Updated README.txt.
9e48a45 Added mother-goose.txt.
8aea9be Added jack-be-nimble.txt.
4b15370 Added hickory-dickory-dock.txt.
4ada881 Added old-mother-hubbard.txt, twinkle-twinkle.txt, hokey-pokey.txt
10e0e68 Added jack-and-jill.txt.
6a69e0f Added all-around-the-mulberry-bush.txt.
d30493a Added project overview to README.txt
710f4bd First commit.

# Rewrite history going back as far as commit 4b15370.
git rebase -i 4b15370

pick 8aea9be Added jack-be-nimble.txt.
pick 9e48a45 Added mother-goose.txt.
pick 642477c Updated README.txt.
pick b7e5732 Fixed typo in README.txt.
pick d1ba481 Updated README.txt.
pick 6256b8a Updated README.txt.
pick fbe874e Added old-king-cole.txt.
pick 77886c1 Updated README.txt. 

# Rebase 4b15370..77886c1 onto 4b15370 
#
# Commands: 
#  p, pick = use commit 
#  r, reword = use commit, but edit the commit message 
#  e, edit = use commit, but stop for amending 
#  s, squash = use commit, but meld into previous commit 
#  f, fixup = like "squash", but discard this commit's log message 
#  x, exec = run command (the rest of the line) using shell 
# 
# These lines can be re-ordered; they are executed from top to bottom. 
# 
# If you remove a line here THAT COMMIT WILL BE LOST. 
# 
# However, if you remove everything, the rebase will be aborted. 
# 
# Note that empty commits are commented out
First reorder the commits in the order you want them to be rearranged in the project's history:

pick 8aea9be Added jack-be-nimble.txt.
pick 9e48a45 Added mother-goose.txt.
pick fbe874e Added old-king-cole.txt.
pick 642477c Updated README.txt.
pick b7e5732 Fixed typo in README.txt.
pick d1ba481 Updated README.txt.
pick 6256b8a Updated README.txt.
pick 77886c1 Updated README.txt.

pick 8aea9be Added jack-be-nimble.txt.
pick 9e48a45 Added mother-goose.txt.
pick fbe874e Added old-king-cole.txt.
pick 642477c Updated README.txt.
squash b7e5732 Fixed typo in README.txt.
squash d1ba481 Updated README.txt.
squash 6256b8a Updated README.txt.
squash 77886c1 Updated README.txt.

$ git log --oneline
80e8a59 Updated README.txt.
1d57351 Added old-king-cole.txt.
9e48a45 Added mother-goose.txt.
8aea9be Added jack-be-nimble.txt.
4b15370 Added hickory-dickory-dock.txt.
4ada881 Added old-mother-hubbard.txt, twinkle-twinkle.txt, hokey-pokey.txt
10e0e68 Added jack-and-jill.txt.
6a69e0f Added all-around-the-mulberry-bush.txt.
d30493a Added project overview to README.txt
710f4bd First commit.