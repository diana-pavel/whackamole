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
    if current_message.message == 'Mentor'   #should this be an update_session_to rather than step_to?
      step_to flow: 'mentor' state: "mentor_onboarding"
    else current_message.message == 'Mentee'
      step_to flow: 'mentee' state: "mentee_onboarding"
    end
  end
end
