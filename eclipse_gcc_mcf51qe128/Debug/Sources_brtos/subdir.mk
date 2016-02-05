################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../../../brtos/brtos/BRTOS.c \
../../../brtos/brtos/OSInfo.c \
../../../brtos/brtos/OSTime.c \
../../../brtos/brtos/mbox.c \
../../../brtos/brtos/mutex.c \
../../../brtos/brtos/queue.c \
../../../brtos/brtos/semaphore.c \
../../../brtos/brtos/stimer.c 

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
Sources_brtos/BRTOS.o: ../../../brtos/brtos/BRTOS.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/OSInfo.o: ../../../brtos/brtos/OSInfo.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/OSTime.o: ../../../brtos/brtos/OSTime.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/mbox.o: ../../../brtos/brtos/mbox.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/mutex.o: ../../../brtos/brtos/mutex.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/queue.o: ../../../brtos/brtos/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/semaphore.o: ../../../brtos/brtos/semaphore.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

Sources_brtos/stimer.o: ../../../brtos/brtos/stimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../eclipse_gcc_mcf51qe128/Sources" -I"../../eclipse_gcc_mcf51qe128/Project_Headers" -I"../../eclipse_gcc_mcf51qe128/../brtos/brtos/includes" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/GCC_CFV1" -I"../../eclipse_gcc_mcf51qe128/../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


