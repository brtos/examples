################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := usbdm-rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup_Code/subdir.mk
-include Sources_hal/subdir.mk
-include Sources_brtos/subdir.mk
-include Sources/subdir.mk
-include Source_MemoryAllocation/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
MAP_FILE_OUTPUTS += \
brtos_project.map \

ARCHIVES += \
libUSER_OBJS.a \

SIZE_FILE_OUTPUTS += \
brtos_project.size \

SYMBOL_LIST_FILE_OUTPUTS += \
brtos_project.sym \


# All Target
all: brtos_project.elf secondary-outputs

# Tool invocations
brtos_project.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Coldfire C Linker'
	m68k-elf-gcc -mcpu=51 -g3 -Os -Wl,--gc-sections -L"E:/carlos/GIT_BRTOS/brtos_examples/examples/eclipse_gcc_mcf51qe128/Project_Settings/Linker_Files" -T "Linker-rom.ld" -Xlinker -Map="brtos_project.map"  -o "brtos_project.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

brtos_project.map: brtos_project.elf $(OBJS) $(USER_OBJS)

libUSER_OBJS.a: $(OBJS) $(USER_OBJS)
	@echo 'Invoking: Coldfire Archiver'
	m68k-elf-ar -r   "libUSER_OBJS.a" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building: $@'
	@echo ' '

brtos_project.size: brtos_project.elf
	@echo 'Invoking: Coldfire Sizer'
	m68k-elf-size "brtos_project.elf" --format=sysv --radix=10   >"brtos_project.size"
	@echo 'Finished building: $@'
	@echo ' '

brtos_project.sym: brtos_project.elf
	@echo 'Invoking: Coldfire Symbol Table'
	m68k-elf-nm "brtos_project.elf" --demangle --defined-only --extern-only --numeric-sort   >"brtos_project.sym"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(MAP_FILE_OUTPUTS)$(ARCHIVES)$(SYMBOL_LIST_FILE_OUTPUTS)$(SIZE_FILE_OUTPUTS)$(EXECUTABLES)$(LIST_FILE_OUTPUTS) brtos_project.elf
	-@echo ' '

secondary-outputs: $(LIST_FILE_OUTPUTS) $(SIZE_FILE_OUTPUTS) $(SYMBOL_LIST_FILE_OUTPUTS)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
