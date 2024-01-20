FROM mcr.microsoft.com/devcontainers/base:bullseye

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Configure apt and install packages (git, curl, wget, net-tools, python3-venv, python3-pip, python3-dev, build-essential)
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get -y install git curl wget net-tools python3-venv python3-pip python3-dev build-essential \
    #
    # Get zsh
    && apt-get -y install zsh \
    #
    # Install oh-my-zsh
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    #
    # Install powerlevel10k theme with rainbow version
    && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k \
    && sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc \
    && echo "source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc \
    #
    # Install bash autocompletion
    && apt-get -y install bash-completion \
    && echo 'if [ -f /etc/bash_completion ]; then\n    . /etc/bash_completion\nfi' >> ~/.bashrc

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog

# Switch to non-root user
USER vscode

# Set the default shell to zsh
ENV SHELL /usr/bin/zsh

# Set the default command to zsh
CMD ["/usr/bin/zsh"]
