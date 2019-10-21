defmodule Bip39 do
  @moduledoc """
  #Bitcoin #BIP39 #Mnemonic #Elixir
  """

  @doc """
  Convert entropy to mnemonic.

  ##### Parameter
      bit_size(entropy) in [128, 160, 192, 224, 256]
      length(words) == 2048

  ##### Example

      iex> Bip39.entropy_to_mnemonic(<<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0>>, Bip39.get_words(:english))
      ["abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "about"]
  """
  @spec entropy_to_mnemonic(binary(), list(String.t())) :: list(String.t())
  def entropy_to_mnemonic(entropy, words) do
    checksum_length = (bit_size(entropy) / 32) |> trunc()
    <<checksum::size(checksum_length), _::bitstring>> = :crypto.hash(:sha256, entropy)
    entropy_with_checksum = <<entropy::bitstring, <<checksum::size(checksum_length)>>::bitstring>>
    indexes = for <<index::11 <- entropy_with_checksum>>, do: index
    mnemonic = Enum.map(indexes, fn index -> Enum.at(words, index) end)
    mnemonic
  end

  @doc """
  Convert mnemonic to entropy.

  ##### Parameter
      length(mnemonic) in [12, 15, 18, 21, 24]
      length(words) == 2048

  ##### Example

      iex> Bip39.mnemonic_to_entropy(["abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "abandon", "about"], Bip39.get_words(:english))
      <<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0>>
  """
  @spec mnemonic_to_entropy(list(String.t()), list(String.t())) :: binary()
  def mnemonic_to_entropy(mnemonic, words) do
    checksum_length = (length(mnemonic) / 3) |> trunc()
    entropy_length = length(mnemonic) * 11 - checksum_length
    indexes = Enum.map(mnemonic, fn m_word -> Enum.find_index(words, &(&1 == m_word)) end)

    <<entropy::size(entropy_length), _checksum::size(checksum_length)>> =
      Enum.reduce(indexes, <<>>, fn index, bits ->
        <<bits::bitstring, <<index::11>>::bitstring>>
      end)

    <<entropy::size(entropy_length)>>
  end

  @doc """
  Get word list.

  ##### Parameter
      lang in [:chinese_simplified, :chinese_traditional, :czech, :english, :french, :italian, :japanese, :korean, :spanish]

  ##### Example

      iex> Bip39.get_words(:english)
      ["abandon", "ability", "able", "about", "above", "absent", "absorb", ...]
  """
  @spec get_words(atom()) :: list(String.t())
  def get_words(lang) do
    "priv/#{Atom.to_string(lang)}.txt"
    |> File.stream!()
    |> Enum.map(&String.trim/1)
  end
end
