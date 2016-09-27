# INLINE TEMPLATE

require 'sinatra'
require 'slim'

get '/' do
  slim :index
end

# inline templates always come after the ___END__ declaration
# each template begins with @@
# the "== yield" at line 25 renders teh content from whatever template was requested by the handler (in this case, index)

__END__

@@layout
doctype html
html
  head
    meta charset="utf-8"
    title Just Do It
    link rel="stylesheet" media="screen, projection" href="/styles.css"
    /[if 1t IE 9]
      script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"
  body
    h1 Just Do It
    == yield

@@index
  h2 My Tasks
  u1.tasks
    li Get Milk