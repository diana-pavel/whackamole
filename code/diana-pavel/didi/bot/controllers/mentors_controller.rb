class MentorsController < BotController

  def ask_name
    send_replies
    update_session_to state: 'get_name'
  end

  def get_name
    update_session_to state: 'ask_email'
  end

  def ask_email
    send_replies
    update_session_to state: 'get_email'
  end

  def get_email
    update_session_to state: 'ask_title'
  end

  def ask_title
    send_replies
    update_session_to state: 'get_title'
  end

  def get_title
    update_session_to state: 'ask_social'
  end

  def ask_social
    send_replies
    update_session_to state: 'get_social'
  end

  def get_social
    update_session_to state: 'ask_help'
  end

  def ask_help
    send_replies
    update_session_to state: 'get_help'
  end

  def get_help
    update_session_to state: 'ask_hours'
  end

  def ask_hours
    send_replies
    update_session_to state: 'get_hours'
  end

  def get_hours
    update_session_to state: 'ask_content'
  end

  def ask_content
    send_replies
    update_session_to state: 'get_content'
  end

  def get_content
    update_session_to state: 'ask_mentor'
  end

  def ask_mentor
    send_replies
    update_session_to state: 'get_mentor'
  end

  def get_mentor
    update_session_to state: 'ask_help_with'
  end

  def ask_help_with
    send_replies
    update_session_to state: 'get_help_with'
  end

  def get_help_with
    update_session_to state: 'ask_comments'
  end

  def ask_comments
    send_replies
    update_session_to state: 'get_comments'
  end

  def get_comments
    update_session_to flow: 'goodbye' state: 'say_goodbye'
  end
end


