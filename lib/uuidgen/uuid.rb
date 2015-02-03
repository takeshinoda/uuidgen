module UUIDGen
  class UUID
    attr_reader :decimal

    def to_hex
      @decimal.to_s(16).rjust(32, '0')
    end

    def to_s
      hex_string = to_hex
      '%s-%s-%s-%s-%s' % [
        hex_string[0, 8],
        hex_string[8, 4],
        hex_string[12, 4],
        hex_string[16, 4],
        hex_string[20, 12]
      ]
    end

    def eql?(other)
      @decimal == other.decimal
    end

    def hash
      @decimal.hash
    end

    protected
    def set_version(decimal)
      decimal & ~(0xf000 << 64) | version << 76
    end

    def set_reserved(decimal)
      decimal & ~(0xc000 << 48) | 0x8000 << 48
    end

    def version
      raise NotImplementedError
    end
  end
end
