class BlankObserver < ActiveRecord::Observer
  observe :blank

  # def after_create(blank)
  #   puts "=" * 200
  #   BlankMailer.confirm("627363747@qq.com").deliver
  # end
  def after_create(blank)
    BlankMailer.apply(blank).deliver
  end

  def after_update(blank)

    if blank.status = accepted
      BlankMailer.confirm(blank).deliver
    else
      BlankMailer.deny(blank).deliver
    end
  end

end
