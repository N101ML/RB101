def prompt(message)
  puts "=> #{message}"
end

def apr_to_monthly(amount)
  (amount.to_f / 100) / 12
end

def loan_to_months(years)
  (years.to_i * 12)
end

def monthly_payment_calc(loan, monthly, duration)
  loan.to_f * (monthly / (1 - (1 + monthly)**(-duration.to_f)))
end

def integer?(num)
  num.to_i.to_s == num
end

loop do
  prompt("Welcome to the Mortgage / Car Loan Calculator!")
  prompt("Please enter your loan amount: ")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if integer?(loan_amount) && loan_amount.to_f > 0
      break
    else
      prompt("Please enter a positive number.")
    end
  end

  prompt("Please enter your APR: ")

  apr = ''
  loop do
    apr = gets.chomp
    if integer?(apr) && apr.to_f > 0
      break
    else
      prompt("Please enter a positive number.")
    end
  end

  prompt("Please enter the duration of your loan (in years): ")

  loan_duration_years = ''
  loop do
    loan_duration_years = gets.chomp
    if integer?(loan_duration_years) && loan_duration_years.to_f > 0
      break
    else
      prompt("Please enter a positive number.")
    end
  end

  mon_int_rate = apr_to_monthly(apr)
  prompt("Your monthly interest rate is: #{mon_int_rate}%")

  ld_months = loan_to_months(loan_duration_years)
  prompt("Your loan duration is for #{ld_months} months.")

  monthly_payment = monthly_payment_calc(loan_amount, mon_int_rate, ld_months)
  prompt("Your monthly payment is: $#{monthly_payment.to_f.round(2)} / month.")

  prompt("Would you like to calculate another payment? If so, enter 'Y'")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end
