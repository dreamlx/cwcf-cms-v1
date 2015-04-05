class BlankObserver < ActiveRecord::Observer
  observe :blank

  def after_create(blank)

    # puts '-' * 1000
    # begin
    #   BlankMailer.apply(blank).deliver
    # rescue Net::SMTPAuthenticationError
      
    # end
  end

  def after_update(blank)

    # if blank.status = "accepted"
    #   BlankMailer.confirm(blank).deliver
    # else
    #   BlankMailer.deny(blank).deliver
    # end
  end

end
