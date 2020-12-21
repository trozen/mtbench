#!/bin/bash

mkdir -p build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
for i in $(seq 1 $(nproc)); do
    echo "$i thread(s):"
    ./raytrace $i
done
