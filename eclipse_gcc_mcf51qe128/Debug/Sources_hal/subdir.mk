################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/hal/GCC_CFV1/HAL.c 

OBJS += \
./Sources_hal/HAL.o 

C_DEPS += \
./Sources_hal/HAL.d 


# Each subdirectory must supply rules for building sources it contributes
Sources_hal/HAL.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/hal/GCC_CFV1/HAL.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

