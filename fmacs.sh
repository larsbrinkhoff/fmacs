#!/bin/sh

cd src
(stty raw; echo include fmacs.fth fmacs; cat) | forth
stty sane
