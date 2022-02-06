FROM archlinux:base-devel
LABEL authors="M0Rf30"
RUN pacman -Syu --noconfirm; \
  pacman -S --noconfirm \
  arm-none-eabi-gcc \
  arm-none-eabi-newlib \
  aarch64-linux-gnu-gcc \
  ccache bc git inetutils; \
  rm -rf /var/cache/pacman/pkg/*
USER user
