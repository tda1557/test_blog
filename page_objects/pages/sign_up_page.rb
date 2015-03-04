class SignUpPage < BasePage


  def field_set(name, value)
    name.downcase!
    common_name="user[#{name}]"
    $browser.text_field(:name, common_name).set(value)
  end
end