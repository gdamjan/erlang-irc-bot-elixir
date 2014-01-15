defmodule MyEventHandler do
  use GenEvent.Behaviour

  # Callbacks

  def init(_) do
    { :ok, [] }
  end

  def handle_event(msg, _) do
    case msg do
        {:in, ircbot, [_sender, _name, "PRIVMSG", channel, "!тест"]} ->
            ircbot.privmsg(channel, "примено")
        _  -> :ok
    end
    { :ok, [] }
  end

end
