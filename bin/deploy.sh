#!/bin/bash

git push origin source && rake generate && rake deploy
