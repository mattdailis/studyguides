# If the given file contains front-matter, move it to the front of the file.

import sys
if len(sys.argv) != 2:
    print "Usage: python front_matter.py filename.md"
    exit()
    
filename = sys.argv[1]

if len(filename) <= 3 or filename[-3:] != ".md":
    print "Expected file with extension '.md'"
    exit()

with open(filename, "r") as f:
    # Read given file
    contents = f.read()

import re
m = re.search("\-\-\-.*\-\-\-", contents, re.DOTALL)

if m == None:
    print "Did not find front matter in " + filename
    exit()
    
new_contents = contents[m.start():m.end()] \
               + "\n" \
               + contents[:m.start()] \
               + contents[m.end():]

with open(filename, "w") as f:
    f.write(new_contents)
