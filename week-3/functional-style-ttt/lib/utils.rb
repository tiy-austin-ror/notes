module Utils
  def self.is_subset(arr1, arr2)
    arr1.length <= arr2.length &&
    arr1.all? do |elem|
      arr2.include?(arr1)
    end
  end

  def self.zipmap(arr1, arr2)
    Hash[arr1.zip(arr2)]
  end
end
