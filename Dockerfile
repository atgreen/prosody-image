FROM fedora

RUN dnf install -y prosody

COPY prosody.cfg.lua /etc/prosody/prosody.cfg.lua
RUN chmod -R go+rwx /etc/prosody/

EXPOSE 5280

USER 1001

CMD prosody
