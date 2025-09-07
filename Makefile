
# e.g. "path/to/qemu-8.0.2/build/", mind the trailing "/"
QEMU_PREFIX ?=
# e.g. "-bios path/to/opensbi/fw_dynamic.bin"
QEMU_OPTION ?= -bios ../opensbi/build/platform/generic/firmware/fw_dynamic.bin
# the emulated CPU, e.g. sifive-u54 or rva22s64,v=true
QEMU_CPU ?= sifive-u54

ARCH := rv64imafdcv_zicsr_zifencei_zba_zbb_zbc_zbs_zfh_zicond_zimop_zcmop_zcb_zfa_zawrs_zicbom_zvbb
ABI := lp64d

# outputs
INTERMEDIATE := intermediate.o
QEMU_ELF := sbitest_qemu.elf
QEMU_BIN := sbitest_qemu.bin

all: elf bin

clean:
	rm -f *.bin *.elf *.o

elf:
	clang -c --target=riscv64 -march=$(ARCH) -mabi=$(ABI) -o $(INTERMEDIATE) sbitest.S
	ld.lld -T link.ld -o $(QEMU_ELF) $(INTERMEDIATE)

bin: elf
	llvm-objcopy -O binary $(QEMU_ELF) $(QEMU_BIN)

run: elf
	$(QEMU_PREFIX)qemu-system-riscv64 -cpu $(QEMU_CPU) $(QEMU_OPTION) \
		-machine virt -nographic -kernel $(QEMU_ELF)

objdump: elf
	llvm-objdump -D $(QEMU_ELF)
