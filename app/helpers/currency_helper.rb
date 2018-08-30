module CurrencyHelper
  def convert_currency_to_emoji(code)
     case code
     when 'EUR' then '🇪🇺'
     when 'AUD' then '🇦🇺'
     when 'USD' then '🇺🇸'
     when 'GBP' then '🇬🇧'
     else
       '💰'
     end
  end
end
