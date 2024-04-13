# Users
=begin
User.create!(name:  "Example User",
  email: "example@railstutorial.org",
  password:              "foobar",
  password_confirmation: "foobar",
  admin:     true,
  activated: true,
  activated_at: Time.zone.now)

2.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "password"
User.create!(name:  name,
    email: email,
    password:              password,
    password_confirmation: password,
    activated: true,
    activated_at: Time.zone.now)
end
end
=end

Bulletin.create(
  announcement_date: Date.new(2024, 4, 13),
  title: 'コーポレートページを公開いたしました。',
)

Bulletin.create(
  announcement_date: Date.new(2024, 3, 23),
  title: '東京外国語大学で開催された「CEFR-J 2024 Symposium」で登壇いたしました。',
  url: 'https://cefr-j.org/events.html',
)

Bulletin.create(
  announcement_date: Date.new(2024, 3, 2),
  title: '日本トーターグリーンドーム前橋で開催された「UPDATE EARTH 2024 ミライMATSURI」に出展いたしました。',
  url: 'https://update-earth.com/',
)

Bulletin.create(
  announcement_date: Date.new(2024, 2, 19),
  title: '株式会社eiicon様の運営するWebメディア「TOMORUBA」に取材を受け、DiQtの記事を掲載いただきました。',
  url: 'https://tomoruba.eiicon.net/articles/4482?fbclid=IwZXh0bgNhZW0CMTAAAR0TY45Baj9r9_04FRsLNR2lbnvFJUfUVtXAscpAzTDCqpcVYz4mTUnWHY8_aem_AYqa1UO_dIErSAPYKJAyeYcyDR1UVsUgNKwYkChZ1z8JEzWFmLJK687y_qLNaiYFhr8F8sLH9gKOxRFLI1ooa0H-',
  )

Bulletin.create(
  announcement_date: Date.new(2023, 11, 10),
  title: 'Railsチュートリアルを運営するYassLab株式会社様に取材を受け、動画を配信いただきました。',
  url: 'https://twitter.com/RailsTutorialJP/status/1722796115630895133',
  )

Bulletin.create(
  announcement_date: Date.new(2023, 9, 15),
  title: '総務省の主催する支援プログラム「ICTスタートアップリーグ」に採択いただきました。',
  url: 'https://startupleague.jp/ict/leaguers/2305/',
  )

Bulletin.create(
  announcement_date: Date.new(2023, 3, 22),
  title: '株式会社マイナビ様の運営するエンジニア向けWebメディア「アンドエンジニア」にて取材いただき、DiQtの紹介記事を掲載いただきました。',
  url: 'https://and-engineer.com/articles/Y_x0ThEAACoAoqGt?fbclid=IwAR07YGKTCPyt-3idMORFvckQT90lQZQiaw04dr5y5tTKtzS03YVXFPDWQ9Q',
  )

Bulletin.create(
  announcement_date: Date.new(2022, 11, 18),
  title: '総務省の主催する2022年度異能ベーションプログラム「ジェネレーションアワード」部門にノミネートいただきました。',
  url: 'https://www.inno.go.jp/result/2022/generation/nominate/?fbclid=IwAR27UVxMs_1vcBQEQPURJkzpCe4vFFsWWP1c_ZzoSRMEYQU6CC_GmrjtT7k',
  )






