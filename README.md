# Smoke tests for opensbi-isa-ext-emu

This is a collection of simple test cases for the instructions emulated by opensbi-isa-ext-emu, an OpenSBI fork that emulates unsupported ISA extensions via trap handler.

The test cases' purpose is to do basic plausibility checking so that you do not have to boot up a full operating system only to see that an instruction does not work.

## Usage

The current configuration uses clang, because it is more convenient for cross-platform development.

- `make run` will run the test cases using a default QEMU configuration
- `make QEMU_CPU=rva22s64,v=true run` will use a different CPU in QEMU

Note that you may have to adjust the path to OpenSBI's fw_dynamic.bin in the Makefile.

## Aknowledgements

This test environment is based on the OpenSBI payload template "hello-opensbi" by Daniel Maslowski.
