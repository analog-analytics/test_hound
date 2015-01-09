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

  def check_collection_methods
    array = [:a, :b, :c]

    #bad
    array.collect {|i| i }

    #good
    array.map {|i| i }

    #bad
    array.collect! {|i| i }

    #good
    array.map! {|i| i }

    #bad
    array.reduce {|i| i }

    #good
    array.inject {|i| i }

    #bad
    array.detect {|i| i }

    #good
    array.find {|i| i }

    #bad
    array.find_all {|i| i }

    #good
    array.select {|i| i }

    # bad
    array.reverse.each {|item| item }

    # good
    array.reverse_each {|item| item }
  end
end
