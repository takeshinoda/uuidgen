module UUIDGen
  class NameBasedUUID < UUID

    def initialize(name, name_space=NameSpaceDNS)
      concated = name_space.to_hexa_string + name
      decimal_hash = uuid_hash(concated).to_i(16)
      @decimal = set_version(set_reserved(decimal_hash))
    end

    protected
    def uuid_hash(target)
      raise NotImplementedError
    end
  end
end

