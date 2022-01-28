require 'uri'
require 'net/http'

# cached response body
$res_body = '{"response":{"code":200,"message":"OK","serverTime":""},"signature":"","data":{"languages":[{"languageTag":"en","displayName":"English","displayName_sentenceBeginning":"English","displayName_uiListOrMenu":"English","displayName_standalone":"English"}],"displayLanguage":"en","version":"1.0.0","productName":"CloudHealth"}}'
class LocalesService
    def initialize(product, version, display_lang, cache_expired)
      @product = product
      @version = version
      @display_lang = display_lang
      @cache_expired = cache_expired 
    end
  
    def fetch_locales
        puts "START fetch_locales at: #{Time.now}"
        uri = URI('http://localhost:8091/i18n/api/v2/locale/supportedLanguageList')
        params = { :displayLanguage => @display_lang, :productName => @product, :version => @version }
        uri.query = URI.encode_www_form(params)
        $res_body = Net::HTTP.get_response(uri).body
        sleep(3)
        puts "END fetch_locales at: #{Time.now}"
        $res_body
    end

    def get_locales
      if @cache_expired
        t1 = Thread.new{fetch_locales()}
      end
      $res_body
    end
  end