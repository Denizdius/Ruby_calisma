require 'io/console'
MENU_FILL_LENGTH = 50

def puts_at_center(text: , use_pipe: true)
    # Paralel atama
    height_of_terminal, width_of_terminal = IO.console.winsize
    
    horizontal_space_count = (width_of_terminal - MENU_FILL_LENGTH) / 2
    
    printing_text  = ' ' * horizontal_space_count
    if use_pipe
        printing_text += '|'
        padding_size = 1
        printing_text += ' ' * (((MENU_FILL_LENGTH - text.size) /2) - padding_size)
        printing_text += text
        
        padding_size = ((MENU_FILL_LENGTH - text.size).odd?) ? 1 : 2
        printing_text += ' ' * (((MENU_FILL_LENGTH - text.size) /2) - padding_size)
        printing_text += ' |'
    else
        printing_text += text
    end

    puts printing_text
end

def clear_screen
    print "\e[2J\e[f"
end

clear_screen
puts_at_center(text: '-' * MENU_FILL_LENGTH, use_pipe: false)
puts_at_center(text: 'DENİZSOFT ELEMATİK')
puts_at_center(text: '-' * MENU_FILL_LENGTH, use_pipe: false)
