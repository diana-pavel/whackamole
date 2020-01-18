class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_hello
    state :ask_type
    state :get_type, fails_to: :ask_type
  end

  #do I need fails_to here? and if I did, what would it be?

  flow :mentor do
    state :mentor_onboarding
  end

  flow :mentee do
    state :mentee_onboarding
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end



end
