hugo
git add ./
git commit -m 'deploy - source update'
git push
cp -r ./public/ ../apanzerj.github.io
cd ../apanzerj.github.io
git add ./
git commit -m 'deploy - generated site update'
git push
