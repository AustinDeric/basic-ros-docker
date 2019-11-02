FROM ros:kinetic

RUN apt update && apt install -y --no-install-recommends \
	python-pip \
	&& rm -rf /var/lib/apt/lists/*

# add catkin build tools
RUN pip install wstool catkin_tools

# Setup a catkin compliant workspace
ENV CATKIN_WORKSPACE /catkin_ws
RUN mkdir -p /$CATKIN_WORKSPACE/src
WORKDIR $CATKIN_WORKSPACE