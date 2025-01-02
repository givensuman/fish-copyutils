# Copies the contents of a given file to the system clipboard
function copyfile --description "Copy file contents to clipboard"
    argparse --min-args 1 --max-args 1 -- $argv

    if test ! -f $argv[1]
        echo "file $argv[1] not found"
        return 1
    end

    cat $argv[1]
end
