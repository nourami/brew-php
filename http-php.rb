require 'formula'

class HttpPhp < Formula
  homepage 'http://pecl.php.net/'
  url 'http://pecl.php.net/get/pecl_http-1.7.3.tgz'
  md5 '57599ad333be98ac8558740cc383f46b'
  version '1.7.3'

  def install
    Dir.chdir "pecl_http-#{version}" do
      ENV.universal_binary unless Hardware.is_64_bit?
      system "phpize"
      system "./configure"
      system "make"
      prefix.install 'modules/http.so'
    end
  end

  def caveats
      <<-EOS
To use this software:
 * Add the following line to php.ini:
      [http]
      extension="#{prefix}/http.so"
 * Restart your webserver.
 * Write a PHP page that calls "phpinfo();"
  * If you see it, you have been successful!
      EOS
  end
end
  