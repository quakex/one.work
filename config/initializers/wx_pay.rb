WxPay.appid = Rails.application.credentials.dig(:wxpay, :appid)
WxPay.key = Rails.application.credentials.dig(:wxpay, :key)
WxPay.mch_id = Rails.application.credentials.dig(:wxpay, :mch_id)
WxPay.extra_rest_client_options = {
  timeout: 2,
  open_timeout: 3
}

filepath = File.expand_path('../certs/apiclient_cert.p12', __dir__)
if File.exist?(filepath) && WxPay.mch_id
  WxPay.set_apiclient_by_pkcs12(File.read(filepath), WxPay.mch_id)
end

