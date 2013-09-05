class Adddefaultfotosrepostas < ActiveRecord::Migration
  def up
  	Fotosresposta.new(:descricao => "Hall Entrada").save
  	Fotosresposta.new(:descricao => "Escadas").save
  	Fotosresposta.new(:descricao => "Sala").save
  	Fotosresposta.new(:descricao => "Sala Refeições").save
  	
  end

  def down
  end
end