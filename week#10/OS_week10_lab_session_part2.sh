# Part 2: Archiving and Copying Files

# Step 1: Create Sample Files
echo "Step 1: Creating Sample Files"
touch file1.txt file2.txt file3.txt
echo "Sample files created: file1.txt, file2.txt, file3.txt"
echo ""

# Step 2: Archive Files with tar
echo "Step 2: Archiving Files with tar" 
tar -czvf my_archive.tar.gz file1.txt file2.txt file3.txt 
echo "Files archived in my_archive.tar.gz"
echo ""

# Step 3: Copy the Archive to Home Directory
echo "Step 6: Copying the Archive to Home Directory"
cp my_archive.tar.gz ~/my_archive.tar.gz
echo "Archive copied to home directory"
echo ""

# Step 4: Extract Files from the Archive
echo "Step 4: Extracting Files from the Archive"
tar -xzvf my_archive.tar.gz
echo "Files extracted from the archive"
echo ""
