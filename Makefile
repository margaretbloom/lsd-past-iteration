#EVENTS=uops_executed_port.port_6:u,uops_executed_port.port_0:u,cycles:u,resource_stalls_rs:u
#EVENTS=lsd_cycles_active:u,idq_dsb_cycles:u,idq_mite_cycles:u,idq_ms_uops:u
EVENTS=lsd.cycles_active:u,lsd.cycles_4_uops:u

main: main.o
	ld $< -o $@

main.o: main.asm
	nasm -felf64 $< -o $@

stat: main
	taskset -c 2 ocperf.py stat -r 50 -e${EVENTS} ./main
