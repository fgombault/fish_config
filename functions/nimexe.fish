# Defined in - @ line 1
function nimexe --wraps='nim c -d:mingw' --description 'alias nimexe=nim c -d:mingw'
  nim c -d:mingw $argv;
end
