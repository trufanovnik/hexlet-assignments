# frozen_string_literal: true

class SetLocaleMiddleware
  def initialize(app)
    @app = app
  end

  # BEGIN
  def call(env)
    accept_language = env['HTTP_ACCEPT_LANGUAGE']
    locale = accept_language.scan(/^[a-z]{2}/).first rescue I18n.default_locale

    I18n.locale = locale

    @app.call(env)
  end
  # END
end
