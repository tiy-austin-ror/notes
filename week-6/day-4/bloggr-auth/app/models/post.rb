class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :editors
  has_many :collaborators, through: :editors, source: :user

  validates :title, presence: true


  def author
    user
  end

  def author_name
    user.name
  end

  def published?
    self.published == true
  end

  def next
    post = Post.where("id > #{self.id}").limit(1).first
    if post.nil?
      Post.first.id
    else
      post.id
    end
  end

  def prev
    post = Post.where("id < #{self.id}").limit(1).order("id DESC").first
    if post.nil?
      Post.last.id
    else
      post.id
    end
  end
end
