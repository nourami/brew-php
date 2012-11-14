require 'formula'

class GearmanPhp < Formula
  homepage 'http://pecl.php.net/'
  url 'http://pecl.php.net/get/gearman-1.1.0.tgz'
  md5 '9a39176b9be649ffa29875f5d4af6990'
  version '1.1.0'
  
  depends_on 'gearman'

  def install
    Dir.chdir "gearman-#{version}" do
      ENV.universal_binary unless Hardware.is_64_bit?
      system "phpize"
      system "./configure"
      system "make"
      prefix.install 'modules/gearman.so'
    end
  end

  def caveats
      <<-EOS
To use this software:
 * Add the following line to php.ini:
      [gearman]
      extension="#{prefix}/gearman.so"
 * Restart your webserver.
 * Write a PHP page that calls "phpinfo();"
  * If you see it, you have been successful!
      EOS
  end
end
  