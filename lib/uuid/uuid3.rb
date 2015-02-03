require 'digest/sha1'

class UUID3 < NameBasedUUID

  def version
    3
  end

  def hash(target)
    Digest::MD5.hexdigest(target)[0, 32]
  end
end
