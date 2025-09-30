#!/bin/bash
# Backup progress trackers to timestamped files

# Set colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}📦 Backing up progress trackers...${NC}"
echo ""

# Get current date
DATE=$(date +%Y-%m-%d)

# Create backups directory if it doesn't exist
BACKUP_DIR="progress-trackers/backups"
mkdir -p "$BACKUP_DIR"

# Backup Python tracker
if [ -f "progress-trackers/python-tracker.md" ]; then
    cp "progress-trackers/python-tracker.md" "$BACKUP_DIR/python-tracker-$DATE.md"
    echo -e "${GREEN}✅ Backed up: python-tracker-$DATE.md${NC}"
else
    echo -e "${YELLOW}⚠️  python-tracker.md not found, skipping...${NC}"
fi

# Backup C tracker
if [ -f "progress-trackers/c-tracker.md" ]; then
    cp "progress-trackers/c-tracker.md" "$BACKUP_DIR/c-tracker-$DATE.md"
    echo -e "${GREEN}✅ Backed up: c-tracker-$DATE.md${NC}"
else
    echo -e "${YELLOW}⚠️  c-tracker.md not found, skipping...${NC}"
fi

echo ""

# Clean up old backups (keep last 7)
echo -e "${YELLOW}🧹 Cleaning up old backups (keeping last 7)...${NC}"

# Count Python backups
PYTHON_BACKUPS=$(ls -1 "$BACKUP_DIR"/python-tracker-*.md 2>/dev/null | wc -l)
if [ $PYTHON_BACKUPS -gt 7 ]; then
    # Delete oldest backups
    ls -1t "$BACKUP_DIR"/python-tracker-*.md | tail -n +8 | xargs rm -f
    echo -e "${GREEN}✅ Cleaned up old Python tracker backups${NC}"
fi

# Count C backups
C_BACKUPS=$(ls -1 "$BACKUP_DIR"/c-tracker-*.md 2>/dev/null | wc -l)
if [ $C_BACKUPS -gt 7 ]; then
    # Delete oldest backups
    ls -1t "$BACKUP_DIR"/c-tracker-*.md | tail -n +8 | xargs rm -f
    echo -e "${GREEN}✅ Cleaned up old C tracker backups${NC}"
fi

echo ""
echo -e "${GREEN}✅ Backup complete!${NC}"
echo ""
echo "Backup location: $BACKUP_DIR"
echo "Python backups: $(ls -1 "$BACKUP_DIR"/python-tracker-*.md 2>/dev/null | wc -l)"
echo "C backups: $(ls -1 "$BACKUP_DIR"/c-tracker-*.md 2>/dev/null | wc -l)"
