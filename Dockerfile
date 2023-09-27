FROM abequie/mojo:latest

USER root

ENV DEBIAN_FRONTEND=noninteractive
# ENV PATH=$PATH:/home/mojo/.modular/pkg/packages.modular.com_mojo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV MOJO_PYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.10.so.1.0
ENV MODULAR_HOME=/home/mojo/.modular

RUN apt-get update && apt-get install -y \
    pip \
    python3-matplotlib \
    python3-pyqt5 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/mojo/workspace

RUN chown -R mojo:mojo /home/mojo/workspace && \
    chmod -R 775 /home/mojo/workspace

ENV DEBIAN_FRONTEND=gnome

USER mojo

COPY . /home/mojo/workspace

RUN python -m pip install -r requirements.txt


CMD ["tail", "-f", "/dev/null"]