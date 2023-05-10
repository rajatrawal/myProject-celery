#!/bin/sh -ex
celery -A aistocks.celery beat -l info &
celery -A aistocks.celery worker -l info &
tail -f /dev/null