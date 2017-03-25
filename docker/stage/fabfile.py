from fabric.api import run, env

env.host_string = "urbana@160.153.224.236"


def deploy():
    stop()
    pull()
    build()
    start()


def pull():
    # Pull updates from the central repo
    run("cd /home/urbana/urbana/ && git fetch && git reset --hard origin/master")


def start():
    run("cd /home/urbana/urbana/docker/stage && make run-detached")


def build():
    # Rebuild containers, to install there new dependencies
    run("cd /home/urbana/urbana/docker/stage && make build")


def stop():
    # Stop running containers
    run("cd /home/urbana/urbana/docker/stage && make stop")
