content = "what is up, doc?"
header = "blob #{content.length}\0"
store = header + content 
require 'digest/sha1'
sha1 = Digest::SHA1.hexdigest(store)
require 'zlib'
zlib_content = Zlib::Deflate.deflate(store)
path = '.git/objects/' + sha1[0,2] + '/' + sha1[2,38]
require 'fileutils'
FileUtils.mkdir_p(File.dirname(path))
File.open(path, 'w') { |f| f.write zlib_content }