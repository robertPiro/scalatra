FROM gitpod/workspace-full

# Install SBT and prep Scala env
USER root

# Env variables
# For matching pairs google for example "sbt version for scala 3.0"
ENV SCALA_VERSION "3.0.0-RC2"
ENV SBT_VERSION 1.5.0

# Instructions from https://eed3si9n.com
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" >> /etc/apt/sources.list.d/sbt.list && \
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" >> /etc/apt/sources.list.d/sbt_old.list && \
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add && \
apt-get update && \
apt-get install sbt

USER gitpod
#ADD ./mksbt.sh       /home/gitpod/bin/mksbt.sh
ENV PATH ~/bin:$PATH

# Give back control
USER root