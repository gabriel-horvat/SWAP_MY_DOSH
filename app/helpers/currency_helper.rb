module CurrencyHelper
  def convert_currency_to_emoji(code)
     case code
     when 'EUR' then '🇪🇺EUR'
     when 'AUD' then '🇦🇺AUD'
     when 'USD' then '🇺🇸USD'
     when 'GBP' then '🇬🇧GBP'
     when 'CNY' then '🇨🇳CNY'
     when 'HKD' then '🇭🇰HKD'
     when 'CAD' then '🇨🇦CAD'
     when 'DKK' then '🇩🇰DKK'
     when 'JPY' then '🇯🇵JPY'
     when 'KRW' then '🇰🇷KRW'
     when 'MYR' then '🇲🇾MYR'
     when 'MXN' then '🇲🇽MXN'
     when 'NZD' then '🇳🇿NZD'
     when 'NOK' then '🇳🇴NOK'
     when 'SGD' then '🇸🇬SGD'
     when 'ZAR' then '🇿🇦ZAR'
     when 'SEK' then '🇸🇪SEK'
     when 'CHF' then '🇨🇭CHF'
     when 'AED' then '🇦🇪AED'
     when 'VDN' then '🇻🇳VDN'
     when 'RUB' then '🇷🇺RUB'
     when 'PLN' then '🇵🇱PLN'
     else
       '💰'
     end
  end
end

#<#% cur_array = [['🇪🇺EUR'], ['🇦🇺AUD'], ['🇺🇸USD'], ['🇬🇧GBP'], ['🇨🇳CNY'], ['🇭🇰HKD'], ['🇨🇦CAD'], ['🇩🇰DKK'], ['🇯🇵JPY'], ['🇰🇷KRW'], ['🇲🇾MYR'], ['🇲🇽MXN'], ['🇳🇿NZD'], ['🇳🇴NOK'], ['🇸🇬SGD'], ['🇿🇦ZAR'], ['🇸🇪SEK'], ['🇨🇭CHF'], ['🇦🇪AED'], ['🇻🇳VDN'], ['🇷🇺RUB'], ['🇵🇱PLN']] %>
