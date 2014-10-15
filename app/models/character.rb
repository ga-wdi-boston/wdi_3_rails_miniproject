class Character < ActiveRecord::Base
  belongs_to :party
  has_one :stat_sheet

  def job
    jobs[read_attribute(:job).to_sym]
  end

  def jobs
    {
      tank: "Tank",
      dps: "DPS",
      healer: "Healer"
    }
  end

  def job_choices
    jobs.to_a.map do |choice|
      choice.reverse
    end
  end

  def stats
    stats = [:hp, :sp, :attack, :defense, :speed].map do |stat|
      self.send(stat)
    end
  end

  def method_missing(meth, *args, &blk)
    self.stat_sheet.read_attribute(meth.to_sym)
  end

  after_create :roll_stat_sheet

  private

    def roll_stat_sheet
      StatSheet.roll(self)
    end
end
