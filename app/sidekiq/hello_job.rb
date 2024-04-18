class HelloJob
  include Sidekiq::Job

  def perform(*_args)
    puts "Hello World"
  end
end
