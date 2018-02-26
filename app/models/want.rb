class Want < Ownership
  
  has_many :wants
  has_many :want_items, through: :wants, class_name: 'Item', source: :item
  
end
