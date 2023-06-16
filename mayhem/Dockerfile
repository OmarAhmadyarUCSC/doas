# Based off of example Dockerfile found here:
# https://github.com/mayhemheroes/hackathon-resources/blob/main/lab2b/Dockerfile

# Build doas with debug info
FROM ubuntu:latest as builder
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y build-essential make bison flex libpam0g-dev
ADD ./ /doas
ENV OPT -g
RUN make -C /doas
RUN make -C /doas install

# Prepare runtime env -----------------------------------
FROM ubuntu:latest

COPY --from=builder /doas/doas /doas

#RUN chmod 4755 /usr/bin/doas

#COPY mayhem/doas.conf /usr/local/etc/doas.conf
#RUN chown root:root /usr/local/etc/doas.conf
#
#RUN useradd -g users -s /bin/bash -M user
#RUN echo 'user:mypassword' | chpasswd
#USER user
