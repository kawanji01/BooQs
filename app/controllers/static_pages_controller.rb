class StaticPagesController < ApplicationController
  def home
    @is_black = true
    @bulletins = Bulletin.all.order(announcement_date: :desc)
  end

  def inquiry
    text = <<~EOS
      お問い合わせがありました。
      ```
      要件： #{params[:inquiry_type]}
      お名前: #{params[:name]}
      会社名： #{params[:company]}
      メールアドレス: #{params[:email]}
      電話番号： #{params[:phone]}
      お問い合わせ内容:
      #{params[:message]}
      ```
    EOS
    notifier = Slack::Notifier.new(
      ENV['WEBHOOK_URL'],
      channel: '#company_inquiry',
      username: params[:inquiry_type],
    )
    notifier.post(text: text,
                  icon_url: DIQT_ICON)
    flash[:success] = 'お問い合わせを受け付けました。'
    redirect_to root_path
  end

  def help ;end

  def about ;end

  def contact ;end

end
