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
