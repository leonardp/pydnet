#!/usr/bin/env python

from setuptools import setup, find_packages

setup(
    name='pydnet',
    version='0.0.1',
    author="Leonard Pollak",
    author_email="pollak@tr-host.de",
    description="python interface for AlexeyAB/darknet",
    # Modules to import from other scripts:
    packages=find_packages(),
    # Executables
    scripts=["darknet_images.py"],
)
