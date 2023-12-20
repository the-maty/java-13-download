#!/bin/bash

# Install sdkman (if not installed)
if [ ! -d "$HOME/.sdkman" ]; then
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# Install Java 13 using sdkman
sdk install java 13.0.2-open

# Set Java 13 as the default version
sdk use java 13.0.2-open

# Display Java version for verification
java --version