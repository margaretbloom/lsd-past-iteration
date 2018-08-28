When profiling main.asm the RS never got full, this seems to be due to the LSD not being able
to issue the uOPs from more than one iteration. 
