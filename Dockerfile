FROM fedora

RUN dnf install -y prosody

COPY prosody.cfg.lua /etc/prosody/prosody.cfg.lua
RUN chmod -R go+rwx /etc/prosody/
RUN chmod -R go+rwx /etc/pki/prosody/
RUN chmod -R go+rwx /var/lib/prosody/

EXPOSE 5222

USER 1001

CMD prosody
