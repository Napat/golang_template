
# Plase run this script as source or the shorthand .
# `source /go/script/dep_fix.sh` or `source /go/script/dep_fix.sh`

# To use golang/dep we need to disable lock 
# because there are issues about Lock mechanism in many machines & containers
# https://github.com/golang/dep/issues/947#issuecomment-333260915
export DEPNOLOCK=1
