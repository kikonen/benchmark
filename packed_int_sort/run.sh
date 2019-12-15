commands=(\
  "ruby packed_int_sort.rb" \
  "ruby --jit packed_int_sort.rb"\
)

for cmd in "${commands[@]}"; do
    echo "## $cmd"
    echo "\`\`\`"
    $cmd
    echo "\`\`\`"
    echo ""
done
