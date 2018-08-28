When profiling main.asm the RS never got full, this seems to be due to the LSD not being able
to issue the uOPs from more than one iteration. 

[Question is here](https://stackoverflow.com/questions/52054585/can-the-lsd-issue-uops-from-the-next-iteration-of-the-detected-loop).
