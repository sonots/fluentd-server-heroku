require 'dotenv'
Dotenv.load
require 'fluentd_server'
require 'fluentd_server/environment'
require 'fluentd_server/model'

Post.create(:name => 'worker', :body => <<EOF
<source>
  type forward
  port <%= port %>
</source>

<match **>
  type stdout
</match>
EOF
)
