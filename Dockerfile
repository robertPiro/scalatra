FROM gitpod/workspace-full

# Install SBT and prep Scala env
USER root

# Env variables
# For matching pairs google for example "sbt version for scala 3.0"
ENV SCALA_VERSION "3.0.0-RC2"
ENV SBT_VERSION 1.5.0

RUN curl -L -o sbt-$SBT_VERSION.deb https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt-get update && \
  apt-get install sbt

USER gitpod
#ADD ./mksbt.sh       /home/gitpod/bin/mksbt.sh
#ADD ./install_sbt.sh /home/gitpod/bin/install_sbt.sh
ENV PATH ~/bin:$PATH

# Give back control
USER root