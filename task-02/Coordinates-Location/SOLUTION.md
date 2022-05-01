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
