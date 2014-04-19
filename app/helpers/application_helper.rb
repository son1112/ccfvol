module ApplicationHelper
  def new_child_fields_template(form_builder, association, options = {})
    options[:object] ||= form_builder.object.class.reflect_on_association(association).klass.new
    options[:partial] ||= association.to_s.singularize
    options[:form_builder_local] ||= :f

    content_tag(:div, :id => "#{association}_fields_template", :style => "display: none") do
      form_builder.fields_for(association, options[:object], :child_index => "new_#{association}") do |f|
        render(:partial => options[:partial], :locals => { options[:form_builder_local] => f })
      end
    end
  end

  def add_child_link(name, association)
    link_to(name, "javascript:void(0)", :class => "add_child", :"data-association" => association)
  end
  
  def remove_child_link(name, f)
    f.hidden_field(:_destroy) + link_to(name, "javascript:void(0)", :class => "remove_child")
  end


  def shift_names

    shift_desc = [ "Friday 4-6 setup",
                   "Saturday 9-11 setup",
                   "Saturday 11-12",
                   "Saturday 12-1",
                   "Saturday 1-2",
                   "Saturday 2-3",
                   "Saturday 3-5 teardown" ]
  end

  def activity_names

    booths = [ "Signage", 
               "Music", 
               "Setup & Teardown", 
               "Bake Sale", 
               "Concessions", 
               "Ticket Sales & Raffle / Country Store", 
               "Pony Rides", 
               "Pony Wagon Rides", 
               "Face Painting", 
               "Water Play and Bubbles", 
               "Treasure Hunt", 
               "Cake Walk", 
               "Dress-up", 
               "Obstacle Course", 
               "Penny Toss", 
               "Pocket Person", 
               "Dunk Tank", 
               "Sock Puppets", 
               "Parking Cars", 
               "Photographers", 
               "Runners", 
               "Chess / Board Games", 
               "Cider Press", 
               "Pinwheel Craft", 
               "Origami" ] 
  end
end
