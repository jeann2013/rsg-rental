local Translations = {
    error = {
        not_enough_cash_to_do_that = 'Not enough cash to do that!',
    },
    success = {
        rental_money_paid_enjoy = 'Rental money paid, enjoy..',
    },
    primary = {
		    var = 'text goes here',
    },
    menu = {
		    open = 'Open ',
        close_menu = 'Close Menu',
        wooden_cart = '"Wooden Cart %{numbercart}',
        luxurious_buggy = 'Luxurious Buggy %{numberbuggy}',
        special_transport = 'Special Transport %{numbertransport}',
    },
    commands = {
		    var = 'text goes here',
    },
    progressbar = {
        getting_cart_from_the_store = 'Getting cart from the store..',
    },
    text = {
        rent_this_cart_for = 'rent this cart for $',
        rent_this_luxurious_buggy_for = 'rent this luxurious buggy for $',
        rent_this_transport_for = 'rent this transport for $',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
