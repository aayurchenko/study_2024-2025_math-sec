function atbash_cipher(text::String)
    encrypted_text = String[]


    for char in text
        if isuppercase(char)
            push!(encrypted_text, string(Char('Z' - (char - 'A'))))
        elseif islowercase(char)
            push!(encrypted_text, string(Char('z' - (char - 'a'))))
        else
            push!(encrypted_text, string(char))
        end
    end
    
    return join(encrypted_text)
end

println("Введите фразу для шифрования: ")
text = readline()

encrypted_message = atbash_cipher(text)
println("Зашифрованное сообщение: $encrypted_message")
