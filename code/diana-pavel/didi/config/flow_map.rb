class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_hello
    state :select_type
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end

end
