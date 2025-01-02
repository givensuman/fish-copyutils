# Copies the contents of a given file to the system clipboard
function copyfile --description "Copy file contents to clipboard"
    argparse --min-args 1 --max-args 1 -- $argv

    set -l file = $argv[1]
    if ! -f $file
        printf "file %s not found" $file
        return 1
    end

    cat $file | fish_clipboard_copy
end
