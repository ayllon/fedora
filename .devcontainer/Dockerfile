FROM fedora:rawhide

USER root

RUN useradd aalvarez
RUN dnf upgrade -y
RUN dnf install -y rpmdevtools fedpkg git fedora-packager-kerberos

USER aalvarez
