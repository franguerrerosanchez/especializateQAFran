Feature: PS 7- Test Cases

	@TEST_PS-42 @TESTSET_PS-30
	Scenario: Products can be added to cart from details page
		Given user is logged or not
		And "Add to cart" button works
		When user goes to Product Store main page
		And clicks on any of the products
		And “Add to cart” button is pressed
		Then Product added message is displayed
		And cart action is displaying number of product as an icon
	@TEST_PS-46 @TESTSET_PS-30
	Scenario: Info for Product added is displayed
		Given user is logged or not
		And some products have been added to cart
		When user goes to Product Store main page
		And clicks on Cart actionThen Product page is displayed
		And some info for Product added is displayed
		And Delete action is displayed
		And Total correct amount is displayed
		And Place Order button is displayed
	@TEST_PS-59 @TESTSET_PS-30
	Scenario: Product can be removed from cart
		Given user is logged or not
		And some products have been added to cart
		When user goes to Product Store main page
		And clicks on Cart action
		And Delete action is clicked for an element
		Then product is deleted
		And total prices is updated
	@TEST_PS-61 @TESTSET_PS-30
	Scenario: We can place an order
		Given a cart with no products
		and a cart with products
		When we try to place an order
		Then an error message is displayed if there are no products in our cart
		And a window to checkout is displayed if there are products in our cart
