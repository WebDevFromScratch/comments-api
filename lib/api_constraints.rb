class ApiConstraints
  def initialize
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.comments.v#{@version}+json")
  end
end
