class Build < ActiveRecord::Base
  belongs_to :project

  attr_accessible :project_id, :status, :finished_at, :trace, :commit_sha, :branch

  validates :project_id, :presence => true
  validates :status, :presence => true

  scope :running, where(:status => 'running')
  scope :pending, where(:status => 'pending')
  scope :success, where(:status => 'success')
  scope :failed, where(:status => 'failed')

  def success?
    status == 'success'
  end

  def failed?
    status == 'failed'
  end

  def running?
    status == 'running'
  end

  def pending?
    status == 'pending'
  end
end
