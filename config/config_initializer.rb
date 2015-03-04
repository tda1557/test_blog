require 'yaml'

def conf
  begin
    config = YAML.load_file("./config/config.yml")
  rescue
    p 'failed to load config'
  end
end