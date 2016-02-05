################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../../../brtos/hal/MemoryAllocation/umm_malloc.c 

OBJS += \
./Source_MemoryAllocation/umm_malloc.o 

C_DEPS += \
./Source_MemoryAllocation/umm_malloc.d 


# Each subdirectory must supply rules for building sources it contributes
Source_MemoryAllocation/umm_malloc.o: ../../../brtos/hal/MemoryAllocation/umm_malloc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


