################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/BRTOS.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/OSInfo.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/OSTime.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/mbox.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/mutex.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/queue.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/semaphore.c \
C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/stimer.c 

OBJS += \
./Sources_brtos/BRTOS.o \
./Sources_brtos/OSInfo.o \
./Sources_brtos/OSTime.o \
./Sources_brtos/mbox.o \
./Sources_brtos/mutex.o \
./Sources_brtos/queue.o \
./Sources_brtos/semaphore.o \
./Sources_brtos/stimer.o 

C_DEPS += \
./Sources_brtos/BRTOS.d \
./Sources_brtos/OSInfo.d \
./Sources_brtos/OSTime.d \
./Sources_brtos/mbox.d \
./Sources_brtos/mutex.d \
./Sources_brtos/queue.d \
./Sources_brtos/semaphore.d \
./Sources_brtos/stimer.d 


# Each subdirectory must supply rules for building sources it contributes
Sources_brtos/BRTOS.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/BRTOS.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/OSInfo.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/OSInfo.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/OSTime.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/OSTime.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/mbox.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/mbox.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/mutex.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/mutex.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/queue.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/semaphore.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/semaphore.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/stimer.o: C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/brtos/brtos/stimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Sources" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/Project_Headers" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"C:/DADOS_LOCAIS/GITHUB/brtos_github/examples/eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


