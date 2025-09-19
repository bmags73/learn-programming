#!/bin/bash

echo "🚀 Setting up learning environment on new machine!"

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

# Check for required tools
echo -e "${BLUE}Checking requirements...${NC}"
for tool in git tmux nvim fish; do
    if ! command -v $tool &> /dev/null; then
        echo "⚠️  $tool not found. Please install it."
    else
        echo "✅ $tool found"
    fi
done

# Install Fish functions
echo -e "${BLUE}Installing Fish functions...${NC}"
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/fish/conf.d

# Create learning.fish config
cat > ~/.config/fish/conf.d/learning.fish << 'FISHEOF'
# Learning environment
set -l repo_path ~/learn-programming

if test -d $repo_path
    source $repo_path/python/functions/learn-python.fish
    source $repo_path/c/functions/learn-c.fish
    source $repo_path/functions/status.fish
    source $repo_path/functions/menu.fish
    
    # Aliases
    alias cdpy="cd $repo_path/python/basics/daily"
    alias cdc="cd $repo_path/c/basics/daily"
    alias cdlearn="cd $repo_path"
    alias learning="learning-status"
end
FISHEOF

echo -e "${GREEN}✅ Setup complete!${NC}"
echo ""
echo "Next steps:"
echo "1. Set up SSH key for GitHub"
echo "2. Clone repo: git clone git@github.com:bmags73/learn-programming.git"
echo "3. Open new terminal or run: source ~/.config/fish/config.fish"
echo "4. Run: learn-python or learn-c"
