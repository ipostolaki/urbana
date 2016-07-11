from __future__ import with_statement
from fabric.api import *


env.host_string = "root@128.199.56.134"


def deploy(stop="do", migrate="do"):

    # Stop services
    if stop == 'do':
        stop()

    # Pull updates from central repo
    run("cd /home/urbana/ && git fetch && git pull --no-edit")

    # Re-build django container – to install there new pip reqs
    run("cd /home/urbana/droplet && make build")

    # Run migrations if any
    # if migrate == 'do':
    #     run("cd /home/urbana/ && make apply_nigrations")
    # TODO: migrations may only be started when containers are running.
    # migrate.sh needed - run actions after pg start

    # Start services
    start()


def start():
    run("cd /home/urbana/ && make run-detached")


def stop():
    run("cd /home/urbana/ && make stop")


def remote_git_status():
    run("cd /home/urbana/ && git fetch && git status")
