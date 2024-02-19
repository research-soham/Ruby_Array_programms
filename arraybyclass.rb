# Make a array by taking 10 input from user. Now delete all repeated elements of array.
#  INPUT : [1,2,3,2,1,3,12,12,32,nil]
# OUTPUT : [1,2,3,12,32]

class Myarray 
  def array_input
    @array=[]
    for i in (0..9) do
      print "Enter #{i+1} element"
      @a= gets.chop.to_i
      if @a != 0
          @array<<@a
      end
      @array
    end
    @myarray=@array.compact
    @myarray.uniq
    @array.uniq
  end
end

obj=Myarray.new
p obj.array_input
