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
./brtos/BRTOS.o \
./brtos/OSInfo.o \
./brtos/OSTime.o \
./brtos/mbox.o \
./brtos/mutex.o \
./brtos/queue.o \
./brtos/semaphore.o \
./brtos/stimer.o 

C_DEPS += \
./brtos/BRTOS.d \
./brtos/OSInfo.d \
./brtos/OSTime.d \
./brtos/mbox.d \
./brtos/mutex.d \
./brtos/queue.d \
./brtos/semaphore.d \
./brtos/stimer.d 


# Each subdirectory must supply rules for building sources it contributes
brtos/BRTOS.o: ../../../brtos/brtos/BRTOS.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../platforms/eclipse_gcc_mcf51qe128/Project_Headers" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/brtos/includes" -I"../../../platforms/eclipse_gcc_mcf51qe128/Sources" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/GCC_CFV1" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

brtos/OSInfo.o: ../../../brtos/brtos/OSInfo.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../platforms/eclipse_gcc_mcf51qe128/Project_Headers" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/brtos/includes" -I"../../../platforms/eclipse_gcc_mcf51qe128/Sources" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/GCC_CFV1" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

brtos/OSTime.o: ../../../brtos/brtos/OSTime.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../platforms/eclipse_gcc_mcf51qe128/Project_Headers" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/brtos/includes" -I"../../../platforms/eclipse_gcc_mcf51qe128/Sources" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/GCC_CFV1" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

brtos/mbox.o: ../../../brtos/brtos/mbox.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../platforms/eclipse_gcc_mcf51qe128/Project_Headers" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/brtos/includes" -I"../../../platforms/eclipse_gcc_mcf51qe128/Sources" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/GCC_CFV1" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

brtos/mutex.o: ../../../brtos/brtos/mutex.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../platforms/eclipse_gcc_mcf51qe128/Project_Headers" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/brtos/includes" -I"../../../platforms/eclipse_gcc_mcf51qe128/Sources" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/GCC_CFV1" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

brtos/queue.o: ../../../brtos/brtos/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../platforms/eclipse_gcc_mcf51qe128/Project_Headers" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/brtos/includes" -I"../../../platforms/eclipse_gcc_mcf51qe128/Sources" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/GCC_CFV1" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

brtos/semaphore.o: ../../../brtos/brtos/semaphore.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../platforms/eclipse_gcc_mcf51qe128/Project_Headers" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/brtos/includes" -I"../../../platforms/eclipse_gcc_mcf51qe128/Sources" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/GCC_CFV1" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '

brtos/stimer.o: ../../../brtos/brtos/stimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Coldfire C Compiler'
	m68k-elf-gcc -mcpu=51 -g3 -Os -ffunction-sections -fdata-sections -DDEBUG_BUILD -I"../../../platforms/eclipse_gcc_mcf51qe128/Project_Headers" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/brtos/includes" -I"../../../platforms/eclipse_gcc_mcf51qe128/Sources" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/GCC_CFV1" -I"../../../platforms/eclipse_gcc_mcf51qe128/../../brtos/hal/MemoryAllocation" -Wall -std=c99 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -o "$@" $<
	@echo 'Finished building: $<'
	@echo ' '


