# Autovivification with Ruby

TL;DR

Just do this in Ruby:

```ruby
a = Hash.new { |h, k| h[k] = Hash.new(&h.default_proc) }
```

On Youtube

<a href="http://www.youtube.com/watch?feature=player_embedded&v=Bc7x40qwQN8
" target="_blank"><img src="http://img.youtube.com/vi/Bc7x40qwQN8/0.jpg" 
alt="Autovivification Ruby Youtube video" width="240" height="180" border="10" /></a>


## Autovivification is amazing

- It’s a feature that makes code more readable
- It saves time
- It’s fun and is a bit ‘magic’

## If you don’t use autovivification

- Code could be less readable
- You lose time
- You’ll be sad

## Wait what is it?

It’s a feature that pre-populates data structures. I learned about it with Perl. It is however present in PHP natively, and can be implemented with Ruby, Python, Java, etc.

Example: 

```perl
use Data::Dumper; 
%a = (); 
$a{'index1'}{'index2'} = 'value'; 
print Dumper($a);
```

Result of the run:

```perl
$VAR1 = { 
  'index1' => { 
    'index2' => 'value' 
  } 
};
```

See video:
https://youtu.be/Bc7x40qwQN8
