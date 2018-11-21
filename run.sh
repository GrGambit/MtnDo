#! /bin/sh
set -e

docker build -t mtndo ./docker

#docker run --rm \
#  --memory=4g \
#  -p 8889:8888 \
#  -v "$(pwd)/notebooks:/notebooks" \
#  mtndo

docker run --memory=4g -p 8889:8888 -i --rm -v `pwd`/notebooks:/notebooks -t mtndo bash -c 'jupyter notebook --port 8888 --ip=0.0.0.0 --allow-root --config /notebooks/.config.py --no-browser --notebook-dir=/notebooks'
