require 'digest/sha1'

module UUIDGen
  class UUID5 < NameBasedUUID

    def version
      5
    end

    def uuid_hash(target)
      Digest::SHA1.hexdigest(target)[0, 32]
    end
  end
end

