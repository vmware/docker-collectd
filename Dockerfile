#
#  Copyright 2015 VMware, Inc.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

#This Dockerfile is not templatized. Meaning we don't use ansible to set some values before using this file.

FROM gliderlabs/alpine:3.1

RUN apk-install collectd
ADD ./collectd.conf  /etc/collectd/
ADD run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 25826

CMD /run.sh

