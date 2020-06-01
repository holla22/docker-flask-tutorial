#!/bin/sh

## This is the Gunicorn server command, creating 2 workers, using 2 threads and running on port 8003
gunicorn app:app -w 2 --threads 2 -b 0.0.0.0:8003