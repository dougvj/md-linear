# obj-m specifie we're a kernel module.
obj-m += md-linear.o

# Set the path to the Kernel build utils.
KBUILD=/lib/modules/$(shell uname -r)/build/

default:
	$(MAKE) -C $(KBUILD) M=$(PWD) modules

clean:
	$(MAKE) -C $(KBUILD) M=$(PWD) clean

menuconfig:
	$(MAKE) -C $(KBUILD) M=$(PWD) menuconfig
