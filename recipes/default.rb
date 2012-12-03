
#  -------    CHEF-AUTOSHUTDOWN --------

# LICENSETEXT
# 
#   Copyright (C) 2012 : GreenSocs Ltd
#       http://www.greensocs.com/ , email: info@greensocs.com
# 
# The contents of this file are subject to the licensing terms specified
# in the file LICENSE. Please consult this file for restrictions and
# limitations that may apply.
# 
# ENDLICENSETEXT


cookbook_file /etc/cron.d/autoshutdown do
  source "autoshutdown"
end

cookbook_file /usr/local/bin/autoshutdown.sh do
  source "autoshutdown.sh"
end
