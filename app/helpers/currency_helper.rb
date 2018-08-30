module CurrencyHelper
  def convert_currency_to_emoji(code)
     case code
     when 'EUR' then '🇪🇺'
     when 'AUD' then '🇦🇺'
     when 'USD' then '🇺🇸'
     when 'GBP' then '🇬🇧'
     when 'CNY' then '🇨🇳'
     when 'HKD' then '🇭🇰'
     when 'CAD' then '🇨🇦'
     when 'DKK' then '🇩🇰'
     when 'JPY' then '🇯🇵'
     when 'KRW' then '🇰🇷'
     when 'MYA' then '🇲🇾'
     when 'MXN' then '🇲🇽'
     when 'NZD' then '🇳🇿'
     when 'NOK' then '🇳🇴'
     when 'SGD' then '🇸🇬'
     when 'ZAR' then '🇿🇦'
     when 'SEK' then '🇸🇪'
     when 'CHF' then '🇨🇭'
     when 'AED' then '🇦🇪'
     when 'VDN' then '🇻🇳'
     when 'RUB' then '🇷🇺'
     when 'PLN' then '🇵🇱'
     else
       '💰'
     end
  end
end
