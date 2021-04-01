require "secrett11tto/version"
require "secrett11tto/railtie"

module Secrett11tto
  module Utils
    ALL_VOCABULARY = ((32..255).collect{|e| e.chr}.join.gsub(/[^[:print:]]/,'').chars) - ['"', "'", '<', '>', '\\', '/']
    CSS_VOCABULARY = ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a + ['_']

    def Utils.tag
      ['i', 'span', 'em', 'small', 'sup'].sample
    end

    def Utils.klass_name(len = 5..15)
      ('A'..'Z').to_a.sample + CSS_VOCABULARY.sample(len.to_a.sample).join
    end

    def Utils.css
      [
        "position: absolute",
        "top: -#{rand(100_000..500_000)}px",
        "left: -#{rand(100_000..500_000)}px",
        # "width: 0",
        # "height: 0",
        # "display: inline"
      ].shuffle.join(";")
    end

    def Utils.css_klass(klass)
      " .#{klass} { #{css} }"
    end
  end

  module StringExt

    def secretify(range = 10..40)
      str, klasses, parts = [], [], []

      copy = self.chars
      while copy.present?
        parts.push copy.slice!(0...(rand(2)+1)).join
      end

      parts.each do |part|
        tag   = Utils.tag
        klass = Utils.klass_name

        str << ["<#{tag} class=#{klass}>" + Utils::ALL_VOCABULARY.sample(range.to_a.sample).join + "</#{tag}>", ERB::Util.h(part)].shuffle.join
        klasses << klass
      end

      [
        "<style>",
          klasses.collect{|e| Utils.css_klass(e)}.join,
        "</style>",
        str.join,
      ].join.html_safe
    end

  end
end

String.send :include, Secrett11tto::StringExt
