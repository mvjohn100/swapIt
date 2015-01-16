Deface::Override.new(:virtual_path  => "spree/shared/_footer",
                     :replace       => "erb[loud]:contains('http://spreecommerce.com/')",
                     :text          => "<%= link_to 'Klairvoyant info solutions', 'http://www.klairvoyant.in/' %>",
                     :name          => "klairvoyant")
Deface::Override.new(:virtual_path  => "spree/shared/_footer",
                     :replace       => "erb[loud]:contains(':powered_by')",
                     :text          => "Created & Maintained by ",
                     :name          => "maintained")
Deface::Override.new(:virtual_path => "spree/admin/users/edit",
                     :name  =>"loyalitypoint2",
                     :insert_top => "[data-hook='admin_user_edit_general_settings']",
                     :text => "
  <tr data-hook='loyalty-points'>
    <th><%= link_to 'Loyalty Point Details', spree.loyalty_points_path %></th>
    <td>
      <% if @user.loyalty_points_balance.present? %>
        <%= link_to @user.loyalty_points_balance, spree.admin_user_loyalty_points_path(@user) %>
      <% else %>
        <%= 'No loyalty points yet' %>
      <% end %>
    </td>
  </tr>
  "
)
Deface::Override.new(:virtual_path => "spree/checkout/_delivery",
                     :name => "deliveryInstruction",
                     :insert_top => "[data-hook='buttons']",
                     :text => "<h6>1) You want to pay VPP postal charges when you receive the books</h6>
                               <h6>2) VPP charge showed here is not accurate. there may be slight difference</h6>
                               <h6>3) you don't want to pay price of book or Order total. </h6>")
Deface::Override.new(:virtual_path => "spree/checkout/_payment",
                     :name => "paymentInstruction",
                     :insert_top => "[data-hook='checkout_payment_step']",
                     :text => "<h6>1) Here using your points to purchase the items </h6>
                              <h6> 2) one points equals to 5 Indian Rupess </h6>
                               ")
Deface::Override.new(
    :virtual_path => 'spree/checkout/_payment',
    :name => 'remove_bank_transfer_instructions_link_to_payment',
    :replace => "erb[loud]:contains('How Bank Transfer works?')",
    :text => "<h6>Point Details </h6>"
)


