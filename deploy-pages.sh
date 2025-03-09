echo '----------------------------------------'
echo 'building & pushing a new website version'
echo '----------------------------------------'

# Get the current date
now=$(date +%Y-%m-%d)

# Build the site using hugo
echo 
echo '[ building the site using hugo ]'
hugo --destination _site

# Publish build page
echo
echo '[ pushing the new website version ]'
cd _site
git add .
git commit -m "New Build from $now"
git push -u origin pages