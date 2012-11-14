require 'formula'

class ImagickPhp < Formula
  homepage 'http://pecl.php.net/'
  url 'http://pecl.php.net/get/imagick-3.0.1.tgz'
  md5 'e2167713316639705202cf9b6cb1fdb1'
  version '3.0.1'
  
  depends_on 'imagemagick'

  def install
    Dir.chdir "imagick-#{version}" do
      ENV.universal_binary unless Hardware.is_64_bit?
      system "phpize"
      system "./configure"
      system "make"
      prefix.install 'modules/imagick.so'
    end
  end

  def caveats
      <<-EOS
To use this software:
 * Add the following line to php.ini:
      [imagick]
      extension="#{prefix}/imagick.so"
 * Restart your webserver.
 * Write a PHP page that calls "phpinfo();"
  * If you see it, you have been successful!
      EOS
  end
end
  