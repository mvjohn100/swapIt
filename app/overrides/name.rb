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
                     :text => "<h6>Not need to go through following instructions if you are doing registration</h6>
                               <h6>1) Since we not collecting shipping charges.we kept it as zero.</h6>
                               <h6>2) You want to pay VPP postal charges when you receive the books </h6>
                               <h6>3) VPP charges:- Firts 500 grams 25 INR,every additional 500 grams cost 18 INR</h6>
                               <h6>4) You don't want to pay price of the book or Order total.you only want to pay VPP charges.</h6>
                               <h6>5) we keep book price for point calculation purpose</h6>")
Deface::Override.new(:virtual_path => "spree/checkout/_payment",
                     :name => "paymentInstruction",
                     :insert_top => "[data-hook='checkout_payment_step']",
                     :text => "<h6>1) Bank Transfer is for first time registration </h6>
                              <h6> 2) you gain points for your books, which you send to us </h6>
                              ")
# Deface::Override.new(
#     :virtual_path => 'spree/checkout/_payment',
#     :name => 'remove_bank_transfer_instructions_link_to_payment',
#     :replace => "erb[loud]:contains('How Bank Transfer works?')",
#     :text => "<h6>Point Details </h6>"
# )


