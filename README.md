# funcrock


funcrock: Mathematical "functions" for Ruby.


This repository is under development.


But:


(First of all, clone or download)


```
$ cd funcrock
$ cat funcrock.rb
#!/usr/bin/env ruby

# funcrock examples:

require './lib/add'
require './lib/sub'
require './lib/mul'
require './lib/div'
require './lib/factorial'

# +(1, 2)
# 1 + 2
puts add(1, 2) # => 3

# +(+(+(1, 2), 3), 4)
# (((1 + 2) + 3) + 4)
puts add(add(add(1, 2), 3), 4) # => 10
#
# or
puts add(4, add(3, add(1, 2))) # => 10

# /(*(-(+(10, 20), 10), 20), 10)
# (((10 + 20) - 10) * 20) / 10
puts div(mul(sub(add(10, 20), 10), 20), 10) # => 40

# 10!
puts factorial(10) # => 3628800

(1..10).each { |n| puts factorial(n) }
# =>
# 1
# 2
# 6
# 24
# 120
# 720
# 5040
# 40320
# 362880
# 3628800

# More examples?
# See examples directory or test directory :)
```


Run:


```
$ ruby funcrock.rb
```

Output:

```
3
10
10
40
3628800
1
2
6
24
120
720
5040
40320
362880
3628800
```


irb:


```
$ cd funcrock
$ irb
irb(main):001:0> require './lib/add'
=> true
irb(main):002:0> add(add(add(1, 2), 3), 4)
=> 10
irb(main):003:0> require './lib/factorial'
=> true
irb(main):004:0> factorial(10)
=> 3628800
```


Have fun!


## License


MIT License.
