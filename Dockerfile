FROM fedora

RUN dnf install -y prosody

RUN chmod -R go+rwx /etc/prosody/
RUN chmod -R go+rwx /etc/pki/prosody/
RUN chmod -R go+rwx /var/lib/prosody/

EXPOSE 5222

USER 1001

CMD prosody --config /opt/prosody.cfg.lua
