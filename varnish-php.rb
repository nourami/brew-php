require 'formula'

class VarnishPhp < Formula
  homepage 'http://pecl.php.net/'
  url 'http://pecl.php.net/get/varnish-0.9.2.tgz'
  md5 'aec9a842f758a44c0c3ff1a8092d510b'
  version '0.9.2'
  
  depends_on 'varnish'

  def install
    Dir.chdir "varnish-#{version}" do
      ENV.universal_binary unless Hardware.is_64_bit?
      system "phpize"
      system "./configure"
      system "make"
      prefix.install 'modules/varnish.so'
    end
  end

  def caveats
      <<-EOS
To use this software:
 * Add the following line to php.ini:
      [varnish]
      extension="#{prefix}/varnish.so"
 * Restart your webserver.
 * Write a PHP page that calls "phpinfo();"
  * If you see it, you have been successful!
      EOS
  end
end
  