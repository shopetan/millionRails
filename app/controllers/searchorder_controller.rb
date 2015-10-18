class SearchorderController < ApplicationController
  
  def search
    
    queryArray = Array.new
    limitArray = Array.new

    params.each do |key,value|
      if key.include?("find") then
        queryArray.push(send("#{key}","#{value}"))

      elsif key.include?("limit") then
        limitArray.push(value)
      end
    end

    query = queryArray.join(".")
    limit = limitArray.join("")
        
    data = "order(\"orderDataTime\")"
    limit = "limit(#{limit})"
    
    @query = eval "Order.select(\"orderID, orderDataTime,orderUserID,orderItemID,orderQuantity,orderState\").#{query}.#{data}.#{limit}"
    
    #@test = eval "Order.#{query}"
    #@test = eval "Order.where(\"orderUserID = \'Uszr8n10\'\")"
    
    result = {"result" => true, "data" => @query}
    
    render :json => result

  end

  def findByOrderDateTimeGTE(value)
    return "where(\"orderDataTime >= \'#{value}\'\")"
  end
  
  def findByOrderDateTimeLTE(value)
    return "where(\"orderDataTime <= \'#{value}\'\")"
  end
  
  def findByOrderUserId(value)
    return "where(\"orderUserID = \'#{value}\'\")"
  end
  
  def findByOrderItemId(value)
    return "where(\"orderItemID = \'#{value}\'\")"
  end

  def findByOrderQuantityGTE(value)
    return "where(\"orderQuantity >= \'#{value}\'\")"
  end

  def findByOrderQuantityLTE(value)
    return "where(\"orderQuantity <= \'#{value}\'\")"
  end

  def findByOrderState(value)
    return "where(\"orderState = \'#{value}\'\")"
  end

  def findByOrderTagsIncludeAll(value)
    return "where(\"orderTags = \'#{value}\'\")"
  end

  def findByUserCompany(value)
    return ""
  end
  
  def findByUserDiscountRateGTE(value)
    return ""
  end

  def findByUserDiscountRateLTE(value)
    return ""
  end

  def findByItemSupplier(value)
    return ""
  end

  def findByItemStockQuantityGTE(value)
    return ""
  end

  def findByItemStockQuantityLTE(value)
    return ""
  end

  def findByBasePriceGTE(value)
    return ""
  end
  
  def findByBasePriceLTE(value)
    return ""
  end

  def findByItemTagsIncludeAll(value)
    return ""
  end
  
  def findByItemTagsIncludeAny(value)
    return ""
  end
  
end
