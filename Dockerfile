# FROM google/dart

# WORKDIR /app
# COPY pubspec.yaml pubspec.lock ./
# RUN dart pub get
# COPY . .
# RUN flutter build apk --release
# EXPOSE 8080
# CMD ["flutter", "run", "-d", "web-server", "--web-port", "8080"]





FROM google/dart

WORKDIR /app

COPY pubspec.yaml pubspec.lock ./
RUN dart pub get
COPY . .
RUN flutter build apk --release

EXPOSE 8080

CMD ["flutter", "run", "-d", "web-server", "--web-port", "8080"]
















# # Use the official Dart image as a base
# FROM google/dart

# # Install additional dependencies
# RUN apt-get update \
#     && apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# # Install the Flutter SDK
# RUN curl -sL https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.2.3-stable.tar.xz | tar xJ -C /usr/local

# # Add Flutter to the system path
# ENV PATH=$PATH:/usr/local/flutter/bin

# # Check Flutter dependencies
# RUN flutter doctor

# # Set the working directory to /app
# WORKDIR /app

# # Copy the entire project to /app
# COPY . .

# # Install project dependenciesRUN flutter pub get

# # Set the default command for the container
# CMD ["flutter", "run"]

















# FROM google/dart

# RUN apt-get update \
#     && apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# RUN curl -sL https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.2.3-stable.tar.xz | tar xJ -C /usr/local

# ENV PATH=$PATH:/usr/local/flutter/bin

# RUN flutter doctor

# WORKDIR /app

# COPY . .

# RUN flutter pub get

# CMD ["flutter", "run"]





