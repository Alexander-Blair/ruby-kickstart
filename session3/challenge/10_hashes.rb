# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#[usr,{bin=>[ruby]}] ; [usr,{bin=>[]},]
# create it from scratch :)

def pathify(paths, *args)
  count = 0
  directories = Array.new
  emen = Array.new
  final = Array.new
  ary = recurse(paths, emen, final)
end

def recurse(path, array, final_array, dir='')
  count = final_array.length
  path.each do |key, value|
    if path.is_a? Hash
      array[count] = dir + "/" + key
      recurse(value, array, final_array, array[count])
    end
    if path.is_a? Array
      array[count] ? final_array << ( array[count] + "/" + key ) : final_array << ( dir + "/" + key )
    end
  end
  final_array
end


#pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} }
#pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }
#pathify 'usr' => {'bin' => ['ruby', 'perl'] }
#pathify 'usr' => {'bin' => ['ruby'] }
