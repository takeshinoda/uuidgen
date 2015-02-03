require 'digest/sha1'

class UUID5 < NameBasedUUID

  def version
    5
  end

  def hash(target)
    Digest::SHA1.hexdigest(target)[0, 32]
  end
end
