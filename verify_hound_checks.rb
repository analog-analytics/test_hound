# Dummy class to violate syntax guidelines
class VerifyHoundChecks
  def array_join
    # bad
    str = [:a, :b, :c] * ','
    puts str

    # good
    str = [:a, :b, :c].join(',')

    puts str
  end
end
