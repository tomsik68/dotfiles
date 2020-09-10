function llvm --description 'override llvm in path by another version'
  set llvm_config 'llvm-config'
  if test "8" = $argv[1]
    set llvm_config "/home/jasku/formela/symbiotic/llvm-8.0.1/build/bin/llvm-config"
  else if test "11" = $argv[1]
    set llvm_config "/var/local/opt/llvm-11/llvm/build/bin/llvm-config"
  else
    echo "unknown version of llvm, no change"
  end

  set PATH ($llvm_config --bindir) $PATH
end
