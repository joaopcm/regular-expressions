# find all files ignoring node_modules folder
find . -name *.test.js
find . -name *.test.js -not -path '*node_modules**'

npm i -g ipt
find . -name *.test.js -not -path '*node_modules**' | ipt

# edit selected javascript files
CONTENT="'use strict';"
find . -name *.js -not -path '*node_modules**' \
| ipt -o \
| xargs -I '{file}' sed -i "" -e '1s/^/\'$CONTENT'\
/g' {file}

# edit all javascript files
CONTENT="'use strict';"
find . -name *.js -not -path '*node_modules**' \
| xargs -I '{file}' sed -i "" -e '1s/^/\'$CONTENT'\
/g' {file}