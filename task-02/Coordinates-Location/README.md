## 2. Begin your journey with Linux and Git
```
mkdir Coordinates-Location
```
```
cd Coordinates-Location/
```
```
mkdir North
```
```
cd North/
```
```
gedit NDegree.txt 
```
```
gedit NMinutes.txt
```
```
gedit NSeconds.txt
```
```
cat NDegree.txt NMinutes.txt NSeconds.txt > NorthCoordinate.txt
```
```
cp NorthCoordinate.txt North.txt
```
```
mv North.txt ~/Coordinates-Location
```
```
rm NorthCoordinate.txt
```
```
cd..
```

```
mkdir East
```
```
cd East/
```
```
gedit EDegree.txt
```
```
gedit EMinutes.txt 
```
```
gedit ESeconds.txt
```
```
cat EDegree.txt EMinutes.txt ESeconds.txt > EastCoordinate.txt
```
```
mv EastCoordinate.txt ~/Coordinates-Location
```
```
cd -
```
```
mv EastCoordinate.txt East.txt
```
```
cat North.txt East.txt > Location-Coordinate.txt
```

![alt text](https://github.com/senthil-dot-adhu-idhu/amfoss-tasks/blob/main/task-02/Coordinates-Location/9%C2%B05'38.1%22N%2C%2076%C2%B029'30.8%22E.png)

I used the following git commands to push this folder.

```
git clone https://github.com/senthil-dot-adhu-idhu/amfoss-tasks.git
```
```
git init
```
```
git add .
```
```
git commit -m" Commit Message "
```
```
git push origin "branch_name"
```
