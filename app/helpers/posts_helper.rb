module PostsHelper
  def show_post_list(posts)
    out = ''
    posts.each do |post|
      out += '<li>'
      out += if user_signed_in?
               "<strong>#{post.user.name}</strong><br><small>@#{post.user.username}</small><br>"
             else
               '<strong>Anonymous</strong><br>'
             end
      out += "<p>#{post.body}</p></li><br>"
    end
    out.html_safe
  end

  def show_validation_errors(post)
    out = ''
    if post.errors.any?
      out += "<div id=\"error_explanation\"><h2>#{pluralize(@post.errors.count,
                                                            'error')} prohibited this post from being saved:</h2><ul>"

      post.errors.each do |error|
        out += "<li>#{error.full_message}</li>"
      end
      out += '</ul></div>'
    end
    out.html_safe
  end
end
