
module Utils
  module Number
    def to_rmb
      "¥#{"%.2f" % self.to_f}"
    end
  end

  module Time
    def humanize
      self.strftime("%Y-%m-%d %H:%M:%S")
    end
  end
end

Integer.class_eval do
  include Utils::Number
end

BigDecimal.class_eval do
  include Utils::Number
end

Float.class_eval do
  include Utils::Number
end

[Time, DateTime, Date].each do |klass|
  klass.send :include, Utils::Time
end

ActionController::Base.class_eval do
  def success_response(**options)
    render json: {
        code: 200,
        result: 'ok'
    }.merge!(options), status: 200
  end

  def fail_response(**options)
    render json: {
        code: 400,
        result: 'fail'
    }.merge!(options), status: 400
  end
end

def wrap_line(sign = "=")
  p sign * 20
  yield
  p sign * 20
  nil
end

# ActionController::API.class_eval do
#   def success(*options)
#     render json: {
#         code: 200,
#         result: 'ok'
#     }.merge!(options), code: 200
#   end
#
#   def fail(*options)
#     render json: {
#         code: 400,
#         result: 'fail'
#     }.merge!(options), code: 400
#   end
# end
