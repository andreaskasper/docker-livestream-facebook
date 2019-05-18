#!/bin/sh -e
set -e

stunnel &

exec "$@"
