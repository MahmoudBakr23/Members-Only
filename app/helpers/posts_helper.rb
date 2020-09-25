module PostsHelper
  def show_post?(post)
    post.post
  end

  def member_check?(post)
    post.member.name if member_signed_in?
  end

  def member_username_check?(post)
    post.member.username if member_signed_in?
  end

  def show_edit?(post)
    link_to 'Edit', edit_post_path(post) if member_signed_in?
  end

  def show_destroy?(post)
    link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' } if member_signed_in?
  end

  def show_show?(post)
    link_to 'Show', post if member_signed_in?
  end
end
