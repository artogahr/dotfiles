function brightness
    # Check if brightness value is provided
    if test (count $argv) -ne 1
        echo "Usage: brightness <brightness_value>"
        echo "Brightness value must be between 0 and 100"
        return 1
    end

    # Validate brightness value
    set -l brightness $argv[1]
    if test $brightness -lt 0 -o $brightness -gt 100
        echo "Error: Brightness value must be between 0 and 100"
        return 1
    end

    # Set brightness for both monitors
    if not ddcutil --display 1 setvcp 10 $brightness
        echo "Error setting brightness for display 1"
        return 1
    end

    if not ddcutil --display 2 setvcp 10 $brightness
        echo "Error setting brightness for display 2"
        return 1
    end

    echo "Successfully set brightness to $brightness for both displays"
end
