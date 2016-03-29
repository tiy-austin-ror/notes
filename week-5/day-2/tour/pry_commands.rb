Post.new
Post.first
my_first_post = Post.first
my_first_post
my_first_post.id
my_first_post.title
my_first_postedito
my_first_post.editor
my_first_post.editor = "Justin"
Post.first
my_first_post
my_first_post.persisted?
my_first_post.editor_changed?
my_first_post.save
my_new_post = Post.new
my_new_post.title = "Super Cool"
my_new_post.body = "foobar"
my_new_post.editor = "Jake"
my_new_post.save
Post.last
Post.new(title: "Magic Ttitle!", body: "Such cool", editor: "Vivek").save
Post.last
Post.where(editor: "Justin")
Post.where(editor: "J")
Post.where(editor: "%J%")
Post.where("LIKE = '%i%'")
Post.where("editor LIKE = '%i%'")
Post.where("editor LIKE = '%i%'").first
Post.where("editor LIKE '%i%'")
Post.select(:title)
Post.select(:id, :title)
Post.select(:id, :title).where(editor: "Justin")
Post.select(:id, :title).where(" title LIKE '%Cool%'")
Post.select(:id, :title).where(" title LIKE '%Cool%'").order(title: :ASC)
Post.select(:id, :title).where(" title LIKE '%Cool%'").order(title: :DESC)
Post.first
Post.all
Post.limit(10)
Post.limit(10).offset(1)
Post.group(:title)
Post
Post.methods
(Post.methods - Object.methods).count
(Post.methods - Object.methods)
Post.first
Post.second
Post.third
Post.fourth
Post.fourth!
Post.fourth
exit
Post.all
exit
Post.destroy_all
Post.create!
exit
