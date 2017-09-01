class CommandWorker
    include Sidekiq::Worker
    sidekiq_options :retry => false

    def perform(params)
        message = Message.new

        
        
    end

end