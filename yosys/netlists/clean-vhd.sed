# The only thing left is to paste the components from components.vhd
# Run using sed -f clean-vhd.sed < input > output
s/user_defined.user_package.//
s/LIBRARY ASC.*//
s/USE ASC.*//
