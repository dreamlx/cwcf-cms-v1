class OrderObserver < ActiveRecord::Observer
  observe :order
  
  def after_create(order)
    begin
      OrderMailer.confirm(order).deliver
    rescue Net::SMTPAuthenticationError
      
    end
  end

  def after_update(order)

    begin
      OrderMailer.update_confirm(order).deliver
    rescue Net::SMTPAuthenticationError
      
    end
  end
  
end
