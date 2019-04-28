# The only thing left is to paste the components from components.vhd
# Run using sed -f clean-vhd.sed < input > output
/USE user_defined.user_package.ALL;/d
/LIBRARY user_defined;/d
/LIBRARY ASC;/d
/USE ASC.*/d
s/user_defined.user_package.//
