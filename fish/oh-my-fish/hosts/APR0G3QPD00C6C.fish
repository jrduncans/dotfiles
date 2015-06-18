set -x -g AWS_DEFAULT_PROFILE plus-test-readonly
set -x -g SQUID_TOOLKIT_USE_SHELL_USER true
set -x -g SQUID_TOOLKIT_DISABLE_SAVE_CREDENTIALS true

balias get-creds-plus-test-readonly "get_creds.py --account plus-test --email stephen.duncan@nike.com --role readonly"
balias get-creds-plus-test-poweruser "get_creds.py --account plus-test --email stephen.duncan@nike.com --role poweruser"
balias get-creds-plus-readonly "get_creds.py --account plus --email stephen.duncan@nike.com --role readonly"
