#!/bin/sh
#
# Copyright (C) 2014 Apigee Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

organization=$1
environment=$2
currDir=$PWD
username=$3
if [[ -z "$4" ]]; then
  echo "Enter your password for the Apigee Enterprise, followed by [ENTER]:"
  read -s password
else
  password=$4
fi
#mvn apigee-enterprise:deploy -P$environment -Dusername=$username -Dpassword=$password
mvn install -P$environment -Dorganization=$organization -Dusername=$username -Dpassword=$password
