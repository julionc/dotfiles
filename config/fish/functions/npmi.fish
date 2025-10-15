function npmi --description "Installs node modules and excludes from Spotlight"
    if test (uname) = Darwin
        echo "Platform \"Darwin\" detected."
        echo "node_modules/.metadata_never_index is being created if not exists."
        if not test -d node_modules
            mkdir node_modules
        end
        if not test -e node_modules/.metadata_never_index
            touch node_modules/.metadata_never_index
        end
    end
    npm install $argv
end
