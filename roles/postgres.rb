name "postgres_attr"
description "postgres_attr"
default_attributes(
   :postgresl => {
        :password => {
            :postgres => "postgres"
            }
        },
   :config => {
        :listen_addresses => "*",
        :port => 5432,
        :ssl => "false"
        },
   :pg_hba => [ { :comment => "# Allow remote connections",
                   :type => "host",
                   :db  => "all",
                   :user => "all",
                   :addr => "0.0.0.0/0",
                   :method => "md5" 
                }
              ]
)
