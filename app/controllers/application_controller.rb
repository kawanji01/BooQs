class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :set_locale

  # 多言語化
  def set_locale
    I18n.locale = locale
  end

  def locale
    @locale = params[:locale] || I18n.default_locale
    @locale = @locale == 'ja' ? 'ja' : 'en'
  end

  def default_url_options(options = {})
    options.merge(locale: locale)
  end

  # headerからユーザーの言語を取得する。ユーザー登録時にユーザーのデフォルト言語を設定するために使用。
  def extract_locale_from_accept_language_header
    # available = %w(en ja)
    available = Languages::CODE_MAP.keys
    http_accept_language.preferred_language_from(available)
  end

  private

    # ユーザーのログインを確認する
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url, status: :see_other
      end
    end
end
