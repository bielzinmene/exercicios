class Numeric
  @@currencies = {
    'dollar' => 1.0,
    'yen'    => 0.013,
    'euro'   => 1.292,
    'rupee'  => 0.019
  }

  def method_missing(method_id, *args, &block)
    singular_currency = method_id.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      raise ArgumentError, "Moeda não suportada: #{currency}"
    end
  end
end

puts 5.dollars.in(:euros)