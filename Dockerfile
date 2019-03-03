FROM m0rf30/arch-yay:latest
LABEL authors="M0Rf30"
RUN yay -Syu --noconfirm
RUN yay -S --noconfirm arm-none-eabi-gcc arm-none-eabi-newlib aarch64-linux-gnu-gcc ccache bc
RUN rm -rf /var/cache/pacman/pkg/*
USER user
