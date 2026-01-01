defmodule MyIEx do
  require Logger

  def hello(to) do
    message = "\n #{put_color(:green, [:bright])} Hello, #{to}! \n #{put_color(:reset)}"

    IO.puts(message)
  end

  # Make a process, struct or something like to save the colors used
  defp put_color(color, opts \\ [])
  defp put_color(:reset, _opts), do: "\e[0m"
  defp put_color(:green, opts) do
    if :bright in opts do
        "\e[38;5;82m" # if i take away the 38 foreground, like blinking.
    end
    # TO DO: Change the logic to construct the color.
    # I will use green when I know exactly what green makes sense here
  end

  defp put_color(_, _) do
    Logger.warning("That colors does not exist yet")
    Logger.info("The :reset option has been passed")

    put_color(:reset)
  end

  defp default, do: IEx.configure(colors: [enabled: true])

  # Save as a reference
  defp dave_thomas do
    IEx.configure(
      colors: [
        enabled: true,
        eval_result: [ :cyan, :bright ],
        eval_error:  [ :light_magenta ],
      ],
      default_prompt: [
        "\r\e[38;5;220m",         # a pale gold
        "%prefix",                # IEx context
        "\e[38;5;112m(%counter)", # forest green expression count
        "\e[38;5;220m>",          # gold ">"
        "\e[0m",                  # and reset to default color
      ]
      |> IO.chardata_to_string
    )
  end

  # luiz_felipe/0

  # shuffle_the_colors/x shuffle_configs/x

  defp select(:default), do: default()
  defp select(:dave_thomas), do: dave_thomas()

  defp select(:luiz_felipe) do
    select(:default)

    Logger.error("NOT YET :)")
    Logger.info("The :reset option has been passed")
  end

  defp select(_) do
    Logger.warning("We only have default, dave_thomas and luiz_felipe configs")

    # TO DO: Try stop it if this option is selected.
    # - open the MyIEx file just to take a look. it will not be an option.

    # then, take a look to create a new flag in IEx command.
  end

  def run(config) when is_atom(config) do
    select(config)
  end
end

# TO DO: Make the command iex run but with my iex file.
# Like iex -my_flag.

configs = {:default, :dave_thomas, :luiz_felipe}

index = 2

elem(configs, index)
|> MyIEx.run()

MyIEx.hello("World")
