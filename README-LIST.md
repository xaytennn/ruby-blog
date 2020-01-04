1.  rails generate scaffold page_post title:string body:text
    rails db:migrate
2.  app/models/page_post.rb
    validates :title, presence: true
    validates :body, presence: true
3.  config/routes.rb
    root 'page_posts#index'


5.  config/application.rb
      config.time_zone = 'Novosibirsk'
      config.i18n.default_locale = :ru
    config/locales/ru.yml
      ru:
        hello: 'Привет'
6.  app/controllers/application_controller.rb
      before_action :authenticate_user!
    app/controllers/page_posts_controller.rb
      before_action :authenticate_user!, except: [:index, :show]
      @page_post.user_id = current_user.id
    app/views/page_posts/index.html.erb
      <td><%= page_post.user.email %></td>
    app/views/page_posts/index.html.erb
      <p> <strong>Email:</strong> <%= @page_post.user.email %> </p>
