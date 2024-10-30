FROM archlinux:base-devel
LABEL org.opencontainers.image.title="arch-arm-crosscompile"
LABEL org.opencontainers.image.description="armv6/v7/v8 cross-compiling toolchain"
LABEL org.opencontainers.image.vendor="M0Rf30"

# Update the package database and install necessary packages
RUN pacman -Syu --noconfirm; \
  pacman -S --noconfirm \
  arm-none-eabi-gcc \
  arm-none-eabi-newlib \
  aarch64-linux-gnu-gcc \
  ccache bc git inetutils; \
  rm -rf /var/cache/pacman/pkg/*

# Create a new user and switch to that user
RUN useradd -m user
USER user
