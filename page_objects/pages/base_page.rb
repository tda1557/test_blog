class BasePage

  URL = $config['enviroment']['server_url']

  def open
    $browser.goto ($config['enviroment']['server_url'])
  end

  def click_link(link_name)
    $browser.link(:text, link_name).click
  end

  def is_message_exist? mess
    if !$browser.text.include? mess
      raise "Failed to get #{mess}"
    end
  end

  def press_button(text)
    $browser.button(:text => text).click
  end

  #clicks on button if it's not link
  def click_all(text)
    begin
      self.click_link text
    rescue
      self.press_button text
    end
  end

  private



end