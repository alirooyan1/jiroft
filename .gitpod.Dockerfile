FROM gitpod/workspace-full

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /home/gitpod/flutter
ENV PATH="/home/gitpod/flutter/bin:${PATH}"

# Install Android SDK & tools
RUN sudo apt-get update && \
    sudo apt-get install -y openjdk-17-jdk unzip && \
    sudo apt-get clean

# Accept Android licenses
RUN yes | /home/gitpod/flutter/bin/flutter doctor --android-licenses

# Pre-download Flutter dependencies
RUN flutter precache
