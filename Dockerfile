FROM m0rf30/arch-yay:latest
LABEL authors="M0Rf30"
RUN yay -Syu --noconfirm
RUN yay -S --noconfirm arm-none-eabi-gcc
RUN yay -S --noconfirm aarch64-linux-gnu-gcc
RUN yay -Scc --noconfirm 
USER user
