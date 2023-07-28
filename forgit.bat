IF [%1] == [], (set msg="minor change") else (set msg=%1)
echo %msg%
call quarto.cmd render
git add -A
git commit -m %msg%
git push
cd ../fr
call quarto.cmd render
git add -A
git commit -m %msg%
git push
cd ../m2b3en