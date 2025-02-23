defmodule FizzbuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, :fizz, 4, :fizz, 7, :fizz, :buzz, :fizzbuzz, 23, :fizzbuzz, :buzz, 43]}
      assert Fizzbuzz.build("numbers.txt") == expected_response
    end

    test "when an invalid file is provided, returns an error" do
      expected_response = {:error, "Error reading the file: enoent"}
      assert Fizzbuzz.build("invalid.txt") == expected_response
    end
  end
end
