################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/main.c \
../Sources/tasks.c 

OBJS += \
./Sources/main.o \
./Sources/tasks.o 

C_DEPS += \
./Sources/main.d \
./Sources/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/%.o: ../Sources/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I../Project_Headers -I../Sources -I../../../brtos/brtos/includes -I../../../brtos/hal/MemoryAllocation -I../../../brtos/hal/GCC_CFV1 -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


