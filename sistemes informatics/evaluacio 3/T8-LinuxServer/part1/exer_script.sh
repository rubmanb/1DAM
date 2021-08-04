#!/bin/bash
rm $HOME/*.tgz
fecha=$(date|tr -st " " "#")
tar gvfz $HOME/$fecha.tgz /etc/*
exit 0