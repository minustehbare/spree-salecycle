module Spree
  class SalecycleConnection
    def initialize(order, current_user, current_store = nil)
      @order = order
      @current_user = current_user
      @current_store = current_store
    end
    
    def methods
      ["c", "b", "s", "n", "e", "t", "o", "p", "i", "v1", "v2", "q1", "u", "cu1", "cu2", "w", "y", "uc"]
    end
  
    def c
      if @current_store
        Spree::Salecycle::Config["salecycle_#{@current_store.code}_client_id".to_sym]
      else
        Spree::Salecycle::Config[:salecycle_client_id]
      end
    end
    
    def b
      @order.number
    end
  
    def s
      case @order.state.to_sym
        when :cart
          1
        when :address
          2
        when :delivery
          2
        when :payment
          2
        when :confirm
          2
        when :complete
          3
        else
          4
      end
    end
    
    def n
      @order.billing_firstname + '|' + @order.billing_lastname if @order.bill_address and @order.bill_address.firstname
    end
    
    def e
      if @current_user
        @current_user.email
      elsif @order
        @order.email 
      end
    end
    
    def t
      @order.bill_address.phone if @order.bill_address
    end
    
    def o
      return nil if Spree::Salecycle::Config[:salecycle_user_opt_out_method].blank?
      user_opt_out_method = Spree::Salecycle::Config[:salecycle_user_opt_out_method].split('#')[1] 
      if @current_user && user_opt_out_method.present? && @current_user.respond_to?(user_opt_out_method)
        @current_user.send user_opt_out_method
      end
    end
    
    def p
      @order.line_items.map { |line_item| line_item.id }.join '|'
    end
    
    def i
      @order.line_items.map { |line_item| line_item.variant.name.gsub('"', '%22') }.join '|'
    end
    
    def v1
      @order.line_items.map { |line_item| line_item.price }.join '|'
    end
    
    def v2
      @order.item_total
    end
    
    def q1
      @order.line_items.map { |line_item| line_item.quantity }.join '|'
    end
    
    def u
      @order.line_items.map do |line_item|
        if line_item.variant.images.any?
          line_item.variant.images.first.attachment.url(:small)
        elsif line_item.product.images.any?
          line_item.product.images.first.attachment.url(:small)
        end
      end.join '|'
    end
    
    def cu1
      cu(1)
    end
  
    def cu2
      cu(2)
    end
    
    def w
      @order.state
    end
    
    def y
      Spree::Salecycle::Config[:salecycle_currency_type]
    end
    
    def uc
      0
    end
    
  private
    def cu(n)
      if Spree::Salecycle::Config["salecycle_custom_field_#{n}"].present?
        matches = Spree::Salecycle::Config["salecycle_custom_field_#{n}"].match(/(.+)#(.+)/)
        return '' if matches.nil? || matches.size != 3
        receiver, method = matches[1..2]
        if receiver.downcase == 'product'
          @order.line_items.map { |line_item| line_item.product.send method }.join '|'
        elsif receiver.downcase == 'variant'
          @order.line_items.map { |line_item| line_item.variant.send method }.join '|'
        end
      end
    end
  end
end
