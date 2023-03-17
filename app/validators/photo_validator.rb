class PhotoValidator < ActiveModel::Validator
  def validate(record)
    unless record.photo.attached?
      record.errors[:photo] << 'must be attached'
    end
  end
end
