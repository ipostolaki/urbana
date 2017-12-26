from fabric.api import run, env

env.host_string = "root@163.172.166.127"


def deploy():
    stop()
    pull()
    build()
    collect_static()
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


def collect_static():
    # collect django apps static files
    run("cd /home/urbana/urbana/docker/stage && make django-collect-static")
