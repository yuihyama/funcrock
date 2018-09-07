require './lib/mean'

# variance:
def var(n_ary, degree_of_freedom = 0)
  numerator = n_ary.map { |n| (n - mean(n_ary))**2 }.sum
  numerator / (n_ary.size - degree_of_freedom)
end
