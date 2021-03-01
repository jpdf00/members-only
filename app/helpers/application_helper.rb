module ApplicationHelper
  def index_links
    if user_signed_in?
      render inline: ' <p>
        <%= link_to current_user.name, edit_user_registration_path, class: "button is-info" %>
      </p>
      <p>
        <%= link_to "Log Out", destroy_user_session_path, method: :delete, class:"button is-info" %>
      </p>
      <p>
        <%= link_to "New Post", new_post_path, class: "button is-info is-inverted" %>
      </p>'
    else
      render inline: ' <p>
        <%= link_to "Log In", new_user_session_path, class: "button is-info" %>
      </p>
      <p>
        <%= link_to "Sign Up", new_user_registration_path, class: "button is-info" %>
      </p>'
    end
  end
end
