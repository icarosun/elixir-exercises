defmodule IphoneUpdate do
  @moduledoc """
  Documentation for `IphoneUpdate`.
  """

  @doc """

  ## Examples

      iex> IphoneUpdate.is_updated()
      input: 11
      {:ok, "Atualiza"}

  """

  def is_updated() do
    result = 
      IO.gets("Digite o número da versão do Iphone: ")
      |> handle_input()

    {:ok, result}
  end
  
  defp is_version_valid({:num, version}) when version == 10, do: "Não atualiza"
  defp is_version_valid({:num, version}) when version > 8, do: "Atualiza"
  defp is_version_valid(_), do: "Não atualiza"

  def handle_input(version_iphone) do
    case Integer.parse(version_iphone) do
      {version_integer, _} -> is_version_valid({:num, version_integer})
      _ -> is_version_valid(version_iphone)
    end
  end 
end
