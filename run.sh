rm -rf build
make
openocd -f interface/stlink.cfg -f target/stm32f7x.cfg -c "program build/morse-code-generator.elf verify reset exit"