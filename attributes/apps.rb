#
# Cookbook Name:: openoffice
# Attributes:: apps
#
# Copyright 2010, Fletcher Nichol
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

case platform
when "ubuntu"
  if node['platform_version'] <= "10.04"
    node.set['openoffice']['apps_pkgs'] =
      %w{openoffice.org-writer openoffice.org-calc openoffice.org-impress}
  else
    node.set['openoffice']['apps_pkgs'] =
      %w{libreoffice-writer libreoffice-calc libreoffice-impress}
  end
else
  node.set['openoffice']['apps_pkgs'] = []
end
