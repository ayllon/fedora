FROM fedora:rawhide

USER root

RUN dnf install -y vim zsh fzf vim-powerline
RUN dnf install -y rpmdevtools fedpkg git fedora-packager-kerberos
RUN dnf install -y openssh-server
RUN dnf upgrade -y
RUN useradd aalvarez --shell /bin/zsh
RUN usermod -a -G wheel aalvarez
RUN echo "aalvarez ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-aalvarez
RUN sed -i "s:default_ccache_name\s*=\s*\S*:default_ccache_name = /tmp/krb5cc_%{uid}:g" /etc/krb5.conf

USER aalvarez
RUN mkdir -p ~/.ssh/
RUN touch ~/.ssh/authorized_keys
RUN chmod 0600 ~/.ssh/authorized_keys
RUN git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
