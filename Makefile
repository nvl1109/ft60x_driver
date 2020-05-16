# Makefile for kernel module

KERNEL_VERSION:=$(shell uname -r)

obj-m = ft60x.o
sdr-objs = ft60x.o

all: ft60x.ko

ft60x.ko: ft60x.c
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
	rm -f *~ *.o *.ko
