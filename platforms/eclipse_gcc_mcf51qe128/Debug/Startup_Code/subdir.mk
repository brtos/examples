################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Startup_Code/newlib_stubs.c \
../Startup_Code/system.c \
../Startup_Code/vectors.c 

S_UPPER_SRCS += \
../Startup_Code/startup_gcc_m68k_elf.S 

OBJS += \
./Startup_Code/newlib_stubs.o \
./Startup_Code/startup_gcc_m68k_elf.o \
./Startup_Code/system.o \
./Startup_Code/vectors.o 

C_DEPS += \
./Startup_Code/newlib_stubs.d \
./Startup_Code/system.d \
./Startup_Code/vectors.d 


# Each subdirectory must supply rules for building sources it contributes
Startup_Code/%.o: ../Startup_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Project_Headers -I../Sources -I../../../brtos/brtos/includes -I../../../brtos/hal/MemoryAllocation -I../../../brtos/hal/GCC_CFV1 -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Startup_Code/%.o: ../Startup_Code/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire Assembler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -x assembler-with-cpp -DDEBUG_BUILD -I../Project_Headers -I../Sources -I../../../brtos/hal/GCC_CFV1 -I../../../brtos/hal/MemoryAllocation -I../../../brtos/brtos/includes -Wall -Wextra -c -fmessage-length=0  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


