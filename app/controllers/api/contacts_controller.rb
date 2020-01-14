class Api::ContactsController < ApplicationController
  def first_contact_action
    @contact = Contact.first
    render "first_contact_view.json.jb"
  end

  def second_contact_action
    @contact = Contact.second
    render "second_contact_view.json.jb"
  end

  def third_contact_action
    @contact = Contact.third
    render "third_contact_view.json.jb"
  end

  def all_contacts_action
    @contacts = Contact.all
    render "all_contacts_view.json.jb"
  end
end
