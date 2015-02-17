class BaseSeeder
  def self.seed!
    raise NotImplementedError, 'inheriting classes must implement this method.'
  end
end

Dir[File.dirname(__FILE__) + '/seeders/*.rb'].each {|file| require file }
