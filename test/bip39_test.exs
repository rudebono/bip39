defmodule Bip39Test do
  use ExUnit.Case
  doctest Bip39

  @test_vector [
    %{
      entropy: <<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0>>,
      lang_and_mnemonic: [
        %{
          lang: :chinese_simplified,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 在)s
        },
        %{
          lang: :chinese_traditional,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 在)s
        },
        %{
          lang: :czech,
          mnemonic:
            ~w(abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace agrese)s
        },
        %{
          lang: :english,
          mnemonic:
            ~w(abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon about)s
        },
        %{
          lang: :french,
          mnemonic:
            ~w(abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abeille)s
        },
        %{
          lang: :italian,
          mnemonic: ~w(abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abete)s
        },
        %{
          lang: :japanese,
          mnemonic:
            ~w(あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あおぞら)s
        },
        %{
          lang: :korean,
          mnemonic: ~w(가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가능)s
        },
        %{
          lang: :spanish,
          mnemonic: ~w(ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco abierto)s
        }
      ]
    },
    %{
      entropy: <<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0>>,
      lang_and_mnemonic: [
        %{
          lang: :chinese_simplified,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 的 的 的 地)s
        },
        %{
          lang: :chinese_traditional,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 的 的 的 地)s
        },
        %{
          lang: :czech,
          mnemonic:
            ~w(abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace babka)s
        },
        %{
          lang: :english,
          mnemonic:
            ~w(abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon address)s
        },
        %{
          lang: :french,
          mnemonic:
            ~w(abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser acerbe)s
        },
        %{
          lang: :italian,
          mnemonic:
            ~w(abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco affabile)s
        },
        %{
          lang: :japanese,
          mnemonic:
            ~w(あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あひる)s
        },
        %{
          lang: :korean,
          mnemonic: ~w(가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 갈비)s
        },
        %{
          lang: :spanish,
          mnemonic:
            ~w(ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco actuar)s
        }
      ]
    },
    %{
      entropy: <<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0>>,
      lang_and_mnemonic: [
        %{
          lang: :chinese_simplified,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 动)s
        },
        %{
          lang: :chinese_traditional,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 動)s
        },
        %{
          lang: :czech,
          mnemonic:
            ~w(abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace balonek)s
        },
        %{
          lang: :english,
          mnemonic:
            ~w(abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon agent)s
        },
        %{
          lang: :french,
          mnemonic:
            ~w(abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser adéquat)s
        },
        %{
          lang: :italian,
          mnemonic:
            ~w(abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco agitare)s
        },
        %{
          lang: :japanese,
          mnemonic:
            ~w(あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あらいぐま)s
        },
        %{
          lang: :korean,
          mnemonic: ~w(가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 강도)s
        },
        %{
          lang: :spanish,
          mnemonic:
            ~w(ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco afición)s
        }
      ]
    },
    %{
      entropy:
        <<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0>>,
      lang_and_mnemonic: [
        %{
          lang: :chinese_simplified,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 出)s
        },
        %{
          lang: :chinese_traditional,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 出)s
        },
        %{
          lang: :czech,
          mnemonic:
            ~w(abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace bacil)s
        },
        %{
          lang: :english,
          mnemonic:
            ~w(abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon admit)s
        },
        %{
          lang: :french,
          mnemonic:
            ~w(abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser acheter)s
        },
        %{
          lang: :italian,
          mnemonic:
            ~w(abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco affisso)s
        },
        %{
          lang: :japanese,
          mnemonic:
            ~w(あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あぶる)s
        },
        %{
          lang: :korean,
          mnemonic: ~w(가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 갈증)s
        },
        %{
          lang: :spanish,
          mnemonic:
            ~w(ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco acuerdo)s
        }
      ]
    },
    %{
      entropy:
        <<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0>>,
      lang_and_mnemonic: [
        %{
          lang: :chinese_simplified,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 性)s
        },
        %{
          lang: :chinese_traditional,
          mnemonic: ~w(的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 的 性)s
        },
        %{
          lang: :czech,
          mnemonic:
            ~w(abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace abdikace branka)s
        },
        %{
          lang: :english,
          mnemonic:
            ~w(abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon art)s
        },
        %{
          lang: :french,
          mnemonic:
            ~w(abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser abaisser anaphore)s
        },
        %{
          lang: :italian,
          mnemonic:
            ~w(abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco abaco angelo)s
        },
        %{
          lang: :japanese,
          mnemonic:
            ~w(あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん あいこくしん いってい)s
        },
        %{
          lang: :korean,
          mnemonic: ~w(가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 가격 계단)s
        },
        %{
          lang: :spanish,
          mnemonic:
            ~w(ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ábaco ancla)s
        }
      ]
    }
  ]

  test "Bip39.entropy_to_mnemonic/2" do
    @test_vector
    |> Enum.each(fn %{entropy: entropy, lang_and_mnemonic: lang_and_mnemonic} ->
      lang_and_mnemonic
      |> Enum.each(fn %{lang: lang, mnemonic: mnemonic} ->
        assert Bip39.entropy_to_mnemonic(entropy, Bip39.get_words(lang)) == mnemonic
      end)
    end)
  end

  test "Bip39.mnemonic_to_entropy/2" do
    @test_vector
    |> Enum.each(fn %{entropy: entropy, lang_and_mnemonic: lang_and_mnemonic} ->
      lang_and_mnemonic
      |> Enum.each(fn %{lang: lang, mnemonic: mnemonic} ->
        assert Bip39.mnemonic_to_entropy(mnemonic, Bip39.get_words(lang)) == entropy
      end)
    end)
  end
end
