# -*- mode: ruby -*-
# vi: set ft=ruby :
require "yaml"
settings = YAML.load_file(File.join(File.dirname(__FILE__), 'settings.yaml'))

Vagrant.configure("2") do |config|
  config.vm.box = settings["software"]["box"]
  config.vm.provider "vmware_workstation" do |ws|
    # Customize the amount of memory on the VM:
    ws.memory = settings["resource"]["memory"]
    ws.cpus = settings["resource"]["cpu"]
  end
  config.vm.hostname = settings["hostname"]
  config.vm.provision "shell", path: "scripts/common.sh"
  config.ssh.forward_agent = true
  config.ssh.config = "../../.ssh/config"
end
