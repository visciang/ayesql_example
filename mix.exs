defmodule Example.MixProject do
  use Mix.Project

  def project do
    [
      app: :example,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Example, []}
    ]
  end

  def deps do
    [
      {:ayesql, "~> 0.6"},
      {:postgrex, "~> 0.15"},
      {:jason, "~> 1.0"}
    ]
  end
end
