class HomeController < AppjianzhuController
  def index
  end

  def region
  end

  def publish
    type_id = params[:type]
    if not type_id.nil?
      @type_id = type_id
    end
  end

  def zizhi
    
  end

  def add

  end
end
