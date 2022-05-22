#!/usr/bin/env python

from setuptools import setup, find_packages

setup(
    name='pydnet',
    version='0.0.1',
    author="Leonard Pollak",
    author_email="pollak@tr-host.de",
    description="python interface for AlexeyAB/darknet",
    # Modules to import from other scripts:
    package_dir={'': 'src'},
    packages=find_packages(where='src'),
    # Executables
    scripts=["cli/darknet_images.py", "cli/darknet_video.py"],
)
