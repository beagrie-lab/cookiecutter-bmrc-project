#!/bin/bash

python -c 'import getpass; print(49152 + (hash(getpass.getuser()) % 16383))'
