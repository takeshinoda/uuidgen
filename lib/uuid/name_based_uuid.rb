require 'uuid/name_space'

class NameBasedUUID < UUID

  def initialize(name, name_space=NameSpaceDNS)
    concated = name_space.to_hexa_string + name
    decimal_hash = hash(concated).to_i(16)
    @decimal = set_version(set_reserved(decimal_hash))
  end

  protected

  def hash(target)
    raise 'not implemented'
  end
end
