require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module BooQs
  class Application < Rails::Application
    config.load_defaults 7.0
    config.active_storage.variant_processor = :mini_magick
    config.hosts << '.booqs.net'

    # アプリケーションが対応している言語のホワイトリスト(ja = 日本語, en = 英語)
    # DiQtの対応言語は、https://docs.google.com/spreadsheets/d/e/2PACX-1vTrnDwxVLmjs0delUXjmz0W2MpKYRcJyFFrncVt0vq0WuLfeh3A40YjCIAfDLzeeF0xFWfPhbv88Vi8/pubhtml
    # を参照。
    config.i18n.available_locales = %i(en ja)
    config.i18n.default_locale = :ja
    config.i18n.fallbacks = [:en]
    # 上記の対応言語以外の言語が指定された場合、エラーとするかの設定
    config.i18n.enforce_available_locales = false
  end
end
