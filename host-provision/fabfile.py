from fabric.api import run, env

env.host_string = "urbana@160.153.224.236"


def pull():
    # Pull updates from the central repo
    run("cd /home/urbana/urbana/ && git fetch && git reset --hard origin/master")


def stop():
    run("sudo service gunicorn stop")


def start():
    # static files are collected before the service starts
    run("sudo service gunicorn start")


def deploy():
    stop()
    pull()
    start()
