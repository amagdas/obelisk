ExUnit.start()

defmodule TestHelper do
  def cleanup do
    Obelisk.Config.reload()
    File.rm_rf("./themes")
    File.rm_rf("./posts")
    File.rm_rf("./drafts")
    File.rm_rf("./pages")
    File.rm("./site.yml")
    File.rm_rf("./build")
  end

  def datepart do
    Chronos.today() |> Chronos.Formatter.strftime("%Y-%0m-%0d")
  end
end
