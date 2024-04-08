defmodule IphoneUpdateTest do
  use ExUnit.Case

  test "Iphone version 8 is not updated" do
    assert IphoneUpdate.handle_input("8") == "Não atualiza" 
  end 
  
  test "Iphone version x is not updated" do
    assert IphoneUpdate.handle_input("X") == "Não atualiza" 
  end

  test "Iphone version 10 is not updated" do
    assert IphoneUpdate.handle_input("X") == "Não atualiza" 
  end

  test "Iphone version less thand 8 is not updated" do
    assert IphoneUpdate.handle_input("7") == "Não atualiza" 
  end

  test "Iphone version bigger than 8 and different 10 is updated" do
    assert IphoneUpdate.handle_input("12") == "Atualiza" 
  end
end
