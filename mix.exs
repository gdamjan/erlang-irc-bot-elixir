defmodule MyProject.Mixfile do
  use Mix.Project

  def project do
    [ app: :my_project,
      version: "0.0.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  defp deps do
    [
        { :ircbot, github: "gdamjan/erlang-irc-bot", branch: "master"}
    ]
  end
end
