class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_hello
    state :ask_type
    state :get_type, fails_to: :ask_type
  end

  flow :onboarding do
    state :mentor_onboarding #do I need a fails_to here? and if I did, what would it be?
    state :mentee_onboarding
    state :both_onboarding
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end



end
