module UUIDGen
  class NameSpace < UUID
    def initialize(target)
      @decimal = target.gsub('-', '').hex
    end

    def to_hexa_string
      to_hex.chars.each_slice(2).map do |first, second|
        (first + second).hex.chr
      end.join
    end
  end

  NameSpaceDNS  = NameSpace.new('6ba7b810-9dad-11d1-80b4-00c04fd430c8')
  NameSpaceURL  = NameSpace.new('6ba7b811-9dad-11d1-80b4-00c04fd430c8')
  NameSpaceOID  = NameSpace.new('6ba7b812-9dad-11d1-80b4-00c04fd430c8')
  NameSpaceX500 = NameSpace.new('6ba7b814-9dad-11d1-80b4-00c04fd430c8')
end
