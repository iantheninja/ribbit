class Ribb < ActiveRecord::Base
  default_scope {order('created_at DESC')}
  #attr_accessible :content,  :user_id
  belongs_to :user

  validates :content, length: {maximum: 140}

  private
  def ribb_params
    params.require(:ribb).permit(:content, :user_id)
  end
end
