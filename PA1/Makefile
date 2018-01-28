all: cpu cpu600 memory disk network

cpu:
	gcc -std=c99 -pthread -o cpu ccpa1.c

cpu600:
	gcc -std=c99 -pthread -o cpuiops ccpa1_sampleiops.c
	gcc -std=c99 -pthread -o cpuflops ccpa1_sampleflops.c

disk:	
	gcc -std=c99 -pthread -o disk disk.c

memory:
	gcc -std=c99 -pthread -o memory memory.c

network:
	gcc -std=c99 -pthread -o c_tcp c_tcp.c
	gcc -std=c99 -pthread -o s_tcp s_tcp.c
	gcc -std=c99 -pthread -o c_udp c_udp.c
	gcc -std=c99 -pthread -o s_udp s_udp.c

clean:
	rm -f cpu cpuiops cpuflops disk memory c_tcp s_tcp c_udp s_udp


