class String
  def titlecase
    result = self.dup

    result[0] = result[0].upcase

    result
  end
end
