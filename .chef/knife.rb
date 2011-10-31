current_dir = File.dirname(__FILE__)

log_level                :debug
log_location             STDOUT
node_name                'client'
client_key               'client.pem'
validation_client_name   'chef-validator'
validation_client_name   "chef-validator"
validation_key           "#{current_dir}/../.chef/validation.pem"
chef_server_url          'chef-server'
ssl_verify_mode          :verify_none
cache_type               'BasicFile'
cache_options( :path => "#{current_dir}/../.chef/checksum" )

cookbook_path ["#{current_dir}/../cookbooks"]

# Rackspace:
knife[:rackspace_api_username] = ""
knife[:rackspace_api_key] = ""


# EC2:
knife[:aws_access_key_id]     = "Your AWS Access Key"
knife[:aws_secret_access_key] = "Your AWS Secret Access Key"

# Eucalyptus
knife[:euca_access_key_id]     = "Your Eucalyptus Access Key"
knife[:euca_secret_access_key] = "Your Eucalyptus Secret Access Key"
knife[:euca_api_endpoint]      = "http://ecc.eucalyptus.com:8773/services/Eucalyptus"
