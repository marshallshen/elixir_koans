defmodule ElixirKoans.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixir_koans,
      version: "0.0.1",
      dynamos: [ElixirKoans.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/elixir_koans/ebin",
      deps: deps()]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { ElixirKoans, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "dynamo/dynamo" } ]
  end
end
