HOST=ENV['HOST'] || '127.0.0.1'  # the host to test, either IP address or domain name

# The following is only used to test the correctness of responses
BOX_NAME="int"            # the hostname of the server running miab
DOMAIN_NAME="u32.net"     # the domain being served

MACHINE_NAME="#{BOX_NAME}.#{DOMAIN_NAME}"
