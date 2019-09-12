content = "what is up, doc?"
header = "blob #{content.length}\0"
store = header + content
require 'digest/sha1'
sha1 = Digest::SHA1.hexdigest(store)
puts sha1