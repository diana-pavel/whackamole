class FlowMap

include Stealth::Flow

  flow :hello do
    state :say_hello
    state :ask_type
    state :get_type, fails_to: :ask_type
  end

  flow :mentor do
    state :ask_name
    state :get_name, fails_to: :ask_name
    state :ask_email
    state :get_email, fails_to: :ask_email
    state :ask_title
    state :get_title, fails_to: :ask_title
    state :ask_company
    state :get_company, fails_to: :ask_company
    state :ask_social
    state :get_social, fails_to: :ask_social
    state :ask_help
    state :get_help, fails_to: :ask_help
    state :ask_hours
    state :get_hours, fails_to: :ask_hours
    state :ask_content
    state :get_content, fails_to: :ask_content
    state :ask_comments
    state :get_comments, fails_to: :ask_comments
  end

  flow :mentee do
    state :ask_name
    state :get_name, fails_to: :ask_name
    state :ask_email
    state :get_email, fails_to: :ask_email
    state :ask_title
    state :get_title, fails_to: :ask_title
    state :ask_social
    state :get_social, fails_to: :ask_social
    state :ask_goal
    state :get_goal, fails_to: :ask_goal
    state :ask_hours
    state :get_hours, fails_to: :ask_hours
    state :ask_comments
    state :get_comments, fails_to: :ask_comment
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end
end
