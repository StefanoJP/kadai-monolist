class Want < Ownership
  
  has_many :wants
  has_many :want_items, through: :wants, class_name: 'Item', source: :item
  
  def self.ranking
    self.group(:item_id).order('count_item_id DESC').limit(10).count(:item_id)
  end
  
end
