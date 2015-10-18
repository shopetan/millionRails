class SearchorderController < ApplicationController
  
  def search
    params.each do |key,value|
      if key.include?("find") then
        send("#{key}","#{value}")
      elsif key.include?("limit") then
        
      end
    end
    
    @user  = User.arel_table
    @item  = Item.arel_table
    @Order = Order.arel_table
    
    render :nothing => true 
  end
  
  def findByOrderDateTimeGTE(value)
    return ""
  end

  def findByOrderDateTimeLTE(value)

  end

  def findByOrderUserId(value)

  end

  def findByOrderItemId(value)

  end

  def findByOrderQuantityGTE(value)

  end

  def findByOrderQuantityLTE(value)

  end

  def findByOrderState(value)
  
  end

  def findByOrderTagsIncludeAll(value)

  end

  def findByUserCompany(value)
  
  end
  
  def findByUserDiscountRateGTE(value)
    
  end

  def findByUserDiscountRateLTE(value)
    
  end

  def findByItemSupplier(value)

  end

  def findByItemStockQuantityGTE(value)

  end

  def findByItemStockQuantityLTE(value)

  end

  def findByBasePriceGTE(value)
  
  end
  
  def findByBasePriceLTE(value)
  
  end

  def findByItemTagsIncludeAll(value)
  
  end
  
  def findByItemTagsIncludeAny(value)
  
  end
  
end
