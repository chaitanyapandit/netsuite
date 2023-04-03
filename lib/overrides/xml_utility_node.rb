Nori::XMLUtilityNode.class_eval do
  alias_method :overriden_initialize, :initialize

  def initialize(options, name, attributes = {})
    overriden_initialize options, name, attributes

    # Treat NetSuite type file as a string
    @type = 'string' if @type == 'file'
  end
end
