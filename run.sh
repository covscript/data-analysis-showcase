#!/bin/bash
ecs data_cleaning.ecs
ecs labeling.ecs
ecs merge.ecs
ecs fix_abnormal.ecs 5 cosine
