# { autofold
#!/bin/bash

function checkTagExists {
  FINISHED=0
  showkey -a
  while [ $FINISHED -eq 0 ]; do
    sleep 1
  done 
}
echo "TECHIO> terminal -s 'bash -c \"bash -i 2>&1 | tee lapin; exit $?\"' -i 'cd repositories/unique-tag/; mv .gitexample .git'"

cd repositories/unique-tag
checkTagExists
# }
