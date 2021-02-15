Jekyll::Hooks.register :posts, :pre_render do |post|
    post.data['date_modified'] = File.mtime(post.path)
end
