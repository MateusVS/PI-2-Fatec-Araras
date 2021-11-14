module BimCalculationHistoriesHelper
  def bim_calculation(height, width)
    return '' if height.blank? || width.blank?

    (width / (height * height)).round(2)
  end

  def bim_calculation_result(pointing)
    return 'Abaixo do peso' if pointing <= 18.5
    return 'Peso normal' if pointing > 18.5 && pointing <= 24.9
    return 'Sobrepeso' if pointing > 24.9 && pointing <= 29.9
    return 'Obesidade grau 1' if pointing > 29.9 && pointing <= 34.9
    return 'Obesidade grau 2' if pointing > 34.9 && pointing <= 39.9

    'Obesidade grau 3'
  end

  def formatted_created_at_date(date)
    date.strftime("%d/%m/%Y")
  end

  def formatted_float_with_comma(number)
    number_with_precision(number, precision: 2).to_s.gsub!(/\./,",")
  end
end
