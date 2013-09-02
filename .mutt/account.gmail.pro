# PRO GMAIL
#
# vi: ft=muttrc

# Change the following six lines to match your Gmail account details
set imap_user = "bc@billetto.dk"
set smtp_url = "smtp://bc@smtp.gmail.com:587/"
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
set trash = "+[Gmail]/Bin"
set header_cache=~/.mutt/cache/pro_headers
set message_cachedir=~/.mutt/cache/pro_bodies
set certificate_file=~/.mutt/certificates
set move = no
set include


