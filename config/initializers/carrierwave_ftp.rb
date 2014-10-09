CarrierWave.configure do |config|
  config.ftp_host = "ftp.girlzinweb.com"
  config.ftp_port = 21
  config.ftp_user = "girlzinw-exp"
  config.ftp_passwd = "p5m43BpK"
  config.ftp_folder = "/www/_EXPERTES/uploads"
  config.ftp_url = "http://girlzinweb.com/_EXPERTES/uploads"
  config.ftp_passive = false # false by default
end
