#!/usr/bin/env bash

mkdir -p results

ls raw/*R1* |
	parallel -j 2 --line-buffer \
	"mixcr analyze cellecta-air-human \
	{} \
	{=s:R1:R2:=} \
	{=s:.*/:results/:;s:_R.*::=}"