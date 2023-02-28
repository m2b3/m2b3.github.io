call quarto.cmd render
git add -A
git commit -m "minor change"
git push
cd ../fr
call quarto.cmd render
git add -A
git commit -m "minor change"
git push 
cd ../m2b3en