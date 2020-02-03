  contact = Contact.all
  group_ids = Group.pluck(:id)
  contacts.each do |contact|
    sampled_group_ids = group_ids.sample(rand(2..4))
    
    sampled_group_ids.each do |group_id|
      GroupContact.create(contact_id: contact.id, group_id: group_id)
    end
  end