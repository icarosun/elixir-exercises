defmodule BuscaLinear do
  @moduledoc """
  Documentation for `BuscaLinear`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> BuscaLinear.hello()
      :world

  """
  def search([], _key), do: false
  def search([head | _tail], key) when head == key, do: true
  def search([_head | tail], key), do: search(tail, key)
end
