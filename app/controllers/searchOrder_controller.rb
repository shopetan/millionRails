class SearchOrderController < ApplicationController
  
  def search
    params.each do |e|
      if e.include?("find") then
        #        e.send()
      elsif e.include?("limit") then  
      end
    end
  render json: @query_result
  end
end
  def findByOrderDateTimeGTE

  end

  def findByOrderDateTimeLTE

  end

  def findByOrderUserId

  end

  def findByOrderItemId

  end

  def findByOrderQuantityGTE

  end

  def findByOrderQuantityLTE

  end

  def findByOrderState
  
  end

  def findByOrderTagsIncludeAll

  end

  def findByUserCompany
  
  end
  
  def findByUserDiscountRateGTE
    
  end

  def findByUserDiscountRateLTE
    
  end

  def findByItemSupplier

  end

  def findByItemStockQuantityGTE

  end

  def findByItemStockQuantityLTE

  end

  def findByBasePriceGTE
  
  end
  
  def findByBasePriceLTE
  
  end
  
  def findByItemTagsIncludeAll
    
  end
  
  def findByItemTagsIncludeAny
    
  end
  
end
