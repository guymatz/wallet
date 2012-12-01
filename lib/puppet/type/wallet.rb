Puppet::Type.newtype(:wallet) do

  @doc = "Creats a wallet file to store database credentials.
          See http://docs.oracle.com/cd/B19306_01/network.102/b14266/cnctslsh.htm
          for documentation on Oracle Wallet."

  # Path to wallet files
  newparam(:path, :namevar => true) do
    # empty
  end

  # To be handed off to the provider.  Either create the wallet or delete it
  ensurable do
		newvalue(:present) do
			provider.install
		end
		newvalue(:absent) do
			provider.remove
		end
  end

  newparam(:pwd) do
  end

end
