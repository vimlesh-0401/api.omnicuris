## Rails API
 This is an api only rails application that give json reponses and exposes different endpoints.

  ### Prerequisites
    ```
        ruby >= 2.4
        rails >= 5.1
    ```
  ### SETUP AND CONFIGURATIONS
  1. clone form command prompt
     ```
      git@github.com:vimlesh-0401/api.omnicuris.git
     ```
  2. goto project directory

  3. install bundle
     ```
      bundle install
     ```
  4. Start server
        ```
        rails server
        ```
  5. API to use (Items)
      ```
            i. Create Item
                url: http://localhost:3000/items
                type: post
                item: {
                    name: 'Item 001',
                    price: 1200,
                    quantity: 100,
                    description: ''
                }
        
            ii. Update Item
                url: http://localhost:3000/items/id
                type: put
                item: {
                    name: 'Item 001',
                    price: 1200,
                    quantity: 100,
                    description: ''
                }
                
            iii. Delete Item
                url: http://localhost:3000/items/id
                type: delete
                
            iv. List Item
                url: http://localhost:3000/items
                type: get
        ``` 
    6. API to use (Orders)
        ```
            i. Place Order with items
                url: http://localhost:3000/orders/place_order
                type: post
                order: {
                    email: 'order@omnicuris.co',
                    line_item_attributes: [
                        {
                            item_id: 1,
                            quantity: 10
                        },
                        {
                            item_id: 2,
                            quantity: 20
                        }
                    ]
                }
            ii. Create empty order
                url: http://localhost:3000/orders/place_order
                type: post
                order: {
                    email: 'order@omnicuris.co'
                }
        ```
    7. API to use (LineItems)
        ```
            i. Create line item and add to order.
                url: http://localhost:3000/line_items
                type: post
                line_item: {
                    item_id: 1,
                    order_id: 1,
                    quantity: 14
                }
        ```
    8. Improvements
        1. Add and remove items from order.
        2. Pagination for listing orders and items
        3. errors and validations 
        4. betterment of incrementing and decrementing quantity while anding and remove line items from/to order.
        5. login and token based user athentication