
BUILD_DIR = build
PROJECT_NAME = $(shell basename $(shell pwd))

MAKE:
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR) && cmake -G "MSYS Makefiles" -D CMAKE_PROJECT_NAME=$(PROJECT_NAME) -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=on ..
	@cd $(BUILD_DIR) && make -s

run:
	@echo [34m"[RUNNING]"[0m
	@./$(BUILD_DIR)/$(PROJECT_NAME)
	@echo
	@echo [34m"[DONE]"[0m

