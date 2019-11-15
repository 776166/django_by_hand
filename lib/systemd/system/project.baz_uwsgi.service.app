[Unit]
# Place me to /lib/systemd/system/
Description=project.baz uwsgi daemon
After=network.target

[Service]
ExecStart=/home/foouser/project.baz/dev/bin/uwsgictl.sh start
ExecStop=/home/foouser/project.baz/dev/bin/uwsgictl.sh stop
Restart=/home/foouser/project.baz/dev/bin/uwsgictl.sh restart
PIDFile=/var/run/foouser/project.baz-uwsgi.pid
RemainAfterExit=no
Restart=on-failure
RestartSec=3s
User=foouser
Group=foouser

[Install]
WantedBy=multi-user.target
