# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash

# compression
COMPRESS=$COMPRESS_GLOBAL
COMPRESS_CODEC=$COMPRESS_CODEC_GLOBAL

# paths
INPUT_LOCAL=${DATA_LOCAL}/wikibayes
INPUT_HDFS=${DATA_HDFS}/Bayes/Input
OUTPUT_HDFS=${DATA_HDFS}/Bayes/Ouput

if [ $COMPRESS -eq 1 ]; then
    INPUT_HDFS=${INPUT_HDFS}-comp
    OUTPUT_HDFS=${OUTPUT_HDFS}-comp
fi

# bench parameters
NGRAMS=3
