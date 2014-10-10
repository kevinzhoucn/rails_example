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
    @record = Record.new

    respond_to do |format|
      format.html # add.html.haml
    end
  end

  def create
    
  end
end
