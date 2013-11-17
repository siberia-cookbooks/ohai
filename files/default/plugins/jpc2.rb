#
# Author:: Aaron Kalin (<akalin@martinisoftware.com>)
# Author:: Jacques Marneweck (<jacques@powertrip.co.za>)
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

provides "jpc2"

depends "kernel"
depends "network/interfaces"

require 'pp'

def has_jpc2_mac?
  network[:interfaces].values.each do |iface|
    pp iface
    unless iface[:arp].nil?
      if iface[:arp].value?("00:00:5e:00:01:01")
        Ohai::Log.debug("has_jpc2_mac? == true")
        return true
      end
    end
  end
  Ohai::Log.debug("has_jpc2_mac? == false")
  false
end

# Identifies the joyent public cloud (jpc2 snv_147+) by preferring the hint, then
# if we can see the VRRP mac address from the Force10's
#
# Returns true or false
def looks_like_jpc2?
  hint?('jpc2') || has_jpc2_mac?
end

# Names jpc2 ip address
#
# name - symbol of ohai name (e.g. :public_ip)
# eth - Interface name (e.g. :eth0)
#
# Alters jpc2 mash with new interface based on name parameter
def get_ip_address(name, eth)
  if eth_iface = network[:interfaces][eth]
    eth_iface[:addresses].each do |key, info|
      jpc2[name] = key if info['family'] == 'inet'
    end
  end
end

# Setup jpc2 mash if it is a jpc2 system
if looks_like_jpc2?
  jpc2 Mash.new
  get_ip_address(:public_ip, :net0)
  get_ip_address(:private_ip, :net1)
end