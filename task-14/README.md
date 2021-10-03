                                                                                                                              Senthil Lakshmikanth B

                                                          Bandit – Over The Wire detailed write up : 

This is game is about finding the password of next level in the current level. It starts from Level 0, 
Firstly, we have to login to the game using “ ssh bandit(level)@bandit.labs.overthewire.org -p 2220 “ command. 

Level 0 :
The password for next level 0 is bandit0. And here we get the password for next level.

Level 0 to Level 1 :
The password for this next level is written in readme file. To extract the password we used cat readme command. The Password for next level is ( boJ9jbbUNNfktd78OOpsqOltutMc3MY1 ).

Level 1 to Level 2 : 
In this level there was only file named “ - “. Then using cat <- I got the password for next level CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9

Level 2 to Level 3 :
The next password UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK was in a file spaces in this filename and used cat command to extract. UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK

Level 3 to Level 4 : 
Here the password is stored in a hidden file. So inside inhere directory, I used cat.hidden to rerad the hidden file. pIwrPrtPN36QITSp3EQaw936yaFoFgAB

Level 4 to Level 5 : 
Here the password is in human onky readable file, i.e ASCII text. So to find which file is ASCII I used type command. koReBOKuIDDepwhWk7jZC0RTdopnAYKh

Level 5 to Level 6 :
Here inside the inhere directory, I used “ find -type f -size 1033c ! executable “ and found the password inside maybehere file, DxjZPULLxYr17uwoI01bNLQbtFemEgo7

Level 6 to Level 7 :
Here I used type, user, grep, size option to extract and got the file path which contains the password HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs

Level 7 to Level 8 :
Here I used cat data.txt | grep “millionth“ to grep the sentence which contains the word millionth. cvX2JJa4CFALtqS87jk27qwqGhBM9plV

Level 8 to Level 9 :
There are many files in the same name so we used sort option to sort in an order and uniq option to find the unique line. UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR

Level 9 to Level 10 : 
Here the password is in string type and it starts with more equalo to “ = “ sign. So we used strings data.txt | grep “=” to get the password. truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk

Level 10 to Level 11 :
Here the password is directly accessible but we need to decode it to base64. So we used base64 -d option to decode the file. IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
