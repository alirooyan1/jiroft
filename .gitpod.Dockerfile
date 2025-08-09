FROM gitpod/workspace-full

# نصب وابستگی‌ها
RUN sudo apt-get update && \
    sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa
