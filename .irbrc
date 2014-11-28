
require 'irb/completion'

require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 200

require 'pp'
IRB.conf[:AUTO_INDENT]=true

# require 'factory_girl' ; include FactoryGirl::Syntax::Methods

###############################################################################
# requires and stuff go here
###############################################################################
def load_irbrc(path)
  return if (path == ENV["HOME"]) || (path == '/')

  load_irbrc(File.dirname path)

  irbrc = File.join(path, ".irbrc")

  load irbrc if File.exists?(irbrc)
end

# other ruby code in your .irbrc
load_irbrc Dir.pwd # probably should stay at the bottom

