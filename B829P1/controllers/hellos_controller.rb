class HellosController < ApplicationController
  def dato  
    new_dato = Dato.new(
      datouno: params[:dato][:datouno],
      datodos: params[:dato][:datodos],
      datotres: params[:dato][:datotres]
    )
    new_dato.save
    redirect_to hellos_path
  end

 #INICIO INDEX en hellos_controller
  def index
    @xxx = "___variable instancia requiere at"
    @time = Time.now
    @yñ = Time.now.year
    @mth = Time.now.month
    @dy = Time.now.day
    @fch = @yñ.to_s + "-" + @mth.to_s + "-" +  @dy.to_s
    @dd_s = Date.parse(@fch).strftime("%u")
    # Lin21: el anterior, @dd_s, es dia de la semana 
      # para otra prueba dia   @dd_s = "1"
    # para otra prueba dia @dd_s = 7.to_s
    # para  prueba mes @mth = "5"

   case @dd_s
   when "1".."5"
    @dh = "día habil"
  #when "1", "3", "5"
  #  @lmv = "Lun, Mie, o Vie" 
   else
    @dh = "fin de semana"
   # @lmv = "Mart, Juev o Vier"
   end 

  case @dd_s
    when "1", "3", "5"
    @lmv = "Lun, Mie, o Vie" 
   else
     @lmv = "Mart, Juev o Vier"
  end 

    @dds = @dd_s
    
    if @dds == "1" then
      @d = "Lunes"
     elsif @dds == "2" then
        @d = "Martes"
      elsif @dds == "3" then
        @d = "Miercoles"
      elsif @dds == "4" then
        @d = "Jueves"
      elsif @dds == "5" then
        @d = "Viernes"
      elsif @dds == "6" then
        @d = "Sabado"
      elsif @dds == "7" then
        @d = "Domingo"
      else
        @d = "otro"
      end

    case @dds
      when "7"
       @d = "D o m"
      when "6"
        @d = "S a b"
      when "5"
        @d = "V i e"
      when "4"
        @d = "J u e"
      when "3"
        @d = "M i e"
      when "2"
        @d = "M a r t"
      when "1"
        @d = "L u n"          
       
      else
        @d = "dias"
    end

      @cd = @d
       
      @dgr = Date.parse("1810-7-20").strftime("%u")
      @dds = @dgr
      if @dds == "1" then
        @d = "Lunes"
        elsif @dds == "2" then
          @d = "Martes"
        elsif @dds == "3" then
          @d = "Miercoles"
        elsif @dds == "4" then
          @d = "Jueves"
        elsif @dds == "5" then
          @d = "Viernes"
        elsif @dds == "6" then
          @d = "Sabado"
        elsif @dds == "7" then
          @d = "Domingo"
        else
        @d = "otro"
        end
        @d20 = @d

      if @mth == 1 then
        @m = "Enero" 
      elsif @mth == 2 then
        @m = "Febrero" 
      elsif @mth == 3 then
        @m = "Marzo" 
      elsif @mth == 4 then
        @m = "Abril" 
      elsif @mth == 5 then
        @m = "Mayo" 
      elsif @mth == 6 then
        @m = "Junio" 
      elsif @mth == 7 then
        @m = "Julio" 
      elsif @mth == 8 then
          @m = "Agosto"
        elsif @mth == 9 then
          @m = "Septiembre" 
        elsif @mth == 10 then
          @m = "Octubre" 
        elsif @mth == 11 then
          @m = "Noviembre" 
        elsif @mth == 12 then
          @m = "Diciembre"      
      else
        @m = "otro"
      end 
@dgr = Date.parse("1810-07-20").strftime("%u")

case @d 
when "Lunes"
  @tls = "Tiene Lunes"
  #redirect_to motos_path
  #render :festv
else
  @tls = "de L130contrhll: No tiene Lunes"
  # para ir aotras partes, redirec_to y render funcionaron:
  #redirect_to cars_path
  #render :festr
  #render :festr
end   

end
#END INDEX

end
 
#def nuevo
#@book = Book.nuevo
#end

#para crear formulario form_for en edit y new html.erb

#<%= form_for @book do |f| %>
# aca van los campos o columnas del formulario
#<% end %>
#


#<%= form_tag ("/search", method: "get") do %>
# <%= label tag(:q "Search for:") %>
# <%= text_field_tag(:q) %>
# <%= submit_tag("Search") %>
# <% end %>


