1.  rails generate scaffold page_post title:string body:text
    rails db:migrate
2. app/models/page_post.rb
  validates :title, presence: true
  validates :body, presence: true
  