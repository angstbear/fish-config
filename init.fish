# init.fish - Custom init script sourced after shell start (OMF)

# Load global configuration
source $OMF_CONFIG/global.config.fish

# Load local configuration
source $OMF_CONFIG/local.config.fish

# Load environment-specific configuration if applicable
switch (uname)
case Darwin
    source $OMF_CONFIG/mac.config.fish
case Linux
    source $OMF_CONFIG/linux.config.fish
end

# Load abbreviations
source $OMF_CONFIG/abbreviations.fish
