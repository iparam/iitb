class BidValidator < ActiveModel::Validator

  def validate(record)
    record.errors[:base] <<   "Please Ensure Your Bid Amount is #{record.project.min_next_bid_amount}" if !BidValidator.is_valid_bid?(record)
  end
  #  Project Bid should be greater than 5% to of last bid(MAximum bid)
  #  if bid is empty than greater than  or equal to project price
  #  record is bid object
  def self.is_valid_bid?(record)
    record.bid_amount >= record.project.min_next_bid_amount
  end
  #Bid Error Message
  def self.bid_message(record)
    "Please Ensure Your Bid Amount is #{record.project.min_next_bid_amount}"
  end

end
