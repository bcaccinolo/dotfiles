# PRO GMAIL
#
# vi: ft=muttrc

# Change the following six lines to match your Gmail account details
set imap_user = "bc@billetto.dk"
set smtp_url = "smtps://bc@billetto.dk@@smtp.gmail.com:465/"
set from = "bc@billetto.dk"

source ~/.mutt/account.gmail.pwd

# Basic config, you can leave this as is
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set imap_check_subscribed
set hostname = gmail.com
set mail_check = 120
set timeout = 300
set imap_keepalive = 300
set postponed = "+[GMail]/Drafts"
set record = "+[GMail]/Sent Mail"
unset trash
# set trash = "+[Gmail]/Bin"
set header_cache=~/.mutt/cache/pro_headers
set message_cachedir=~/.mutt/cache/pro_bodies
set certificate_file=~/.mutt/certificates
set move = no
set include

# easy_install -U goobook
unset query_command
set query_command="goobook -c ~/.goobookrc.pro query '%s'"
# Reload goobook db
macro index,pager gr "!goobook -c ~/.goobookrc.pro reload\n" "Goobook reload"
