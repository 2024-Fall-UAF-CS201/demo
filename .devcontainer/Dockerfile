#FROM mcr.microsoft.com/vscode/devcontainers/base:alpine3.20
FROM debian:bookworm-slim AS intermediate

# Install dependencies
RUN apt-get -qq update && \
    apt-get install -qqy --no-install-recommends \
        gnupg2 wget ca-certificates apt-transport-https \
        autoconf automake cmake dpkg-dev file make patch libc6-dev

     
# Install LLVM
RUN wget -qO /etc/apt/trusted.gpg.d/llvm.asc https://apt.llvm.org/llvm-snapshot.gpg.key
    
   
# Install LLVM
#RUN echo "deb https://apt.llvm.org/bookworm llvm-toolchain-bookworm-18 main" > /etc/apt/sources.list.d/llvm.list && \
#    wget -qO /etc/apt/trusted.gpg.d/llvm.asc https://apt.llvm.org/llvm-snapshot.gpg.key && \
#    apt-get -qq update && \
#    apt-get install -qqy -t llvm-toolchain-18 clang-18 clang-tidy-18 clang-format-18 lld-18 libc++-18-dev libc++abi-18-dev && \
#    for f in /usr/lib/llvm-*/bin/*; do ln -sf "$f" /usr/bin; done && \
#    ln -sf clang /usr/bin/cc && \
#    ln -sf clang /usr/bin/c89 && \
#    ln -sf clang /usr/bin/c99 && \
#    ln -sf clang++ /usr/bin/c++ && \
#    ln -sf clang++ /usr/bin/g++ && \
#    rm -rf /var/lib/apt/lists/*
    



#ARG USERNAME=vscode
#ARG USER_UID=1000
#ARG USER_GID=$USER_UID

# Create the user
#RUN groupadd --gid $USER_GID $USERNAME \
#    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
#    && apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install --no-install-recommends less man-db

# ********************************************************
# * Anything else you want to do like clean up goes here *
# ********************************************************

# [Optional] Set the default user. Omit if you want to keep the default as root.
#USER $USERNAME

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

FROM intermediate as final
