from fabric.api import run, env

env.key_filename = "/safe/aws_micro_key.pem"
env.host_string = "ubuntu@ec2-52-59-31-9.eu-central-1.compute.amazonaws.com"


def deploy():
    stop()
    pull()
    build()
    start()


def pull():
    # Pull updates from the central repo
    run("cd /home/ubuntu/urbana/ && git reset --hard origin/master")


def start():
    run("cd /home/ubuntu/urbana/docker/stage && make run-detached")


def build():
    # Rebuild django container, to install there new pip reqs
    run("cd /home/ubuntu/urbana/docker/stage && make build")


def stop():
    # Stop running containers
    run("cd /home/ubuntu/urbana/docker/stage && make stop")
