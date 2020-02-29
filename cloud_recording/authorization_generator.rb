require 'Base64'

class AuthorizationGenerator

  # 声网官方文档：https://docs.agora.io/cn/faq/restful_authentication
  # customer_id：声网客户ID
  # customer_certificate：声网客户证书
  def generate_authorization(customer_id, customer_certificate)
    plain_credentials = "#{customer_id}:#{customer_certificate}"
    base64_credentials = Base64.strict_encode64(plain_credentials)
    return base64_credentials
  end

end