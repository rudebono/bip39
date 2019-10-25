defmodule Bip39.MixProject do
  use Mix.Project

  def project do
    [
      app: :bip39,
      version: "0.1.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  def application do
    [
      extra_applications: [:crypto]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description() do
    "#Bitcoin #BIP39 #Mnemonic #Elixir"
  end

  defp package() do
    [
      name: :bip39,
      files: ~w(lib priv .formatter.exs mix.exs README* LICENSE*),
      maintainers: ["JEONG HAN SEOK"],
      licenses: ["MIT License"],
      links: %{
        "GitHub" => "https://github.com/rudebono/bip39",
        "Docs" => "https://hexdocs.pm/bip39"
      }
    ]
  end
end
