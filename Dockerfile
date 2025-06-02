
FROM odoo:18.0
LABEL maintainer="greenfield.biz.vn"

USER root
RUN pip3 install psycopg2-binary

COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
