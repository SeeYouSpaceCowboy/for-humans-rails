class Auth
  ALGORITHM = 'HS256'

  def self.encrypt(hash)
    JWT.encode(hash, secret_key, ALGORITHM)
  end

  def self.decode(payload)
    JWT.decode(payload, secret_key, true, {algorithm: ALGORITHM}).first
  end

  def secret_key
    "bf6e45afb108ca6a817f793a461798d17ff83c64ecf428e50f0634e9227f86617127668da25574fdf30a630047d39dbabf7ffd6f14af825397472dedbf03627c"
  end
end
