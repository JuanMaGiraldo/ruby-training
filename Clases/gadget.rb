require_relative 'app_store'

class Gadget
  attr_writer :password
  attr_accessor :username, :apps
  @@count = 0
  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
    @@count += 1
  end

  def self.count
    @@count
  end

  def to_s
    "Gadget #{@production_number} hast the username #{@username}."
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| install_app.name == name }
    apps.delete(app) if app
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  private

  def generate_production_number
    start_digits = rand(1000.99999)
    end_digits = rand(10000.99999)

    alphabet = ("A".."Z").to_a
    middle_digits = "2017"

    5.times {middle_digits << alphabet.sample}
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end


  protected

  def production_number
    @production_number
  end
end

phone = Gadget.new("juan","123")
phone.install_app(:Chat)
phone.install_app(:Twitter)

p phone.apps
