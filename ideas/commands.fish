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


