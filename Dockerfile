FROM cucloudcollab/xvfb-firefox:046a672383404ba62dcf5fd40b735221cea05f3d

MAINTAINER Shawn Bower shawn.bower@gmail.com
MAINTAINER John Gasper jgasper@unicon.net

RUN apt-get update && apt-get install --no-install-recommends -y \
  zlib1g-dev \
  ruby \
  ruby-dev \
  libxslt-dev \
  libxml2-dev && \
  rm -rf /var/lib/apt/lists/*

RUN gem install --no-ri --no-rdoc aws-sdk

RUN gem install --no-ri --no-rdoc rake

RUN gem install --no-ri --no-rdoc selenium-webdriver \
  highline \
  parseconfig \
  json \
  ruby-saml

COPY bin/ /opt

ENTRYPOINT ["/opt/start-saml-api.sh"]

