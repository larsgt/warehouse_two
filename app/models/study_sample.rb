class StudySample < ActiveRecord::Base
  include ResourceTools

  def self.link_resources(resource_object)
  end

  def self.map_internal_to_external_attributes
    # Internal DB column => External resource method
    {
      :uuid                => :uuid,
      :internal_id         => :id,
      :sample_internal_id  => :sample_internal_id,
      :sample_uuid         => :sample_uuid,
      :study_internal_id   => :study_internal_id,
      :study_uuid          => :study_uuid,
      :last_updated        => :updated_at,
      :created             => :created_at
    }
  end
  
end