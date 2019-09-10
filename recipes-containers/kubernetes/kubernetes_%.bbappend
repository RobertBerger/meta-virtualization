inherit useradd

# created with 
# mkpasswd kubernetes
# Sq1x2H9sA4eWM
PASSWORD ?= "Sq1x2H9sA4eWM"
USERADD_PACKAGES = "${PN}"
USERADD_PARAM_${PN} = "--system --create-home \
                       --password ${PASSWORD} \
                       --user-group ${PN}"
