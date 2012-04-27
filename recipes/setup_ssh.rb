#
# Cookbook Name:: rightscale
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

if "#{node[:rightscale][:private_ssh_key]}" != ""

  rightscale_marker :begin

  log "Install private key"

  directory "/root/.ssh" do
    recursive true
  end
  template "/root/.ssh/id_rsa" do
    source "id_rsa.erb"
    mode 0600
  end
  
  rightscale_marker :end
  
end
