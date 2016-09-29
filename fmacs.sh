#!/bin/sh

cd src
(echo include fmacs.fth fmacs; cat) | forth
stty sane
