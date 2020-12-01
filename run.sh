#!/bin/bash
DIR="$(dirname "$0")"
cd $DIR && ./setup.sh
cd $DIR && python3 tflite_example.py
