from fabric.api import run, env
from fabric.context_managers import cd


env.host_string = "root@163.172.166.127"

stage_makefile_location = "/home/urbana/docker/stage"


def deploy():
    with cd(stage_makefile_location):
        _stop()
        _pull()
        _start()
        _collect_static()


def build_and_deploy():
        _stop()
        _pull()
        _build()
        _collect_static()
        _start()

def _pull():
    """Pull updates from the remote repository"""
    run("git fetch && git reset --hard origin/master")


def _start():
    run("make run-detached")


def _build():
    """Rebuild containers, to install there new dependencies"""
    run("make build")


def _stop():
    """Stop running containers"""
    run("make stop")


def _collect_static():
    """Collect django apps' static files"""
    run("make django-collect-static")

