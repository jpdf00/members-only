module PostsHelper
  def show_post_list
    render inline: '
    <% @posts.each do |post| %>
      <li>
        <% if user_signed_in? %>
          <strong><%= post.user.name %></strong><br>
          <small>@<%= post.user.username %></small><br>
        <% else %>
          <strong>Anonymous</strong><br>
        <% end %>
        <p><%= post.body %></p>
      </li><br>
    <% end %>'
  end

  def error_block
    render inline: '
    <% if @post.errors.any? %>
      <div id="error_explanation">
        <h2><%= pluralize(@post.errors.count, "error") %> prohibited this post from being saved:</h2>

        <ul>
          <% @post.errors.each do |error| %>
            <li><%= error.full_message %></li>
          <% end %>
        </ul>
      </div>
    <% end %>'
  end
end
