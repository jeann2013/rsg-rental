local Translations = {
    error = {
        not_enough_cash_to_do_that = '¡No hay suficiente efectivo para hacer eso!',
    },
    success = {
        rental_money_paid_enjoy = 'Alquiler pagado, ¡disfrutalo!',
    },
    primary = {
		    var = 'text goes here',
    },
    menu = {
		open = 'Abrir ',
        close_menu = 'Cerrar menú',
        wooden_cart = 'Carro de madera %{numbercart}',
        luxurious_buggy = 'Buggy de lujo %{numberbuggy}',
        special_transport = 'Transporte especial %{numbertransport}',
    },
    commands = {
		    var = 'text goes here',
    },
    progressbar = {
        getting_cart_from_the_store = 'Sacando carro de la tienda..',
    },
    text = {
        rent_this_cart_for = 'alquilar este carro por $',
        rent_this_luxurious_buggy_for = 'alquila este lujoso buggy por $',
        rent_this_transport_for = 'alquilar este transporte por $',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
