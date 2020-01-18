module AWB
  class Validator
    def self.within_bounds?(params)
      params[1] &&
      params[2] &&
      (params[1].to_i >= AWB::MIN && params[1].to_i <= AWB::MAX) &&
      (params[2].to_i >= AWB::MIN && params[2].to_i <= AWB::MAX)
    end
  end
end