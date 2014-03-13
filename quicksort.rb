#!/usr/bin/env ruby 
#encoding: utf-8

# Quicksort implementation for Ruby

# Basada en la implementación en C del libro Algoritmos y
# Estructuras de Datos, de Luis Joyanes e Ignacio Zahonero

def quicksort(data, f = 0, l = data.length-1)
    # Toma el elemento central como el pivote. Podría ser
    # útil una técnica para obtener un pivote adecuado en
    # todos los casos (y evitar el peor caso de eficiencia)
    central = (f + l) / 2
    pivote = data[central]
    i = f
    j = l

    while i <= j
        i += 1 while data[i] < pivote
        j -= 1 while data[j] > pivote

        if i <= j
            data[i], data[j] = data[j], data[i]
            i += 1
            j -= 1
        end
    end
   
    quicksort(data, f, j) if j > f
    quicksort(data, i, l) if i < l

    data
end

puts (quicksort [8,6,7,5,3,0,9]).to_s