#!/bin/bash
ecs labeling.ecs
ecs merge.ecs
ecs fix_abnormal.ecs 5 cosine
