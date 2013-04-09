#
# Cookbook Name:: rightscale
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

rightscale_marker :begin

if "#{node[:rightscale][:security_update]}" == "Enabled"

  log "  Security updates enabled."

else

  log "  Security updates disabled.  Skipping update!"

end

rightscale_marker :end
