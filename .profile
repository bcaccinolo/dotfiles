#
# Your previous .profile 
# echo "in profile"

# MacPorts paths 
PATH=/opt/local/bin:/opt/local/sbin:$PATH
# HomeBrew paths
PATH=/usr/local/bin:$PATH
export PATH
# export PATH="/usr/local/bin:/usr/local/apache2/bin:/usr/local/mysql/bin:/usr/local/php4/bin:/bin:/sbin:/usr/bin:/usr/sbin"
# export PATH="/opt/local/bin:/usr/local/apache2/bin/:/usr/local/bin:/usr/local/mysql/bin:/usr/local/php4/bin:/bin:/sbin:/usr/bin:/usr/sbin"
#PATH="/opt/local/apache2/bin:/usr/local/bin:/usr/local/mysql/bin:/bin:/sbin:/usr/bin:/usr/sbin"
# PATH="/usr/local/bin:/usr/local/apache2/bin:/usr/local/mysql/bin:/usr/local/php4/bin:/bin:/sbin:/usr/bin:/usr/sbin"

# RVM loading
[[ -s "/Users/benoit/.rvm/scripts/rvm" ]] && source "/Users/benoit/.rvm/scripts/rvm"  # This loads RVM into a shell session.
rvm use ruby-1.9.2-p290 1> /dev/null

