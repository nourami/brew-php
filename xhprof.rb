require 'formula'

class Xhprof <Formula
  url 'http://pecl.php.net/get/xhprof-0.9.2.tgz'
  homepage 'http://mirror.facebook.net/facebook/xhprof'
  md5 'ae40b153d157e6369a32e2c1a59a61ec'

  def install
    Dir.chdir "xhprof-#{version}/extension" do
      # See https://github.com/mxcl/homebrew/issues/issue/69
      ENV.universal_binary unless Hardware.is_64_bit?
      system "phpize"
      system "./configure"
      system "make"
      prefix.install 'modules/xhprof.so'
    end
  end

  def caveats
      <<-EOS
To use this software:
 * Add the following line to php.ini:
      [xhprof]
      extension="#{prefix}/xhprof.so"
      xhprof.output_dir = /tmp/xhprof      
 * Restart your webserver.
 * Write a PHP page that calls "phpinfo();"
 * Load it in a browser and look for the info on the xhprof module.
 * If you see it, you have been successful!
      EOS
  end
end
