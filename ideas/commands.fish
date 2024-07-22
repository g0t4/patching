sed -i '' 's/Higbee/Mcclure/g' change-name/catalog.html

diff catalog.html change-name/catalog.html > ideas/diff-no-args.patch # aka => diff --normal 
diff -u catalog.html change-name/catalog.html > ideas/diff-u.patch
diff -c catalog.html change-name/catalog.html > ideas/diff-c.patch
diff -e catalog.html change-name/catalog.html > ideas/diff-e.patch

# patching
patch catalog.html < ideas/diff-no-args.patch
git status/diff # run after to show diff
git reset hard --HEAD # undo for next test

# these patch files have filename in header so dont need name to patch
patch < ideas/diff-u.patch
patch < ideas/diff-c.patch
# patch catalog.html < ideas/diff-u.patch    # also works
#

# edscript format
patch catalog.html < ideas/diff-e.patch

# pass to ed (w/ wq to write/save)
./ideas/diff-e-to-ed.fish
# ensure in dir above (not in ideas dir)

# write to STDOUT
patch -o - < ideas/diff-u.patch

# FYI can pass patch file after file to patch... 
patch -o - catalog.html ideas/diff-u.patch
# IMO #   patch -o - catalog.html < ideas/diff-u.patch   # makes more sense, or even better:
patch -o - -i ideas/diff-u.patch catalog.html   # -i arg for patch file
