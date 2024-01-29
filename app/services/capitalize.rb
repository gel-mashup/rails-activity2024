class Capitalize
  def initialize(string)
    @string = string
  end

  def call
    string.split(" ").map(&:capitalize).join(" ")
  end

  private
    attr_reader :string
end