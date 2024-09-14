function caesar_cipher_encrypt(text::String, k::Int)
    encrypted_text = String[]
    for char in text 
        if isletter(char)
            base = isuppercase(char) ? 'A' : 'a'
            shift = k % 26 
            encrypted_char = Char((Int(char) - Int(base) + shift) % 26 + Int(base))
            push!(encrypted_text, string(encrypted_char))
        else
            push!(encrypted_text, string(char))
        end
    end
    return join(encrypted_text)    
end

println("Введите фразу для шифрования: ")
text = readline()
println("Введите ключ(сдвиг): ")
k = parse(Int, readline())

encrypted_message = caesar_cipher_encrypt(text, k)
println("Зашифрованное сообщение: $encrypted_message")