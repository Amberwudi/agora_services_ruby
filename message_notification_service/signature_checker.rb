require 'OpenSSL'

class SignatureChecker

  # 声网官方文档：https://docs-preview.agoralab.co/cn/Agora%20Platform/ncs#signature
  # Rails获取signature和request_body方法如下：
  # signature = request.headers["Agora-Signature"]
  # request_body = request.raw_post
  # 测试数据如下：
  # signature = '033c62f40f687675f17f0f41f91a40c71c0f134c'
  # request_body = '{"eventMs":1560408533119,"eventType":10,"noticeId":"4eb720f0-8da7-11e9-a43e-53f411c2761f","notifyMs":1560408533119,"payload":{"a":"1","b":2},"productId":1}'
  def check_signature(signature, request_body)
    secret = 'secret' #申请开通声网消息通知服务时，由其技术支持提供
    return signature == OpenSSL::HMAC.hexdigest('sha1', secret, request_body)
  end
end