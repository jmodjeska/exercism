class Bob
  def hey(remark)
    remark.delete!("\n")
    case
    when ( remark == remark.upcase ) && ( remark.match(/[A-Z]/) )
      'Whoa, chill out!'
    when remark.nil?, remark.match(/^\s*$/)
      'Fine. Be that way!'
    when remark.match(/\?$/)
      'Sure.'
    else
      'Whatever.'
    end
  end
end
