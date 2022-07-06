class FlatteningArray

  def self.flatten(element)
    return "The input is not an array" if !element.is_a?(Array)
    result = []
    element.each do |el|
      if el.is_a?(Array)
        #using the concat method to merge arrays and then use the recursive method
        result.concat(flatten(el))
      else 
        result << el
      end
    end
    result
  end

end