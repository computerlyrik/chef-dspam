#
# Cookbook Name:: dspam
# Recipe:: default
#
# Copyright 2013, computerlyrik
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


package "dspam"

service "dspam" do
  action [:enable, :start]
end

template "/etc/default/dspam" do
  notifies :restart, "service[dspam]"
end

template "/etc/dspam/dspam.conf" do
  notifies :restart, "service[dspam]"
end
