class BidValidator < ActiveModel::Validator

  def validate(record)
    record.errors[:base] << "You have reach maximum no of bid " if BidValidator.is_valid_bid?(record)
  end

  def self.is_valid_bid?(record)
    record.team.bids.where(:project_id=>record.project.id).count > 2
  end

end
