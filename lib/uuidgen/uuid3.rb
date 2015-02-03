require 'digest/sha1'

module UUIDGen
  class UUID3 < NameBasedUUID
    def version
      3
    end

    def uuid_hash(target)
      Digest::MD5.hexdigest(target)[0, 32]
    end
  end
end

