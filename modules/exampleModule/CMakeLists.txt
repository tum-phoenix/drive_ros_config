# Minimum version required
cmake_minimum_required(VERSION 2.8.3)

# Get the information about this package's buildtime dependencies
find_package(catkin REQUIRED
             COMPONENTS std_msgs)

# Declare the message files to be built
#add_message_files(FILES

#)

# Declare the service files to be built
#add_service_files(FILES

#)

# Actually generate the language-specific message and service files
#generate_messages(DEPENDENCIES std_msgs sensor_msgs)

# Declare that this catkin package's runtime dependencies
#catkin_package(
#            CATKIN_DEPENDS message_runtime std_msgs sensor_msgs
#)

# define executable using MyMessage1 etc.
#add_executable(message_program src/main.cpp)
#add_dependencies(message_program ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

# define executable not using any messages/services provided by this package
#add_executable(does_not_use_local_messages_program src/main.cpp)
#add_dependencies(does_not_use_local_messages_program ${catkin_EXPORTED_TARGETS})
