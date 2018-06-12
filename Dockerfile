FROM theasp/fluentd-plugins:common
COPY build/* /tmp/pgjson/
RUN set -ex; \
  cd /tmp/pgjson; \
  gem install *.gem; \
  cd /; \
  rm -rf /tmp/pgjson
