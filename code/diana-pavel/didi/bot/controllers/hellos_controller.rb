class HellosController < BotController

  def say_hello
    send_replies
    update_session_to state: 'ask_type'
  end

  def ask_type
    send_replies
    update_session_to state: 'get_type'
  end

  def get_type
    if current_message.message == 'Mentor'
      step_to flow: 'onboarding' state: "mentor_onboarding"
    else current_message.message == 'Mentee'
      step_to flow: 'onboarding' state: "mentee_onboarding"
    elsif current_message.message == 'Both'
      step_to flow: 'onboarding' state: "both_onboarding"
    end
  end
end
