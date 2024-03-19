FROM fedora:rawhide

USER root

RUN dnf upgrade -y
RUN dnf install -y vim zsh
RUN useradd aalvarez --shell /bin/zsh
RUN usermod -a -G wheel aalvarez
RUN echo "aalvarez ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-aalvarez
RUN dnf install -y rpmdevtools fedpkg git fedora-packager-kerberos
RUN sed -i "s:default_ccache_name\s*=\s*\S*:default_ccache_name = /tmp/krb5cc_%{uid}:g" /etc/krb5.conf

USER aalvarez
