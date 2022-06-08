#!/bin/bash

function a() {
  case $1 in
    "")
      echo -n "empty"
      ;;
    run)
      echo -n "run"
      ;;
    b)
      echo -n "build"
      ;;
  esac
}

a
a 
a run
a b
