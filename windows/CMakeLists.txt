cmake_minimum_required(VERSION 3.15)

project(${CMAKE_PROJECT_NAME})


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_COMPILER g++)
set(CMAKE_CXX_SOURCES 
    src/main.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${CMAKE_CXX_SOURCES})

target_compile_options(${CMAKE_PROJECT_NAME} PRIVATE -gdwarf-2 -Wall -Wextra)
