defmodule Bob do
  def hey(input) do
    cond do
      Regex.match?(~r/\?$/, input) ->
        "Sure."
      String.strip(input) == "" ->
        "Fine. Be that way!"
      String.upcase(input) == input and Regex.match?(~r/[\p{L}]/, input) ->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end
end
