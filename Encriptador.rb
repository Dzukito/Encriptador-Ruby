class Encriptador


  def self.encriptar (string)

    ascii= []

    string.each_byte do |c|
      if c.odd?
        ascii<< c= (c+2) % 256
      else
        ascii<< c= (c+4) % 256
      end
    end
    nuevasLetras= ascii.map{|codigo| codigo.chr}
     nuevasLetras.join("")
  end

end

class Desencriptador


  def self.desencriptar (string)
    ascii= []

    string.each_byte do |c|
      if c.odd?
        ascii<< c= (c-2) % 256
      else
        ascii<< c= (c-4) % 256
      end
    end
    nuevasLetras= ascii.map{|codigo| codigo.chr}
     nuevasLetras.join("")

  end

end

puts " "
while(1) do
  puts "\e[0;31m >Presione 0 para ENCRIPTAR \e[0m\n"
  puts "\e[0;34m >Presione 1 para DESENCRIPTAR \e[0m"
  puts " "
  op=  $stdin.gets.chomp

  puts "\e[0;32m -Escriba su mensaje: \e[0m"
  puts ""
  m=  $stdin.gets.chomp

  if(op=="0")
    result=Encriptador.encriptar(m)
  else
    result=Desencriptador.desencriptar(m)
  end
  puts " "
  puts "\e[0;38m >Resultado: \e[0m"+ result
  puts" "
  puts "\e[0;33m >Desea realizar otra operacion? [y/n]\e[0m\n"
  decision=  $stdin.gets.chomp
  if(decision=="n")
    break
  end
end



