# Base Docker images for projects with Oracle JDK

This repository contains images that can be used as a base image for all images that require an Oracle Java Development Kit.

## Types of images

Currently this repository contains following images:

1. JDK 7 (in the `jdk7` branch)
2. JDK 8 (in the `jdk8` branch)

Both images **extend** the `jboss/base:latest` image and add latest Oracle JDK distribution for selected version. 
Additionally a `JAVA_HOME` environment variable is set.

### Build

    docker build --tag personal/centos7-jdk7:7u79 . 
    docker build --tag personal/centos7-jdk7:latest . 

## Issues

All issues should be reported in the [GitHub issue tracker](https://github.com/sfcoy/centos7-oracle-jdk/issues).
