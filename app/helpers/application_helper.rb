module ApplicationHelper

  # ページごとの完全なタイトルを返します。                      # コメント行
  def full_title(page_title = '')                     # メソッド定義とオプション引数
    base_title = "Ruby on Rails Tutorial Sample App"  # 変数への代入
    if page_title.empty?                              # 論理値テスト
      base_title                                      # 暗黙の戻り値
    else
      "#{page_title} | #{base_title}"                 # 文字列の結合
    end
  end


  def default_meta_tags(locale)
    {
      site: t('shared.company.name', locale: locale),
      title: t('shared.company.name', locale: locale),
      reverse: true,
      charset: 'utf-8',
      #description: t('application.description'),
      #keywords: t('application.keywords'),
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: "#{IMAGES_URL}/favicons/favicon-32x32.png" },
        { href: DIQT_ICON, rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: "#{MAIN_IMAGES_URL}/OGP_BooQs.png",
        locale: locale,
      },
      twitter: {
        card: 'summary',
      }
    }
  end

end
