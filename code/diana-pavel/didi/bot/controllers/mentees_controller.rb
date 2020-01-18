class MenteesController < BotController

  def ask_name
    send_replies
    update_session_to state: 'get_name'
  end

  def get_name
    update_session_to state: 'ask_email'
  end

  def ask_email
    send_replies
    update_session_to state: 'get_email' #should I have a fail_to?
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
    update_session_to state: 'ask_goal'
  end

  def ask_goal
    send_replies
    update_session_to state: 'get_goal'
  end

  def get_goal
    update_session_to state: 'ask_hours'
  end

  def ask_hours
    send_replies
    update_session_to state: 'get_hours'
  end

  def get_hours
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
