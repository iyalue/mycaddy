FROM alpine
WORKDIR /usr/local/
ENV TEST=none
RUN apk --no-cache add curl tar unzip \
&& curl -sL -O https://github.com/caddyserver/caddy/releases/download/v1.0.4/caddy_v1.0.4_linux_amd64.tar.gz -O https://github.com/mayswind/AriaNg-DailyBuild/archive/master.zip \
&& tar -xzf caddy_v1.0.4_linux_amd64.tar.gz \
&& rm caddy_v1.0.4_linux_amd64.tar.gz \
&& unzip master.zip && mv AriaNg-DailyBuild-master www \
&& rm master.zip \
&& adduser -S -D -H -G root cy\
&& chmod -R g+rw /usr/local
COPY configure.sh /usr/local
RUN chmod g+rwx /usr/local/configure.sh
USER cy
ENTRYPOINT /usr/local/configure.sh
EXPOSE 8081

