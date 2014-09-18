class Door
   def initialize(gpio)
      @pin = PiPiper::Pin.new(pin: gpio, direction: :out)
   end

   def open
      @pin.on
      sleep 1
      @pin.off
   end
end
