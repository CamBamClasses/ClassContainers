FROM ubuntu:22.04
RUN apt update && apt install sudo && apt clean
RUN apt update && apt install -y \
  gcc-12 \
  g++-12 \
  gdb \
  git \
  cmake \
  vim \
  && apt clean
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 20
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-12 20
CMD ["bash"]
