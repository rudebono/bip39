defmodule Bip39 do
  def entropy_to_mnemonic(entropy, words) do
    checksum_length = (bit_size(entropy) / 32) |> trunc()
    <<checksum::size(checksum_length), _::bitstring>> = :crypto.hash(:sha256, entropy)
    entropy_with_checksum = <<entropy::bitstring, <<checksum::size(checksum_length)>>::bitstring>>
    indexes = for <<index::11 <- entropy_with_checksum>>, do: index
    mnemonic = Enum.map(indexes, fn index -> Enum.at(words, index) end)
    mnemonic
  end

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

  def get_words(lang) do
    "priv/#{Atom.to_string(lang)}.txt"
    |> File.stream!()
    |> Enum.map(&String.trim/1)
  end
end
