require './lib/var'

# standard deviation:
def std(n_ary, degree_of_freedom = 0)
  Math.sqrt(var(n_ary, degree_of_freedom))
end
