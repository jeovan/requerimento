class AdsProxyService
  attr_reader :service

  def initialize(class_load)
    @service = connect(class_load)
  end


  def environment_ads
    Rails.env.development? ? 'desenv' : 'prod'
  end


  def connect(class_load)
    Rjb.load('.',['-Dfile.encoding=windows-1252'])
    Rjb.add_jar("#{Rails.root}/lib/ads_proxy/ads-proxy.jar")
    Rjb.import("sitafe.services.#{class_load}")
  end


end