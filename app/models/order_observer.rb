class OrderObserver < ActiveRecord::Observer
  observe :order
  
  def after_create(order)
    begin
      OrderMailer.confirm(order).deliver
    rescue Net::SMTPAuthenticationError
      
    end
  end
  
end
